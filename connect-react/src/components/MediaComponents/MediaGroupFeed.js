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
            mB1: [],
            mB2: [],
            mB3: [],
            mB4: [],
            mB5: [],
            mediaInfoVF: {},
            mVF1: [],
            mVF2: [],
            mVF3: [],
            mVF4: [],
            mVF5: [],
            mediaInfoUF: {},
            mUF1: [],
            mUF2: [],
            mUF3: [],
            mUF4: [],
            mUF5: [],
            mediaComments: {},
            description: "",
            time: "",
            comment: "",
        };
        this.set1 = this.set1.bind(this);
        this.set2 = this.set2.bind(this);
        this.set3 = this.set3.bind(this);
        this.set4 = this.set4.bind(this);
        this.set5 = this.set5.bind(this);
    }


    componentWillMount() {
        axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/buddies/media`)
            .then(res => {
                this.setState({
                    mediaInfoB: res.data.results[0],
                    mB1: [],
                    mB2: [],
                    mB3: [],
                    mB4: [],
                    mB5: [],
                });

            });
        axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/venues/media`)
            .then(res => {
                this.setState({
                    mediaInfoVF: res.data.results[0],
                    mVF1: [],
                    mVF2: [],
                    mVF3: [],
                    mVF4: [],
                    mVF5: []
                });
            });
        axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/media`)
            .then(res => {
                this.setState({
                    mediaInfoUF: res.data.results[0],
                    mUF1: [],
                    mUF2: [],
                    mUF3: [],
                    mUF4: [],
                    mUF5: []
                });
            });


    }

    set1() {

        this.setState({
            mediaInfoB: this.state.mB1,

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