import React, {Component} from 'react';
import axios from 'axios';

const navStyle = {
    position: 'absolute',
    top: 0,
    left: 0,
    padding: '10px'
};
export default class WeatherForecast extends Component {
    constructor(props) {
        super(props);
        this.state = {
            weather: [],
            current: []
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
                    <h2 style={{}}>Current Weather: {this.state.current.summary}</h2>
                    <h2>Current Temperature: {this.state.current.temperature}</h2>
                </div>


            </>
        );
    }
}