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
        this.set1B = this.set1B.bind(this);
        this.set2B = this.set2B.bind(this);
        this.set3B = this.set3B.bind(this);
        this.set4B = this.set4B.bind(this);
        this.set5B = this.set5B.bind(this);
        this.set1VF = this.set1VF.bind(this);
        this.set2VF = this.set2VF.bind(this);
        this.set3VF = this.set3VF.bind(this);
        this.set4VF = this.set4VF.bind(this);
        this.set5VF = this.set5VF.bind(this);
        this.set1UF = this.set1UF.bind(this);
        this.set2UF = this.set2UF.bind(this);
        this.set3UF = this.set3UF.bind(this);
        this.set4UF = this.set4UF.bind(this);
        this.set5UF = this.set5UF.bind(this);
    }


    componentWillMount() {
        axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/buddies/media`)
            .then(res => {
                this.setState({
                    mediaInfoB: res.data.results[0].slice(0, 3),
                    mB1: res.data.results[0].slice(3, 8),
                    mB2: res.data.results[0].slice(9, 12),
                    mB3: res.data.results[0].slice(13, 16),
                    mB4: res.data.results[0].slice(17, 20),
                    mB5: res.data.results[0].slice(21, 24),
                });

            });
        axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/venues/media`)
            .then(res => {
                this.setState({
                    mediaInfoVF: res.data.results[0].slice(0, 3),
                    mVF1: res.data.results[0].slice(3, 8),
                    mVF2: res.data.results[0].slice(9, 12),
                    mVF3: res.data.results[0].slice(13, 16),
                    mVF4: res.data.results[0].slice(17, 20),
                    mVF5: res.data.results[0].slice(21, 24),
                });
            });
        axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/media`)
            .then(res => {
                this.setState({
                    mediaInfoUF: res.data.results[0].slice(0, 3),
                    mUF1: res.data.results[0].slice(3, 8),
                    mUF2: res.data.results[0].slice(9, 12),
                    mUF3: res.data.results[0].slice(13, 16),
                    mUF4: res.data.results[0].slice(17, 20),
                    mUF5: res.data.results[0].slice(21, 24),
                });
            });


    }

    set1B() {

        this.setState({
            mediaInfoB: this.state.mB1,

        })
    }

    set2B() {

        this.setState({
            mediaInfoB: this.state.mB2
        })
    }

    set3B() {

        this.setState({
            mediaInfoB: this.state.mB3
        })
    }

    set4B() {

        this.setState({
            mediaInfoB: this.state.mB4
        })
    }

    set5B() {

        this.setState({
            mediaInfoB: this.state.mB5
        })
    }

    set1VF() {

        this.setState({
            mediaInfoVF: this.state.mVF1,

        })
    }

    set2VF() {

        this.setState({
            mediaInfoVF: this.state.mVF2
        })
    }

    set3VF() {

        this.setState({
            mediaInfoVF: this.state.mVF3
        })
    }

    set4VF() {

        this.setState({
            mediaInfoVF: this.state.mVF4
        })
    }

    set5VF() {

        this.setState({
            mediaInfoVF: this.state.mVF5
        })
    }

    set1UF() {

        this.setState({
            mediaInfoUF: this.state.mUF1,

        })
    }

    set2UF() {

        this.setState({
            mediaInfoUF: this.state.mUF2
        })
    }

    set3UF() {

        this.setState({
            mediaInfoUF: this.state.mUF3
        })
    }

    set4UF() {

        this.setState({
            mediaInfoUF: this.state.mUF4
        })
    }

    set5UF() {

        this.setState({
            mediaInfoUF: this.state.mUF5
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
                    <Pagination>
                        <Pagination.Item action onClick={this.set1B}>{1}</Pagination.Item>
                        <Pagination.Item action onClick={this.set2B}>{2}</Pagination.Item>
                        <Pagination.Item action onClick={this.set3B}>{3}</Pagination.Item>
                        <Pagination.Item action onClick={this.set4B}>{4}</Pagination.Item>
                        <Pagination.Item action onClick={this.set5B}>{5}</Pagination.Item>
                    </Pagination>
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
                <Pagination>
                    <Pagination.Item action onClick={this.set1VF}>{1}</Pagination.Item>
                    <Pagination.Item action onClick={this.set2VF}>{2}</Pagination.Item>
                    <Pagination.Item action onClick={this.set3VF}>{3}</Pagination.Item>
                    <Pagination.Item action onClick={this.set4VF}>{4}</Pagination.Item>
                    <Pagination.Item action onClick={this.set5VF}>{5}</Pagination.Item>
                </Pagination>
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
                    <Pagination>
                        <Pagination.Item action onClick={this.set1UF}>{1}</Pagination.Item>
                        <Pagination.Item action onClick={this.set2UF}>{2}</Pagination.Item>
                        <Pagination.Item action onClick={this.set3UF}>{3}</Pagination.Item>
                        <Pagination.Item action onClick={this.set4UF}>{4}</Pagination.Item>
                        <Pagination.Item action onClick={this.set5UF}>{5}</Pagination.Item>
                    </Pagination>
                    {mediaListUF}
                </div>
            )
        }


    }


}