import React, {Component} from 'react';
import axios from 'axios'
import MessagesSidebar from "./MessagesSidebar";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import ReplyMsgModal from "../../../../components/ReplyMsgModal";
import UserApi from "../../../../api/UserApi";


class MessagesPageInbox extends Component {
    constructor(props) {
        super(props);
        this.state = {
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
            show: false,
            replyId: 0,
            replier: 0
        };
    }

    // Fetches data before component will mount to the dom
    componentWillMount() {
        UserApi.getUsersInbox(localStorage.getItem('userId'))
          .then(messages => {
              //alert("messages " + JSON.stringify(messages.data));
              this.setState({messages: messages.data[0]});
        }).catch(err => {
            console.log('API error', err);
            //alert("error " );
        });
    }

    // No clue who named this
    onClick2 = (e) =>{
        console.log(" delete:" +e);
        axios.delete(`http://localhost:8000/messages/${e}`);
        window.location.reload();
    };

    // Forget what this does
    onClick1 =(e,e1) => {
        this.setState({
            replyId: e,
            replier: e1,
            show1: !this.state.show1 });
        window.location.reload();

    };



    render() {
        let messageRows;

        if(this.state.messages.length > 0){
            messageRows = this.state.messages.map((message, index) => {

                return (
                    <tr key={index}>
                        <th>{message.message_subject}</th>
                        <td>{message.sender_id}</td>
                        <td>{message.create_time}</td>
                        <td>{message.type}</td>
                        <td>{message.message_body}</td>
                        <td><i onClick={() => this.onClick1(message.message_id, message.sender_id)}
                               className="fa fa-inbox text-white"> </i></td>
                        <td > <i  className ="fa fa-trash-o text-white" onClick={ () => { this.onClick2(message.message_id) } }> </i></td>
                    </tr>
                )
            });
        }

        return (

            <>
                <ReplyMsgModal replyId = {this.state.replyID} replier = {this.state.replier} handleClose={this.onClick1} show={this.state.show1} />
                <Row className="justify-content-md-center" style={{ paddingLeft: '0px',backgroundColor: "lightgray", height: "100%"}}>

                    <MessagesSidebar  style = {{paddingRight: '0px'}} />

                    <Col style={{ paddingLeft: '0px'}}>

                        <h3 className = 'border-bottom' style = {{  borderBottomColor: 'black',
                            borderBottomWidth: 5, width: '150%' }}>Messages </h3>

                        <div>
                            <table className="table table-dark" style = {{color: "skyblue", paddingTop: "5px",width:"101%", bordered: '0.5px solid rgba(0, 0, 0, 0.5)'}}>
                                <thead>
                                <tr>
                                    <th scope="col" style={{width:"6%"}}>Subject</th>
                                    <th scope="col" style={{width:"6%"}}>Sender</th>
                                    <th scope="col" style={{width:"4%"}}>Timestamp</th>
                                    <th scope="col" style={{width:"4%"}}>Type</th>
                                    <th scope="col">Body</th>
                                    <th scope="col" style={{width:"1%"}}>Reply</th>
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


export default MessagesPageInbox;


