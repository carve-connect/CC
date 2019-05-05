import React, {Component} from 'react';
import Card from 'react-bootstrap/Card';
import Row from 'react-bootstrap/Row';
import Container from "react-bootstrap/Container";
import CommentTable from '../WallComponents/CommentTable';
import MediaLikes from './MediaLikes';
import {Button, Dropdown, Form, FormGroup, Modal, OverlayTrigger, Tooltip} from 'react-bootstrap';
import axios from 'axios';


export default class MediaCard extends Component {
    constructor(props){
        super(props);
        this.state = {

            editShow: false,
            deleteConfirmationShow: false,
            description: "",
            users: []

        };
        this.editMedia = this.editMedia.bind(this);
        this.handleEditShow = this.handleEditShow.bind(this);
        this.handleEditClose = this.handleEditClose.bind(this);
        this.handleDeleteConfirmationShow = this.handleDeleteConfirmationShow.bind(this);
        this.handleDeleteConfirmationClose = this.handleDeleteConfirmationClose.bind(this);
        this.deleteMedia = this.deleteMedia.bind(this);
    }

    validateForm(){
        const {description} = this.state;

        return (description.length > 0);
    }

    handleEditClose() {
        this.setState({ editShow: false });
    }
    
    handleEditShow() {
        this.setState({ editShow: true });
    }

    handleDeleteConfirmationClose() {
        this.setState({ deleteShow: false });
    }
    
    handleDeleteConfirmationShow() {
        this.setState({ deleteShow: true });
    }

    handleChange = event => {
        this.setState({
			[event.target.id]: event.target.value
		});
    };

    componentDidMount() {
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
        this.handleEditClose();
    }

    deleteMedia(e) {
        axios.delete(`http://localhost:8000/media/${e}`, {});

        this.handleDeleteConfirmationClose()
    }

    render(){
        let med = this.props.media;
        let editModal =
                    <div>
                        <Modal centered show={this.state.editShow} onHide={this.handleEditClose}>
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
                            <Button variant="secondary" onClick={this.handleEditClose}>
                            Exit
                            </Button>
                            <Button onClick={this.editMedia} disabled={!this.validateForm()} type = "submit" variant="primary">
                            Edit
                            </Button>
                        </Modal.Footer>
                        </Modal>
                    </div>;
        
        let dropdown;
        if(med.poster == localStorage.getItem("userId")){
            dropdown = <Dropdown>
                            <Dropdown.Toggle size="sm" variant="link" style={{color: 'black', float: 'right', border: 'none'}}>
                                <i class="fa fa-ellipsis-h fa-10x"></i>
                            </Dropdown.Toggle>

                            <Dropdown.Menu style={{minWidth: '5rem'}}>
                                <Dropdown.Item onClick={this.handleEditShow}>
                                    <OverlayTrigger overlay={
                                        <Tooltip>Edit</Tooltip>
                                    }>
                                        <i class="fa fa-edit fa-2x"></i>
                                    </OverlayTrigger>

                                </Dropdown.Item>

                                <Dropdown.Item onClick={this.handleDeleteConfirmationShow}>
                                    <OverlayTrigger overlay={
                                        <Tooltip>Delete</Tooltip>
                                    }>
                                        <i class="fa fa-trash fa-2x"></i>
                                    </OverlayTrigger>
                                </Dropdown.Item>
                            </Dropdown.Menu>
                        </Dropdown>
        }
        else{
            dropdown = <></>
        }
        let deleteConfirmationModal =   
            <div>
                <Modal centered show={this.state.deleteShow} onHide={this.handleDeleteConfirmationClose}>
                <Container style={{marginLeft: '1rem'}}>
                    <Row>
                     <h3>Are you sure?</h3>
                    </Row>
                    <Row>
                        <FormGroup >
                            <Button variant="secondary" onClick={this.handleDeleteConfirmationClose}>
                            Nevermind
                            </Button>
                            <Button style={{marginLeft: '1rem'}} onClick={() => this.deleteMedia(med.media_id)} type = "submit" variant="primary">
                            Yes
                            </Button>
                        </FormGroup>
                    </Row>
                </Container>
                </Modal>
            </div>;
    let creatorName = "";

        if (this.state.users.length > 0) {
            for (var c = 0; c < this.state.users.length; c++) {
                if (this.state.users[c].user_id == this.props.media.poster)
                creatorName = this.state.users[c].username;
        }
    }


    return (


        <Card style={{width: '30rem', marginBottom: '2rem'}}>
        {editModal}
        {deleteConfirmationModal}
        <Card.Header style={{padding: 0}}>
        Media {this.props.media.media_id} 
        {dropdown}

        </Card.Header>
            <Row style={{paddingLeft: "40%"}}>
                
                
            </Row>
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
            <CommentTable media={this.props.media} carve={""} type={"media"} users={this.state.users}/>
                <Card.Footer style = {{fontSize: '10px'}}><em>Create_Time: {this.props.media.time}</em></Card.Footer>
            </Card>

    );
                            }
};