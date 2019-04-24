import React from 'react';
import {Component} from 'react';
import axios from 'axios';
import {Row} from 'react-bootstrap';
import {Button} from 'react-bootstrap';
import {Col} from 'react-bootstrap';

export default class LikeBar extends Component {
    constructor(props){
        super(props);
        this.state = {
            likes: [],
            dislikes: [],
            poster: 0,
            type: [],
            carve: 0, 
            comment: 0,
            media: 0 , 
        }
        this.handleLike=this.handleLike.bind(this);
    }

    componentDidMount(){
        axios.get(`http://localhost:8000/likes`)
        .then(res => {
            this.setState({
                likes: res.data.results[0]
            });

        });

        axios.get(`http://localhost:8000/likes/dislikes`)
        .then(res => {
            this.setState({
                dislikes: res.data.results[0]
            });

        });
    }

    handleLike = e => {
        e.preventDefault();

        axios.post("http://localhost:8000/likes", { 
            poster: localStorage.getItem('userId'),
            type: ['like'], 
            carve: null, 
            comment: this.props.comment.comment_id,
            media: null,
        })
    }

    clickLike = event => {
        this.setState = ({
            type: ['like']
        })
    }

    clickDislike = event => {
        this.setState = ({
            type: ['dislike']
        })
    }

    render() {
        let likeList;
        let likeCount = 0;
        let dislikeCount = 0 ;


        if(this.state.likes.length > 0){
            likeList = this.state.likes.map((like, index) => {
                if(like.comment == this.props.comment.comment_id){
                    if(like.type == "like"){
                        likeCount++;
                    }
                    else if(like.type == "dislike"){
                        dislikeCount++;
                    }
                    
                }
            });
        }
        return (
            <>
                <form >
                    <Button onClick={this.handleLike} variant="link" href="#"><i class="fa fa-thumbs-up fa-10x"></i>{likeCount}</Button>
                    <Button type="submit" variant="link" href="#"><i class="fa fa-thumbs-down fa-10x"></i>{dislikeCount}</Button>
                </form>
            </>
        )
    }
}