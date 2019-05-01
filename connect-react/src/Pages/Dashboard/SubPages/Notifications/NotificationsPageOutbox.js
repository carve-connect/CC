import React, {Component} from 'react';
import axios from 'axios'
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import NotificationsSidebar from "./NotificationsSidebar";


class NotificationsPageOutbox extends Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: props.match.params.number,
            isUserLoggedIn: props.match.params.number === localStorage.getItem('userId'),
            message_id: "",
            message_subject: "",
            message_body: "",
            sender_Id: 0,
            rec_Id: 0,
            type: "",
            create_time: "",
            messages: [],
            check: true,
            show: false
        };

    }

    componentDidMount()
    {
        axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/messages/notifications/sent`)
            .then(res => {
                console.log("results: ", res.data.results[0]);
                this.setState({
                    messages: res.data.results[0]
                });

                //alert(JSON.stringify(res.data.users[0][0]))
            });

    }

    onClick2 = (e) => {
        console.log(" delete:" + e);
        axios.delete(`http://localhost:8000/messages/${e}`);


    };
    render() {
        let messageRows;

        if(this.state.messages.length > 0){
            messageRows = this.state.messages.map((message, index) => {
                return (
                    <tr>
                        <th>{message.message_subject}</th>
                        <td>{message.rec_id}</td>
                        <td>{message.create_time}</td>
                        <td>{message.type}</td>
                        <td>{message.carve}</td>
                        <td>{message.message_body}</td>
                        <td><i className="fa fa-trash-o text-white" onClick={() => {
                            this.onClick2(message.message_id)
                        }}> </i></td>
                    </tr>
                )
            });
        }

        return (

            <>

                <Row className="justify-content-md-center" style={{ paddingLeft: '0px',backgroundColor: "lightgray", height: "100%"}}>

                    <NotificationsSidebar  style = {{paddingRight: '0px'}} />

                    <Col style={{ paddingLeft: '0px'}}>

                        <h3 className = 'border-bottom' style = {{  borderBottomColor: 'black',
                            borderBottomWidth: 5, width: '150%' }}>Sent Notifications</h3>

                        <div>
                            <table className="table table-dark" style = {{color: "skyblue", paddingTop: "5px",width:"101%", bordered: '0.5px solid rgba(0, 0, 0, 0.5)'}}>
                                <thead>
                                <tr>
                                    <th scope="col" style={{width:"6%"}}>Subject</th>
                                    <th scope="col" style={{width:"6%"}}>To</th>
                                    <th scope="col" style={{width:"4%"}}>Timestamp</th>
                                    <th scope="col" style={{width:"4%"}}>Type</th>
                                    <th scope="col" style={{width: "4%"}}>Carve</th>
                                    <th scope="col">Body</th>
                                    <th scope="col" style={{width:"1%"}}>Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                {messageRows}

                                </tbody>
                            </table>
                        </div>
                    </Col>
                </Row>
            </>
        );
    }
}


export default NotificationsPageOutbox;


