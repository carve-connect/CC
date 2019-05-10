/*
Similar to the all-in-one CarveCollector, MediaGroup functions the same concept.
We reduce the backend calls and switch the call based on the the props it is passed. 
Pagination is also handled here.

/*


import React, {Component} from 'react';
import Col from 'react-bootstrap/Col';
import axios from 'axios';
import MediaCard from './MediaCard';
import Pagination from "react-bootstrap/Pagination";


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
            media_id: 0,
            mediaInfo: {},
            mi1: [],
            mi2: [],
            mi3: [],
            mi4: [],
            mi5: [],
            mediaComments: {},
            users: [],
            description: "", 
            time: "",
            comment: ""
        };
        this.deleteMedia = this.deleteMedia.bind(this);
        this.set1 = this.set1.bind(this);
        this.set2 = this.set2.bind(this);
        this.set3 = this.set3.bind(this);
        this.set4 = this.set4.bind(this);
        this.set5 = this.set5.bind(this);
    }



    componentDidMount() {
        axios.get(`http://localhost:8000/media/${this.props.type}/${this.props.content_id}/`)
            .then(res => {
                this.setState({
                    mediaInfo: res.data.results[0].slice(0, 3),
                    mi1: res.data.results[0].slice(3, 8),
                    mi2: res.data.results[0].slice(9, 12),
                    mi3: res.data.results[0].slice(13, 16),
                    mi4: res.data.results[0].slice(17, 20),
                    mi5: res.data.results[0].slice(21, 24),
                });
            });


        axios.get(`http://localhost:8000/users`)
            .then(res1 => {
                //alert("carve:" + JSON.stringify(res.data.results));
                //console.log("users: ", JSON.stringify(res.data.users[0][0].username));
                //alert(JSON.stringify(res.data.results[0]));
                this.setState({
                    users: res1.data.users[0]
                });

            });
        }

    set1() {

        this.setState({
            mediaInfo: this.state.mi1
        })
    }

    set2() {

        this.setState({
            mediaInfo: this.state.mi2
        })
    }

    set3() {

        this.setState({
            mediaInfo: this.state.mi3
        })
    }

    set4() {

        this.setState({
            mediaInfo: this.state.mi4
        })
    }

    set5() {

        this.setState({
            mediaInfo: this.state.mi5
        })
    }

        deleteMedia(id){
            const type = this.props.type;
            axios.delete(`http://localhost:8000/media/${type}/${id}`)
            .then(res => {
                console.log(res);
                console.log(res.data)
            })
        }



    render() {
        let mediaList;
        
        if(this.state.mediaInfo.length > 0){
            mediaList = this.state.mediaInfo.map((media) => {

                return (

                    <Col className="col-sm">

                        <h2>Media for {this.props.type} {this.props.content_id}</h2>
                        <MediaCard delete={this.deleteMedia} media={media} users={this.state.users}/>
                    </Col>
                )
            });
        }
        return (
            <>
                <Pagination>
                    <Pagination.Item action onClick={this.set1}>{1}</Pagination.Item>
                    <Pagination.Item action onClick={this.set2}>{2}</Pagination.Item>
                    <Pagination.Item action onClick={this.set3}>{3}</Pagination.Item>
                    <Pagination.Item action onClick={this.set4}>{4}</Pagination.Item>
                    <Pagination.Item action onClick={this.set5}>{5}</Pagination.Item>
                </Pagination>
                {mediaList}
            </>
        )
    }
    
}
