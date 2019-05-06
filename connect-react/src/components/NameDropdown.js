import React from 'react';
import {Component} from 'react';
import {Link} from "react-router-dom";
import {DropdownButton, OverlayTrigger, Tooltip, Dropdown} from 'react-bootstrap';
import MessageModal from './MessageComponents/MessageModal';


export default class NameDropdown extends Component{
    constructor(props){
        super(props);
        this.state = {
            showDropdown: false,
            showMsg: false,

        }
        this.handleDropdown = this.handleDropdown.bind(this);
        this.handleMsgModal = this.handleMsgModal.bind(this);
        this.handleMsgClose = this.handleMsgClose.bind(this);
    }

    handleMsgModal(){
        this.setState({
            showMsg: true
        })
    }

    handleMsgClose(){
        this.setState({
            showMsg:false
        })
    }

    handleDropdown(){
        this.setState({
            showDropdown: true
        })
    }

    render(){
        let dropdown;
            dropdown = 
                <DropdownButton size="sm" variant="link" title= {this.props.name}>
                            <Dropdown.Item >
                                   <Link to={this.props.link}>View Profile</Link> 
                            </Dropdown.Item>

                            <Dropdown.Item onClick={this.handleMsgModal} >
                                    Send Message
                            </Dropdown.Item>
                    </DropdownButton>

        let messageModal = <MessageModal close={this.handleMsgClose} show={this.state.showMsg} receiverName={this.props.name} receiverId={this.props.id}/>
        return (
            <div>
                {messageModal}
                {dropdown}
            </div>
        );

    }
}