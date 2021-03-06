/*
The generic carve card used by the CarveCollector(parent class). This functions as
a graphical representation of each carve on the site.

*/

import React, {Component} from 'react';
import Card from 'react-bootstrap/Card';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import ListGroup from 'react-bootstrap/ListGroup';
import Container from "react-bootstrap/Container";
import CarveAttendRequestModal from "../NotificationComponents/CarveAttendRequestModal";
import CarveInviteModal from "../NotificationComponents/CarveInviteModal";
import CarveLikes from "./CarveLikes";
import CreateCarveMediaModal from "../CarveComponents/CreateCarveMediaModal";
import CommentTable from '../WallComponents/CommentTable';
import MediaGroup from "../MediaComponents/MediaGroup";
import {Button, Dropdown, Form, FormGroup, Modal, OverlayTrigger, Tooltip} from 'react-bootstrap';
import axios from "axios";
import NameDropdown from '../NameDropdown'

export default class CarveCard2 extends Component {

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
            description: "",
            date: "",
            carveInfo: {},
            att: [],
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
            users: props.users,
            at: 0,
            show: false

        };

        this.editCarve = this.editCarve.bind(this);
        this.handleShow = this.handleShow.bind(this);
        this.handleClose = this.handleClose.bind(this);
        this.deleteCarve = this.deleteCarve.bind(this);
    }

    componentDidMount() {

        //currently =dynamic per carve
        axios.get(`http://localhost:8000/carves/${this.props.carve.carve_id}/carveAttendees`)
            .then(res => {
                //alert("carve:" + JSON.stringify(res.data.results));
                //alert(JSON.stringify(res.data.results[0]));
                this.setState({
                    att: res.data.attend,

                });

            });
        this.setState({
            users: this.props.users

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

    validateForm() {
        const {description} = this.state;

        return (description.length > 0);
    }

    handleClose() {
        this.setState({show: false});
    }

    handleShow() {
        this.setState({show: true});
    }

    handleChange = event => {
        this.setState({
            [event.target.id]: event.target.value
        });
    };

    editCarve(e) {
        e.preventDefault();

        this.handleClose();
    }

    deleteCarve(e) {
        axios.delete(`http://localhost:8000/carves/${e}`);
    }

    comp(e) {
        axios.post(`http://localhost:8000/carves/complete/${e}`);
    }

    render() {

        let editModal;

        let carveList;
        let carveAttendList;
        let carveAt = [];
        let carveAtTy;
        let carveComments;
        let carveMedia;
        //let currentCarve =0;
        let carve = this.props.carve;
        let carveInfo = this.props.carveInfo;
        let commentInfo = this.props.comments;
        let mediaInfo = this.props.media;
        let creatorName;
        let color = "grey";
        let act = "secondary";
        let no = "not";
        let att = <div></div>;
        let at = 0;
        let addMedia = <div></div>;

        let CarveAttend;


        editModal =
            <div>
                <Modal centered show={this.state.show} onHide={this.handleClose}>
                    <Modal.Header>
                        Edit Media
                    </Modal.Header>
                    <Container>
                        <FormGroup controlId="description">
                            <Form.Label>Description</Form.Label>
                            <Form.Control value={this.state.description} onChange={this.handleChange} type="text"
                                          placeholder="Enter Description..."/>
                        </FormGroup>
                    </Container>
                    <Modal.Footer>
                        <Button variant="secondary" onClick={this.handleClose}>
                            Exit
                        </Button>
                        <Button onClick={this.editMedia} disabled={!this.validateForm()} type="submit"
                                variant="primary">
                            Edit
                        </Button>
                    </Modal.Footer>
                </Modal>
            </div>;


        if (this.state.att.length > 0) {
            CarveAttend = this.state.att.map((attender, index1) => {
                if (attender.user == localStorage.getItem('userId')) {
                    at = 1;

                }
                let atName = "";

                return (

                    <ListGroup.Item key={index1} style={{

                        backgroundColor: "lightgrey", paddingRight: '0px', width: "100%"
                    }}>
                        <NameDropdown id={attender.user_id} link={`/dashboard/profile/${attender.user_id}`} name={attender.username}/> {attender.type}
                        

                    </ListGroup.Item>
                )
            })

        }


        /*
            carveAttendList = this.props.carveInfo.map((attender, index) => {


                    return (
                        <ListGroup.Item key={index} style={{

                            backgroundColor: "lightgrey", paddingRight: '0px', width: "100%"
                        }}>
                            {attender.username}

                        </ListGroup.Item>)
                });
                var set = new Set(carveAttendList);
                carveAttendList = Array.from(set);
            const attend = Array.from(new Set(carveAttendList));
        */
        /*
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
        */

        let maker = carve.creator;

        if (carve.completed > 0) {
            color = "palegreen";
            act = "Carve Completed";
            no = "Completed";
            att = <div></div>;
            if (at === 1)
                addMedia = <CreateCarveMediaModal carve={carve}/>;
            if (carve.creator == localStorage.getItem('userId'))
                addMedia = <CreateCarveMediaModal carve={carve}/>;
        } else if (carve.creator == localStorage.getItem('userId')) {
            color = "snow";
            act = "Invite Buddy";
            no = "Upcoming";
            att = <Button variant="success" style={{paddingTop: "10px"}}
                          onClick={() => this.handleClick6(carve.carve_id, carve.creator)}>{act}</Button>;

        } else {
            color = "snow";
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

        let creator;
        let creatorN;
        creator = this.props.users.map((users, index1) => {
            if (users.user_id === carve.creator) {
                creatorN = users.username;

            }
        });

        let cdd = carve.create_time;
        let cddd;

        let caddd;
        if (cdd.length > 0) {

            // Split timestamp into [ Y, M, D, h, m, s ]


            cddd = cdd.split(/[- :]/);
            var cd = cddd[2][1] + "-" + cddd[1] + "-" + cddd[0];
            if (carve.date) {
                let cadd = carve.date;
// Apply each element to the Date function


                console.log(cd);

                caddd = cadd.split(/[- :]/);
                var cad = caddd[2][1] + "-" + caddd[1] + "-" + caddd[0];
            }
        }
        /*
// -> Wed Jun 09 2010 14:12:01 GMT+0100 (BST)

        // Split timestamp into [ Y, M, D, h, m, s ]
        caddd = cadd.split(/[- :]/);

// Apply each element to the Date function
        var cad = new Date(Date.UTC(caddd[0], caddd[1]-1, caddd[2], caddd[3], caddd[4], caddd[5]));

        console.log(cad);
// -> Wed Jun 09 2010 14:12:01 GMT+0100 (BST)
*/
        let complete;
        if (carve.completed === 0) {
            complete =
                <Dropdown.Item onClick={() => this.comp(carve.carve_id)}>
                    <OverlayTrigger overlay={
                        <Tooltip>Complete</Tooltip>
                    }>
                        <i class="fa fa-eject fa-2x"></i>
                    </OverlayTrigger>

                </Dropdown.Item>
        }

        let edit = <div></div>;
        if (carve.creator == localStorage.getItem('userId')) {
            edit = <Dropdown>
                <Dropdown.Toggle size="sm" variant="link" style={{color: 'black', float: 'right', border: 'none'}}>
                    <i class="fa fa-ellipsis-h fa-10x"></i>
                </Dropdown.Toggle>

                <Dropdown.Menu style={{minWidth: '5rem'}}>
                    <Dropdown.Item onClick={this.handleShow}>
                        <OverlayTrigger overlay={
                            <Tooltip>Edit</Tooltip>
                        }>
                            <i class="fa fa-edit fa-2x"></i>
                        </OverlayTrigger>

                    </Dropdown.Item>

                    {complete}

                    <Dropdown.Item onClick={() => this.deleteCarve(carve.carve_id)}>
                        <OverlayTrigger overlay={
                            <Tooltip>Delete</Tooltip>
                        }>
                            <i class="fa fa-trash fa-2x"></i>
                        </OverlayTrigger>
                    </Dropdown.Item>
                </Dropdown.Menu>
            </Dropdown>
        }

        return (

            <Card style={{width: '100%', backgroundColor: [color]}}>
                {editModal}
                <CarveAttendRequestModal cid={this.state.cId} cre={this.state.cRe}
                                         handleClose={this.handleClick5} show={this.state.show5}/>
                <CarveInviteModal cid={this.state.cId} handleClose={this.handleClick6} show={this.state.show6}/>
                <Card.Header style={{color: "navy"}}>
                    <Row style={{justify: 'space-between'}}>
                        <Card.Title>Name: {carve.name}</Card.Title>
                        <div style={{margin: '15px', marginLeft: '20%'}}>Created on: {cd}</div>
                        <h6 style={{margin: '15px', marginLeft: '20%'}}>Type: {carve.type}</h6>
                        {edit}
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
                                <Row><p>Creator: {creatorN} </p></Row>
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
                                    <CarveLikes carve={carve}/>
                                </Row>
                                <Row>

                                </Row>

                            </Card.Text>
                        </Col>
                        <Col>
                            <Row>
                                Carve Date: {cad}
                            </Row>
                            <Row>
                                <h3>Attendees:</h3>
                                {CarveAttend}</Row></Col></Row>
                    <Row style={{paddingTop: "5%", bordered: "5px solid black", height: "50%"}}>
                        <Col>
                            {att}

                        </Col>
                        <Col>


                        </Col>
                        <Col>
                            {addMedia}
                        </Col>

                    </Row>
                </Card.Body>
                <Card.Footer className="text-primary text-info">
                    <Row>
                        <Col>
                            <CommentTable carve={carve} type={"carve"} media={""} likes={this.state.likes}
                                          dislikes={this.state.dislikes} users={this.props.users}/>
                        </Col>
                        <Col>
                            <MediaGroup type="carve" users={this.state.users} content_id={carve.carve_id}
                                        likes={this.state.likes} dislikes={this.state.dislikes}/>

                        </Col>
                    </Row>

                </Card.Footer>
            </Card>
        )

//<CommentTable comments={this.props.comments} users={this.props.users}/>

    }
}
