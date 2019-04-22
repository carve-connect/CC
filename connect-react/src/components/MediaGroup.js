import React, {Component} from 'react';
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import axios from 'axios';
import ListGroup from 'react-bootstrap/ListGroup';
import Form from 'react-bootstrap/Form';
import CustomFormGroup from "./CustomFormGroup";
import FormGroup from 'react-bootstrap/FormGroup';
import Table from 'react-bootstrap/Table';
import CardColumns from 'react-bootstrap/CardColumns'
import { Container } from 'react-bootstrap';
import MediaCard from './MediaCard';



export default class MediaGroup extends Component {
    constructor(props) {
        super(props);
        this.state = {
            poster: 0,
            carve: 0, 
            profile: 0,
            venue: 0,
            url: "",
            media: 0,
            mediaInfo: {},
            mediaComments: {},
            description: "", 
            time: "",
            comment: "",
        };
    }

    //Make sure the comment has some text
    //We don't want any empty comments to be pushed
    validateForm() {
		const {comment} = this.state;
		return comment.length > 0;
    }
    
    handleSubmit = e => {
        e.preventDefault();

        axios.post("http://localhost:8000/comments", {
            comment: this.state.comment,
            poster: this.state.poster,
            carve: null,
            media: this.state.media,
            profile: null
        })
    };

    	// Handles state change for when a new comment is submitted
    // Error is here because ig you change the comment on one media card, it changes
    // The comment in state here gets handed down to every comment box Im pretty sure...
    //
    // Fix Idea would be to have the component have its own state so that it can pass that
    // individual data somewhere like the api and it does not affect every comment on the
    // media post
	handleChange = event => {
		this.setState({
            comment: event.target.value,
            poster: 3,
            carve: null,
            media: 54,
            profile: null
		});
	};

    componentWillMount() {
        axios.get(`http://localhost:8000/media/${this.props.type}/${this.props.content_id}/`)
            .then(res => {
                this.setState({
                    mediaInfo: res.data.results[0],
                });
            });

        axios.get(`http://localhost:8000/comments`)
            .then(res => {
                this.setState({
                    mediaComments: res.data.results[0]
                });
            });
        }


    render() {
        let mediaList;
        let commentList;
        
        if(this.state.mediaInfo.length > 0){
            mediaList = this.state.mediaInfo.map((media, index) => {
                if(this.state.mediaComments.length > 0){
                    commentList = this.state.mediaComments.map((com, index1) => {
                        if(com.media === media.media_id){
                            return (
                                <tr>
                                    <td>{com.poster}</td>
                                    <td>{com.comment}</td>
                                    <td>
                                        <a href="#">Like</a>
                                        <br/>
                                        <a href="#">Dislike</a>
                                        </td>
                                </tr>
                            );
                        } else{
                            return(<></>)
                        }
                    });
                }
                return (
                    
                    <Col className="col-sm">
                            <MediaCard index={index} commentList={commentList} change={this.handleChange} media={media} comment={this.state.comment} submit={this.handleSubmit} validateForm={!this.validateForm()}/>
                        </Col>
                ) //return
            });
        }
        return (
            <>
                {mediaList}
            </>
        )
    }
    
}//class