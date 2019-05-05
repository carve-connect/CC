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
            mediaInfoB: {},
            mediaInfoVF: {},
            mediaInfoUF: {},
            mediaComments: {},
            description: "",
            time: "",
            comment: "",
        };
    }


    componentWillMount() {
        axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/buddies/media`)
            .then(res => {
                this.setState({
                    mediaInfoB: res.data.results[0],
                });

            });
        axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/venues/media`)
            .then(res => {
                this.setState({
                    mediaInfoVF: res.data.results[0],
                });
            });
        axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/media`)
            .then(res => {
                this.setState({
                    mediaInfoUF: res.data.results[0],
                });
            });


    }


    render() {
        let mediaListB;
        let mediaListVF;
        let mediaListUF;

        if (this.props.med === "buddy") {
            if (this.state.mediaInfoB.length > 0) {
                mediaListB = this.state.mediaInfoB.map((media, index) => {
                    return (
                        <Col className="col-sm">

                            <MediaCard type={this.props.type} id={this.props.content_id} media={media}/>
                        </Col>
                    )
                });
            }
            return (
                <>
                    {mediaListB}
                </>
            );
        } else if (this.props.med === "venue") {


            if (this.state.mediaInfoVF.length > 0) {
                mediaListVF = this.state.mediaInfoVF.map((media, index) => {
                    return (
                        <Col className="col-sm">
                            <MediaCard type={this.props.type} id={this.props.content_id} media={media}/>
                        </Col>
                    )
                });
            }
        return (
            <>
                {mediaListVF}
            </>
        )
        } else if (this.props.med === "user") {

            if (this.state.mediaInfoUF.length > 0) {
                mediaListUF = this.state.mediaInfoUF.map((media, index) => {
                    return (

                            <MediaCard type={this.props.type} id={this.props.content_id} media={media}/>

                    )
                });
            }
            return (
                <div>
                    {mediaListUF}
                </div>
            )
        }


    }


}