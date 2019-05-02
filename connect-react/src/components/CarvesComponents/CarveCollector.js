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

    componentWillMount() {
        if (this.props.type === 'open') {
            axios.get(`http://localhost:8000/carves/open`)
                .then(res => {
                    console.log("carve: ", res.data);
                    //alert(JSON.stringify(res.data.results[0]));
                    this.setState({
                        c: res.data.c[0],
                        carves: res.data.carves,
                        comments: res.data.comments,
                        media: res.data.media,
                        creator: res.data.user,
                        atten: res.data.atten
                    });
                    //alert(JSON.stringify(res.data.carves));
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

                {carves}
            </div>


        )
    };
}
