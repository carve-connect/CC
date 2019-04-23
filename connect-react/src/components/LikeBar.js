import React from 'react';
import {Component} from 'react';
import axios from 'axios';
import {Row} from 'react-bootstrap';
import {Button} from 'react-bootstrap';

export default class LikeBar extends Component {
    constructor(props){
        super(props);
        this.state = {
            likes: [],
            dislikes: [],
        }
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

    printLikes(){

    }

    render() {
        let likeList;
        let likeCount = 0;
        let dislikeCount;


        if(this.state.likes.length > 0){
            likeList = this.state.likes.map((like, index) => {
                if(like.comment == this.props.comment.comment_id){
                    likeCount++;
                }
            });
        }
        return (
            <>
                
                <a href="#"><i class="fa fa-thumbs-up fa-10x"></i>{likeCount}</a>
                <br/>
                <a href="#">Dislike</a>
        
            
            </>
        )
    }
}