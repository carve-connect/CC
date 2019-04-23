import React from 'react';
import {Component} from 'react';
import axios from 'axios';


export default class CommentTable extends Component {
    constructor(props){
        super(props);
        this.state = {
            comments: [],

        }
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

    handleChange = event => {
		this.setState({
            comment: event.target.value,
            poster: 3,
            carve: null,
            media: 54,
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
    }


    render() {


        return (
            <>

            </>

        );
    }


}