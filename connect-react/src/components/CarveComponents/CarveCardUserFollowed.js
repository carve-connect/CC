import React, {Component} from 'react';
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import axios from 'axios';
import ListGroup from 'react-bootstrap/ListGroup';
import CarveInviteModal from "../NotificationComponents/CarveInviteModal";
import CarveAttendRequestModal from "../NotificationComponents/CarveAttendRequestModal";
import CarveLikes from "./CarveLikes";
import CommentTable from "../WallComponents/CommentTable";
import MediaGroup from "../MediaComponents/MediaGroup";
import CreateCarveMediaModal from "./CreateCarveMediaModal";
import Pagination from 'react-bootstrap/Pagination';

class CarveCardUserFollowed extends Component {
    constructor(props) {
        super(props);
        this.state = {
            carve_id: 0,
            name: "",
            creator: 0,
            venue: 0,
            type: "",
            max_athletes: 0,
            max_photo: 0,
            description: null,
            date: "",
            carveInfo: {},
            carveAt1: {},
            carveAtten: {},
            carveComm: {},
            carveMed: {},
            carveLik: {},
            carveDlik: {},
            completed: 0,
            sports: "",
            create_time: "",
            show5: false,
            show6: false,
            currentCid: 0,
            curCr: 0,
            cId: 0,
            cRe: 0,
            items: [],
            active: 5,
            users: [],
            at: 0

        };
    }

    componentWillMount() {
        axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/carves/`)
            .then(res => {
                console.log("results us fol carv: ", res.data.results[0]);
                //alert(JSON.stringify(res.data.results[0]));
                this.setState({
                    carveInfo: res.data.results[0]
                });

            });
        //currently =dynamic per carve
        axios.get(`http://localhost:8000/carveAt`)
            .then(res => {
                //alert("carve:" + JSON.stringify(res.data.results));
                console.log("at : ", res.data.results[0]);
                //alert(JSON.stringify(res.data.results[0]));
                this.setState({
                    carveAt1: res.data.results[0]
                });

            });

        axios.get(`http://localhost:8000/users`)
            .then(res => {
                //alert("carve:" + JSON.stringify(res.data.results));
                //console.log("users: ", JSON.stringify(res.data.users[0][0].username));
                //alert(JSON.stringify(res.data.results[0]));
                this.setState({
                    users: res.data.users[0]
                });

            });

    }

    like(e) {
        this.preventDefault(e);
        //currently only gets attendees for carve1. not dynamic per carve
        axios.post(`http://localhost:8000/carves/${1}/likes`,
            {
                poster: localStorage.getItem('userId'),
                carve: e
            })
            .then(res => {
                //alert("carve:" + JSON.stringify(res.data.results));
                console.log("results: ", res.data.results[0]);
                //alert(JSON.stringify(res.data.results[0]));


            });
    }

    dislike = (e) => {
        this.preventDefault(e);
        //currently only gets attendees for carve1. not dynamic per carve
        axios.post(`http://localhost:8000/carves/${1}/likes/dislikes`,
            {
                poster: localStorage.getItem('userId'),
                carve: e
            })
            .then(res => {
                //alert("carve:" + JSON.stringify(res.data.results));

                //alert(JSON.stringify(res.data.results[0]));
                this.setState({});

            });
    };

    handleClick5 = (e, e2) => {

        this.setState({
            show5: !this.state.show5,
            cId: e,
            cRe: e2
        });
    };

    handleClick6 = (e) => {

        this.setState({
            show6: !this.state.show6,
            cId: e
        });
    };



