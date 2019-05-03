import React, {Component} from 'react';
import Modal from 'react-bootstrap/Modal';
import Button from 'react-bootstrap/Button';
import Form from "react-bootstrap/Form";
import axios from 'axios';

export default class EditMediaModal extends Component {
    constructor(props){
        super(props);
        this.state = ({
            show: false,
            description: ""
        })
        this.handleShow = this.handleShow.bind(this);
        this.handleClose = this.handleClose.bind(this);
    }

    validateForm(){
        const {description} = this.state;

        return (description.length > 0);
    }

    handleClose() {
        this.setState({ show: false });
    }
    
    handleShow() {
        this.setState({ show: true });
    }

    render(){
        return (
            <Modal centered show={this.props.show}>
                <Modal.Header>
                    Edit Media
                </Modal.Header>
                <Modal.Body>

                </Modal.Body>
                <Modal.Footer>
                        <Button variant="secondary" onClick={this.handleClose}>
                            Exit
                        </Button>
                        <Button type = "submit" variant="primary">
                            Create
                        </Button>
                    </Modal.Footer>
            </Modal>
        );
    }
}