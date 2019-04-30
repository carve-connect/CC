import React, {Component} from 'react';
import axios from 'axios';

import Skycons from 'react-skycons';

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
            current: [],
            icon: 'PARTLY_CLOUDY_DAY'
        };

    }

    /*
     icon: PropTypes.oneOf([
      'CLEAR_DAY',
      'CLEAR_NIGHT',
      'PARTLY_CLOUDY_DAY',
      'PARTLY_CLOUDY_NIGHT',
      'CLOUDY',
      'RAIN',
      'SLEET',
      'SNOW',
      'WIND',
      'FOG'
    ])
     */


    componentWillMount() {
        this.getData();

    }

    getData() {
        axios.get(`http://localhost:8000/utilities/darksky/${this.props.id}`).then(res => {
            // console.log('Venue:', res.data);
            this.setState({
                weather: res.data,
                current: res.data.currently,

            });
        });
    }


    render() {

        const convert = (F) => {
            return Math.round((F - 32) * 5 / 9)
        };
        //alert(JSON.stringify(this.state.current));
        //let icon = this.state.current.icon.replace(/-/g, "_").toUpperCase();
        return (
            <>


                <div>
                    <Skycons
                        width='256'
                        height='256'
                        style={{
                            width: '256px',
                            height: '256px',
                            backgroundColor: "skyblue",
                            paddingLeft: '0px'

                        }}
                        color='black'
                        icon={this.state.icon}
                        autoplay={true}/>
                    <h2 style={{}}>Current Weather: {this.state.current.summary}</h2>
                    <h2>Current Temperature: {this.state.current.temperature} °F</h2>


                </div>


            </>
        );
    }
}