import React from 'react';
import {Component} from 'react';
import axios from 'axios';
import {Row} from 'react-bootstrap';

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

    render() {
        let likeList;
        let likeCount;
        let dislikeCount;


        if(this.state.likes.length > 0){
            likeList = this.state.likes.map((like, index) => {
                if(like.comment == this.props.comment.comment_id){
                    return (
                        <>
                                <a href="#">Like</a>
                                <br/>
                                <a href="#">Dislike</a>
                        </>
                    )
                }
            });
        }
        return (
            <>
                {likeList}
            </>
        )
    }
}