    render() {
        let carveList;
        let carveAttendList;
        let carveComments;
        let carveMedia;
        //let currentCarve =0;

        let color = "grey";
        let act = "secondary";
        let no = "not";
        let att = <div></div>;
        let val;


        if (this.state.carveInfo.length > 0) {
            carveList = this.state.carveInfo.map((carve, index) => {
                let lik = 0;
                let dlik = 0;
                let media_id = 0;
                let at = 0;

                for (let number = 1; number <= this.state.carveInfo.length / 5; number++) {

                    this.state.items.push(
                        <Pagination.Item key={number} active={this.state.active}>
                            {number}
                        </Pagination.Item>
                    );
                }

                if (this.state.carveAt1.length > 0) {

                    carveAttendList = this.state.carveAt1.map((attender, index1) => {
                        /*if(attender.user == localStorage.getItem('userId'))
                        {
                           at = 1;

                        }*/
                        let atName = "";
                        if (attender.carve === carve.carve_id) {

                            if (this.state.users.length > 0) {
                                for (var c = 0; c < this.state.users.length; c++) {
                                    if (this.state.users[c].user_id == attender.user)
                                        atName = this.state.users[c].username;
                                }
                            }

                            return (

                                <ListGroup.Item key={index1} style={{

                                    backgroundColor: "lightgrey", paddingRight: '0px', width: "100%"
                                }}>
                                    {atName} {attender.type}

                                </ListGroup.Item>
                            )
                        } else
                            return (<></>)
                    });
                }


                if (this.state.carveComm.length > 0) {
                    carveComments = this.state.carveComm.map((com, index) => {
                        if (com.carve === carve.carve_id)
                            return (

                                <ListGroup.Item key={index} style={{

                                    backgroundColor: "lightgrey", paddingRight: '0px', width: "100%"
                                }}>
                                    {com.comment} by: {com.poster}

                                </ListGroup.Item>
                            );
                        else
                            return (<></>)
                    });
                }
                if (this.state.carveMed.length > 0) {
                    carveMedia = this.state.carveMed.map((med, index) => {
                        if (med.carve === carve.carve_id)
                            return (

                                <ListGroup.Item key={index} style={{

                                    backgroundColor: "lightgrey", paddingRight: '0px', width: "100%"
                                }}>
                                    <Row>Media Post:</Row>
                                    <Row>
                                        <iframe title="Prof vid2" className="embed-responsive-item"
                                                src={med.url} allowFullScreen></iframe>
                                    </Row>


                                </ListGroup.Item>
                            );
                        else
                            return (<></>)
                    });
                }

                if (carve.completed > 0) {
                    color = "seagreen";
                    act = "Carve Completed";
                    no = "Completed";
                    att = <div></div>;
                } else if (carve.creator == localStorage.getItem('userId')) {
                    color = "grey";
                    act = "Invite Buddy";
                    no = "Upcoming";
                    att = <Button variant="success" style={{paddingTop: "10px"}}
                                  onClick={() => this.handleClick6(carve.carve_id, carve.creator)}>{act}</Button>;

                } else {
                    color = "grey";
                    act = "Request to Attend";
                    no = "Upcoming";

                    if (at === 1) {
                        att = <div></div>;
                        at = 0;
                    } else {
                        att = <Button variant="success" style={{paddingTop: "10px"}}
                                      onClick={() => this.handleClick5(carve.carve_id, carve.creator)}>{act}</Button>;
                    }
                }

                let creatorName = "";
                let users;
                if (this.state.users.length > 0) {
                    for (var c = 0; c < this.state.users.length; c++) {
                        if (this.state.users[c].user_id == carve.creator)
                            creatorName = this.state.users[c].username;
                    }
                }

                return (

                    <ListGroup.Item key={index} style={{

                        paddingRight: '0px', paddingLeft: '0px', paddingTop: '0px', paddingBottom: '10px', width: "100%"
                    }}>
                        <CarveAttendRequestModal cid={this.state.cId} cre={this.state.cRe}
                                                 handleClose={this.handleClick5} show={this.state.show5}/>
                        <CarveInviteModal cid={this.state.cId} handleClose={this.handleClick6} show={this.state.show6}/>
                        <Card style={{width: '100%', backgroundColor: [color]}}>
                            <Card.Header style={{color: "navy"}}>
                                <Row style={{justify: 'space-between'}}>
                                    <Card.Title>Name: {carve.name}</Card.Title>
                                    <div style={{margin: '15px', marginLeft: '20%'}}>Date: {carve.date}</div>
                                    <h6 style={{margin: '15px', marginLeft: '20%'}}>Type: {carve.type}</h6>

                                </Row>
                            </Card.Header>
                            <Card.Body>
                                <Row>
                                    <Col>

                                        <Card.Text style={{}}>
                                            <Row>
                                                Carve is {no}
                                            </Row>

                                            <Row style={{position: 'left'}}>
                                                <h5>Location: {carve.venue_name} </h5>

                                            </Row>
                                            <Row>
                                                <h5>{carve.city},{carve.state}</h5>
                                            </Row>
                                            <Row><p>Creator: {creatorName}  </p></Row>
                                            <Row>
                                                Description: {carve.description}
                                            </Row>

                                            <Row>
                                                Sports: {carve.sports} {/*can't do sports by itself */}
                                            </Row>
                                            <Row>
                                                Max Athletes: {carve.max_athletes}
                                            </Row>
                                            <Row>
                                                Max Film: {carve.max_photo}
                                            </Row>
                                            <Row>

                                            </Row>
                                            <Row>

                                            </Row>

                                        </Card.Text>
                                    </Col>
                                    <Col>
                                        <h3>Attendees:</h3>
                                        {carveAttendList}</Col></Row>
                                <Row style={{paddingTop: "5%", bordered: "5px solid black", height: "50%"}}>
                                    <Col>
                                        {att}

                                    </Col>
                                    <Col>
                                        <CarveLikes carve={carve}/>

                                    </Col>
                                    <Col>
                                        <CreateCarveMediaModal carve={carve}/>
                                    </Col>

                                </Row>
                            </Card.Body>
                            <Card.Footer className="text-primary text-info">
                                <Row>
                                    <Col>
                                        <CommentTable carve={carve} type={"carve"} media={media_id}/>
                                    </Col>
                                    <Col>

                                        <MediaGroup type="carve" users={this.state.users} content_id={carve.carve_id}/>
                                    </Col>
                                </Row>

                            </Card.Footer>
                        </Card>


                    </ListGroup.Item>

                )
            });
        }
        /*
                        <Pagination variant="flush" defaultActiveKey="1" style ={{paddingTop:"20px",width:"100%"}}>
                            <Pagination.First />
                            <Pagination.Prev />
                            <Pagination.Ellipsis />
                            <Pagination.Next />
                            <Pagination.Last />
                            <Pagination>{this.state.items}</Pagination>
                        </Pagination>
        */
        return (
            <>
                <Pagination>
                    <Pagination.First/>
                    <Pagination.Prev/>
                    <Pagination.Item>{1}</Pagination.Item>
                    <Pagination.Item>{2}</Pagination.Item>
                    <Pagination.Item>{3}</Pagination.Item>
                    <Pagination.Item>{4}</Pagination.Item>
                    <Pagination.Item>{5}</Pagination.Item>
                    <Pagination.Ellipsis/>
                    <Pagination.Next/>
                    <Pagination.Last/>


                </Pagination>
                <ListGroup variant="flush" style={{paddingTop: "20px", width: "100%"}}>

                    {carveList}

                </ListGroup>

            </>
        )
    };
}

export default CarveCardUserFollowed;