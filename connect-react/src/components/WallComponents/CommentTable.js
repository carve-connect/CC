import React, {Component} from 'react';
import axios from 'axios';
import {Button, Col, Form, Row, Table} from 'react-bootstrap';
import LikeBar from '../LikeBar';
import NameDropdown from '../NameDropdown'

export default class CommentTable extends Component {
    constructor(props){
        super(props);
        this.state = {
            comments: [], 
            comment: [],
            users: props.users,
            poster: 0,
            carve: 0,
            media: 0,
            profile: 0
        };
        this.handleChange = this.handleChange.bind(this);
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
            carve: this.state.carve,
            media: this.state.media,
            profile: this.state.profile
        })
    };

    handleChange = event => {
		this.setState({
            comment: event.target.value,
            poster: localStorage.getItem('userId'),
            carve: this.props.carve.carve_id,
            media: this.props.media.media_id,
            profile: null
		});
    };
    
    componentDidMount(){
        axios.get(`http://localhost:8000/comments`)
        .then(res => {
            this.setState({
                comments: res.data.results[0]
            });
        });

        this.setState({
            users: this.props.users
        })
    }

    render() {
        const {comment} = this.state;
        let commentList;

        if(this.state.comments.length > 0){


            commentList = this.state.comments.map((com, index) => {
                let poster = "";
                if (this.props.users.length > 0) {
                    for (var c = 0; c < this.props.users.length; c++) {
                        if (this.props.users[c].user_id == com.poster)
                            poster = this.props.users[c].username;
                    }
                }

                if (this.props.type == "media") {
                    if (com.media == this.props.media.media_id) {
                        return (
                            <tr>
                                <td><NameDropdown id={com.poster} link={`/dashboard/profile/${com.poster}`} name={poster}/></td>
                                <td>{com.comment}</td>
                                <td>
                                    <LikeBar media={this.props.media} comment={com}/>
                                </td>
                            </tr>
                        );
                    } else {
                        return (<></>)
                    }
                } else if (this.props.type == "carve") {
                    if (com.carve == this.props.carve.carve_id) {
                        return (
                            <tr>
                                <td><NameDropdown id={com.poster} link={`/dashboard/profile/${com.poster}`} name={poster}/></td>
                                <td>{com.comment}</td>
                                <td>
                                    <LikeBar media={this.props.media} comment={com}/>
                                </td>
                            </tr>
                        );
                    } else {
                        return (<></>)
                    }
                }

            });

        }

        return (
            <>
                <form onSubmit={this.handleSubmit}>
                    <Form.Row>
                        <Row>
                            <Col className="col-sm-auto" style={{marginLeft: '1rem',marginRight: '-1.5rem'}}>
                                <Form.Control onChange={this.handleChange} size="sm" placeholder="Add comment..." type="text" value={comment}/>
                            </Col>
                            <Col>
                                <Button type = "submit" size = "sm" block disabled={!this.validateForm()}>Enter</Button>
                            </Col>
                        </Row>
                    </Form.Row>
                </form>
                <Table striped borderless hover size = "sm">
                        <thead>
                            <th>
                            Username
                            </th>
                            <th>
                            Comment
                            </th>
                            <th>
                            Action
                            </th>
                        </thead>
                        <tbody>
                            {commentList}
                        </tbody>
                    </Table>
            </>

        );
    }


}