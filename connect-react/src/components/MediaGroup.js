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
        console.log('Submitted comment:', this.state);

        axios.post("http://localhost:8000/comments", {
            comment: this.state.comment,
            poster: this.state.poster,
            carve: null,
            media: this.state.media,
            profile: null
        })
    };

    	// Handles state change for when a new comment is submitted
	handleChange = event => {
		this.setState({
            comment: event.target.value,
            poster: `${this.props.content_id}`,
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

        //Stopped using this and now the mediacards don't autorefresh after each letter in comment
        //Idk why
        createGrid = (media, commentList) => {
            let length = this.state.mediaInfo.length;
            let div = [];
            let row = [];

            for(let k =0 ; k < 1; k++){
                row.push(
                    <Col key={k}>
                        <MediaCard commentList={commentList} change={this.handleChange} media={media} comment={this.state.comment} submit={this.handleSubmit} validateForm={!this.validateForm()}/>
                    </Col>
                );
            }
            div.push(
                    <Row key={Math.random(50)}>
                        {row}
                    </Row>  
            );

            return div;
        };


    render() {
        let mediaList;
        let commentList;
        
        if(this.state.mediaInfo.length > 0){
            mediaList = this.state.mediaInfo.map((media, index) => {
                
                if(this.state.mediaComments.length > 0){
                    commentList = this.state.mediaComments.map((com, index) => {
                        if(com.media === media.media_id){
                            return (
                                <tr key = {index}>
                                    <td>{com.poster}</td>
                                    <td>{com.comment}</td>
                                    <td>3 mins ago</td>
                                </tr>
                            );
                            }else{
                                return(<></>)
                            }
                    });
                }
                return (
                        <Col sm={4}>
                            <MediaCard commentList={commentList} change={this.handleChange} media={media} comment={this.state.comment} submit={this.handleSubmit} validateForm={!this.validateForm()}/>
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