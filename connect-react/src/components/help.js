import React, {Component} from 'react';
import Modal from 'react-bootstrap/Modal';

export default class Help extends Component {
    constructor(props) {
        super(props);
    }


    render() {
        return (
            <Modal size="lg"
                   aria-labelledby="contained-modal-title-vcenter"
                   centered
                   show={this.props.show}
                   onHide={this.props.handleClose}
                   style={{}}>
                <Modal.Header closeButton style={{color: "lightgrey", backgroundColor: "darkslategrey"}}>
                    <Modal.Title id="contained-modal-title-vcenter">Help</Modal.Title>
                </Modal.Header>


                <Modal.Body style={{color: "lightgrey", backgroundColor: "slategrey"}}>
                    <h2>For help refer to our FAQ page</h2>
                </Modal.Body>


                <Modal.Footer style={{color: "lightgrey", backgroundColor: "midnightblue"}}>

                </Modal.Footer>
            </Modal>
        );
    }
}