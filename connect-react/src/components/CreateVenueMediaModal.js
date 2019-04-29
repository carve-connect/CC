import React, {Component} from 'react';
import {Button, Container, Form, FormGroup, Modal} from 'react-bootstrap';
import axios from 'axios';

export default class CreateVenueMediaModal extends Component {
    constructor(props) {
        super(props);

        this.state = {
            show: false,
            url: "",
            description: ""
        };
        this.createMedia = this.createMedia.bind(this);
        this.handleShow = this.handleShow.bind(this);
        this.handleClose = this.handleClose.bind(this);
    }

    validateForm() {
        const {url, description} = this.state;

        return (url.length > 0 && description.length > 0);
    }

    handleChange = event => {
        this.setState({
            [event.target.id]: event.target.value
        });
    };

    handleClose() {
        this.setState({show: false});
    }

    handleShow() {
        this.setState({show: true});
    }

    createMedia(e) {
        e.preventDefault();

        axios.post('http://localhost:8000/media', {
            poster: localStorage.getItem('userId'),
            carve: null,
            profile: null,
            venue: this.props.venue.venue_id,
            url: this.state.url,
            description: this.state.description
        });
        this.handleClose();
    }

    render() {

        return (
            <>
                <Button onClick={this.handleShow} style={{height: "30%"}} size="sm" variant="info">Add Media</Button>

                <Modal centered show={this.state.show} onHide={this.handleClose}>
                    <Modal.Header closeButton>
                        <Modal.Title>Show off what you've done!</Modal.Title>
                    </Modal.Header>
                    <Modal.Body>
                        <Container>
                            <FormGroup controlId="url">
                                <Form.Label>URL</Form.Label>
                                <Form.Control value={this.state.url} onChange={this.handleChange} type="text"
                                              placeholder="Enter URL..."/>
                            </FormGroup>

                            <FormGroup controlId="description">
                                <Form.Label>Description</Form.Label>
                                <Form.Control value={this.state.description} onChange={this.handleChange} type="text"
                                              placeholder="Enter Description..."/>
                            </FormGroup>
                        </Container>
                    </Modal.Body>
                    <Modal.Footer>
                        <Button variant="secondary" onClick={this.handleClose}>
                            Exit
                        </Button>
                        <Button type="submit" variant="primary" disabled={!this.validateForm()}
                                onClick={this.createMedia}>
                            Create
                        </Button>
                    </Modal.Footer>
                </Modal>
            </>
        )
    }


}