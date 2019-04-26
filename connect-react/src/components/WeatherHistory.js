import React, {Component} from 'react';
import axios from "axios";

const navStyle = {
    position: 'absolute',
    top: 0,
    left: 0,
    padding: '10px'
};
export default class WeatherHistory extends Component {
    constructor(props) {
        super(props);
        this.state = {
            weather: []
        };
    }

    componentWillMount() {
        this.getData();

    }

    getData() {
        axios.get(`http://localhost:8000/utilities/darksky/${this.props.id}`).then(res => {
            // console.log('Venue:', res.data);
            this.setState({
                weather: res.data,
                current: res.data.currently
            });
        });
    }

    render() {

        return (
            <>

                <div>
                    <h2 style={{}}>Previous Weather: </h2>
                    <h2>Previous Temperature: </h2>
                </div>

            </>
        );
    }
}