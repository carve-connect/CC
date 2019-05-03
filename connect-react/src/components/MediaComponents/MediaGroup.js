import React, {Component} from 'react';
import Col from 'react-bootstrap/Col';
import axios from 'axios';
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
            media_id: 0,
            mediaInfo: {},
            mediaComments: {},
            users: [],
            description: "", 
            time: "",
            comment: ""
        };
        this.deleteMedia = this.deleteMedia.bind(this);
    }



    componentDidMount() {
        axios.get(`http://localhost:8000/media/${this.props.type}/${this.props.content_id}/`)
            .then(res => {
                this.setState({
                    mediaInfo: res.data.results[0],
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
                {mediaList}
            </>
        )
    }
    
}