import React, { Component } from 'react';
import Card from 'react-bootstrap/Card';
import Row from 'react-bootstrap/Row';
import Container from "react-bootstrap/Container";
import CommentTable from '../WallComponents/CommentTable';
import MediaLikes from './MediaLikes';
import {Dropdown} from 'react-bootstrap';
import {Tooltip} from 'react-bootstrap';
import {OverlayTrigger} from 'react-bootstrap';
import {Modal} from 'react-bootstrap';
import {Button} from 'react-bootstrap';
import {FormGroup} from 'react-bootstrap';
import {Form} from 'react-bootstrap';
import axios from 'axios';



export default class MediaCard extends Component {
    constructor(props){
        super(props);
        this.state = {
            show: false,
            description: ""
        };
        this.editMedia = this.editMedia.bind(this);
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

    handleChange = event => {
        this.setState({
			[event.target.id]: event.target.value
		});
    };

    editMedia(e){
        e.preventDefault();

        axios.patch(`http://localhost:8000/media/${this.props.media.media_id}`, {
            poster: this.props.media.poster,
            carve: this.props.media.carve,
            profile: this.props.media.profile,
            venue: this.props.media.venue, 
            url: this.props.media.url, 
            description: this.state.description
        });
        this.handleClose();
    }


    render(){

        let editModal =
                    <div>
                        <Modal centered show={this.state.show} onHide={this.handleClose}>
                        <Modal.Header>
                            Edit Media
                        </Modal.Header>
                        <Container>
                            <FormGroup controlId="description">
                                <Form.Label>Description</Form.Label>
                                <Form.Control value={this.state.description} onChange={this.handleChange} type="text" placeholder="Enter Description..." />
                            </FormGroup>
                        </Container>
                        <Modal.Footer>
                            <Button variant="secondary" onClick={this.handleClose}>
                            Exit
                            </Button>
                            <Button onClick={this.editMedia} disabled={!this.validateForm()} type = "submit" variant="primary">
                            Edit
                            </Button>
                        </Modal.Footer>
                        </Modal>
                    </div>;
        

    let creatorName = "";
    /*
    if (props.users.length > 0) {
        for (var c = 0; c < props.users.length; c++) {
            if (props.users[c].user_id == props.media.poster)
                creatorName = this.state.users[c].username;
        }
    }
*/
    let show = false;

    return (


        <Card style={{width: '30rem', marginBottom: '2rem'}}>
        <Card.Header style={{padding: 0}}>
        {editModal}
                    <Dropdown >
                        <Dropdown.Toggle size="sm"  variant="link" style={{color: 'black', float: 'right', border: 'none'}}>
                            <i class="fa fa-ellipsis-h fa-10x"></i>
                        </Dropdown.Toggle>
                        
                        <Dropdown.Menu style={{minWidth: '5rem'}}>
                            <Dropdown.Item onClick={this.handleShow}>
                                <OverlayTrigger overlay = {
                                    <Tooltip>Edit</Tooltip>
                                }>
                                    <i class="fa fa-edit fa-2x"></i>
                                </OverlayTrigger>
                                
                            </Dropdown.Item>
                           
                            <Dropdown.Item onClick={this.props.delete} >
                                <OverlayTrigger overlay = {
                                    <Tooltip>Delete</Tooltip>
                                }>
                                <i class="fa fa-trash fa-2x"></i>
                                </OverlayTrigger>
                            </Dropdown.Item>
                        </Dropdown.Menu>
                    </Dropdown>
                </Card.Header>

                <container className="embed-responsive embed-responsive-16by9">
                    <iframe title="User Media" className="embed-responsive-item" src= {this.props.media.url} allowFullScreen > </iframe>
                </container>

                <Card.Body>
                    <Container>
                        <Row style = {{marginTop: '-1rem', borderBottom:'1px dashed lightgrey'}}>
                            <Card.Link href="#">{this.props.media.poster} {creatorName}</Card.Link>
                            :{this.props.media.description}
                        </Row>
                        <Row>
                            <MediaLikes media={this.props.media}/>
                        </Row>
                    </Container>
                </Card.Body>
               {/* comment table would be here */}
                <CommentTable media={this.props.media} carve={""} type={"media"}/>
                <Card.Footer style = {{fontSize: '10px'}}><em>Create_Time: {this.props.media.time}</em></Card.Footer>
            </Card>

    );
                            }
};