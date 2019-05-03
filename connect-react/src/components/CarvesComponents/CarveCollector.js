import React, {Component} from 'react';
import CarveCard2 from './CarveCard2';
import axios from "axios";

export default class CarveCollector extends Component {
    constructor(props) {
        super(props);
        this.state = {
            carves: [],
            comments: [],
            media: [],
            c: [],
            users: [],
            atten: [],
            name: ""
        };


    }

    componentDidMount() {
        if (this.props.type === 'open') {
            axios.get(`http://localhost:8000/carves/open`)
                .then(res => {
                    this.setState({
                        c: res.data.c[0],
                        carves: res.data.carves,
                        comments: res.data.comments,
                        media: res.data.media,
                        creator: res.data.user,
                        atten: res.data.atten
                    });
                    //alert(JSON.stringify(res.data.carves));
                })
        } else if (this.props.type === 'buddy') {
            axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/buddies/carves/made`)
                .then(res => {
                    this.setState({
                        c: res.data.c[0],
                        carves: res.data.carves,
                        comments: res.data.comments,
                        media: res.data.media,
                        creator: res.data.user,
                        atten: res.data.atten
                    });

                });
        } else if (this.props.type === 'buddyAttend') {
            axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/buddies/carves`)
                .then(res => {
                    this.setState({
                        c: res.data.c[0],
                        carves: res.data.carves,
                        comments: res.data.comments,
                        media: res.data.media,
                        creator: res.data.user,
                        atten: res.data.atten
                    });

                });
        } else if (this.props.type === 'userAttend') {
            axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/carveAttendees`)
                .then(res => {
                    this.setState({
                        c: res.data.c[0],
                        carves: res.data.carves,
                        comments: res.data.comments,
                        media: res.data.media,
                        creator: res.data.user,
                        atten: res.data.atten
                    });

                });
        } else if (this.props.type === 'userCreate') {
            axios.get(`http://localhost:8000/users/${this.props.id}/carves/`)
                .then(res => {
                    // console.log("results: ", res.data.results[0]);
                    // alert(JSON.stringify(res.data.results[0]));
                    this.setState({
                        c: res.data.c[0],
                        carves: res.data.carves,
                        comments: res.data.comments,
                        media: res.data.media,
                        creator: res.data.user,
                        atten: res.data.atten
                    });

                });
        } else if (this.props.type === 'userFollow') {
            axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/carves/`)
                .then(res => {

                    //alert(JSON.stringify(res.data.results[0]));
                    this.setState({
                        c: res.data.c[0],
                        carves: res.data.carves,
                        comments: res.data.comments,
                        media: res.data.media,
                        creator: res.data.user,
                        atten: res.data.atten
                    });

                });
        } else if (this.props.type === 'venueFollow') {
            axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/venues/carves/`)
                .then(res => {

                    //alert(JSON.stringify(res.data.results[0]));
                    this.setState({
                        c: res.data.c[0],
                        carves: res.data.carves,
                        comments: res.data.comments,
                        media: res.data.media,
                        creator: res.data.user,
                        atten: res.data.atten
                    });

                });
        } else if (this.props.type === 'venue') {
            axios.get(`http://localhost:8000/venues/${this.props.venue_id}/carves`)
                .then(res => {
                    // console.log("results: ", res.data.results[0]);
                    //alert(JSON.stringify(res.data.results[0]));
                    this.setState({
                        c: res.data.c[0],
                        carves: res.data.carves,
                        comments: res.data.comments,
                        media: res.data.media,
                        creator: res.data.user,
                        atten: res.data.atten
                    });

                });
        }



        axios.get(`http://localhost:8000/users`)
            .then(res => {
                //alert("carve:" + JSON.stringify(res.data.results));
                //console.log("users: ", JSON.stringify(res.data.users[0][0].username));
                //alert(JSON.stringify(res.data.results[0]));
                this.setState({
                    users: res.data.users[0]
                });

            });


    }

    componentDidUpdate(prevProps, prevState, snapshot) {

    }

    render() {
        let carves;
        let current;

        carves = this.state.c.map((carve, index) => {

            var us = [];
            let media = [];
            let comments = [];
            let carveInfo = [];

            let atten = [];
            /*
        if(this.state.atten[index].length > 0)
                atten = this.state.atten[index];
        if(this.state.comments[index].length > 0)
            comments = this.state.atten[index];
        if(this.state.media[index].length > 0)
            media= this.state.media[index];
        if(this.state.carves[index].length > 0)
            carveInfo = this.state.carvew[index];
*/
            return (
                <CarveCard2 carve={carve} users={this.state.users}/>
            )
        });


        return (
            <div style={{
                display: "flex",
                justifyContent: "space-between", flexWrap: "wrap"
            }}>
                <h2>List of {this.props.type} </h2>
                {carves}
            </div>


        )
    };
}
