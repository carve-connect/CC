import React, {Component} from 'react';
import axios from 'axios';
import {Button} from 'react-bootstrap';

export default class MediaLikes extends Component {
    constructor(props){
        super(props);
        this.state = {
            likes: [],
            dislikes: [],
            poster: 0, 
            media: 0 ,
        };
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
        let like = ['like'];

        axios.post("http://localhost:8000/likes", { 
            poster: localStorage.getItem('userId'),
            likeordislike: like, 
            media: this.props.media.media_id
        })
    };


    handleDislike= e => {
        e.preventDefault();
        let dislike = ['dislike'];

        axios.post("http://localhost:8000/likes/", { 
            poster: localStorage.getItem('userId'),
            likeordislike: dislike, 
            media: this.props.media.media_id
        })
    };

    render() {
        let likeList;
        let dislikeList;
        let likeCount = 0;
        let dislikeCount = 0 ;


        if(this.state.likes.length > 0){
            likeList = this.state.likes.map((like, index) => {
                if(like.media== this.props.media.media_id){
                        likeCount++;
                    
                }
            });
        }
        if(this.state.dislikes.length > 0){
            dislikeList = this.state.dislikes.map((dislike, index) => {
                if(dislike.media == this.props.media.media_id){
                    dislikeCount++
                }
            });
        }
        
        return (
            <>
                <form style={{marginBottom: '-1rem'}}>
                    <Button onClick={this.handleLike} variant="link" href="#"><i class="fa fa-thumbs-up fa-10x"></i>{likeCount}</Button>
                    <Button onClick={this.handleDislike} variant="link" href="#"><i class="fa fa-thumbs-down fa-10x"></i>{dislikeCount}</Button>
                </form>
            </>
        )
    }
}