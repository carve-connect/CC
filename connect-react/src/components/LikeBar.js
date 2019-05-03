import React, {Component} from 'react';
import axios from 'axios';
import {Button} from 'react-bootstrap';

export default class LikeBar extends Component {
    constructor(props){
        super(props);
        this.state = {
            likes: [],
            dislikes: [],
            poster: 0,
            carve: 0, 
            comment: 0,
            media: 0 ,
        };
        this.handleLike=this.handleLike.bind(this);
    }

    componentDidMount(){
        axios.get(`http://localhost:8000/likes`)
        .then(res => {
            this.setState({
                likes: res.data.likes[0],
                dislikes: res.data.dislikes[0]
            });

        });

    }
    handleLike = e => {
        e.preventDefault();
        let like = ['like'];

        this.setState  = ({
            poster: localStorage.getItem('userId'),
            comment: this.props.comment.comment_id
        });

        axios.post("http://localhost:8000/likes", { 
            poster: localStorage.getItem('userId'),
            likeordislike: like, 
            carve: null, 
            comment: this.props.comment.comment_id,
            media: null,
        })
    };


    handleDislike= e => {
        e.preventDefault();
        let dislike = ['dislike'];

        this.setState  = ({
            poster: localStorage.getItem('userId'),
            comment: this.props.comment.comment_id
        });

        axios.post("http://localhost:8000/likes/", { 
            poster: localStorage.getItem('userId'),
            likeordislike: dislike, 
            carve: null, 
            comment: this.props.comment.comment_id,
            media: null,
        })
    };

    render() {
        let likeList;
        let dislikeList;
        let likeCount = 0;
        let dislikeCount = 0 ;
        let currLike;


        if(this.state.likes.length > 0){
            likeList = this.state.likes.map((like, index) => {
                currLike = like;
                if(like.comment == this.props.comment.comment_id){
                        likeCount++;
                    
                }
            });
        }
        if(this.state.dislikes.length > 0){
            dislikeList = this.state.dislikes.map((dislike, index) => {
                currLike = dislike;
                if(dislike.comment == this.props.comment.comment_id){
                    dislikeCount++
                }
            });
        }
        
        return (
            <>
                <form >
                    <Button onClick={this.handleLike} variant="link" href="#"><i class="fa fa-thumbs-up fa-10x"></i>{likeCount}</Button>
                    <Button onClick={this.handleDislike} variant="link" href="#"><i class="fa fa-thumbs-down fa-10x"></i>{dislikeCount}</Button>
                </form>
            </>
        )
    }
}