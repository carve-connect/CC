import React, {Component} from 'react';
import MapGL from 'react-map-gl';

const TOKEN = 'pk.eyJ1Ijoic3RheWZyb3N0eSIsImEiOiJjanV5ZTVubmwweDN5NGNqdzN3cXA1N2hsIn0.5eIoeFv0HBhoQwNnTBdILw';
const navStyle = {
    position: 'absolute',
    top: 0,
    left: 0,
    padding: '10px'
};
export default class Map extends Component {
    constructor(props) {
        super(props);
        this.state = {
            viewport: {
                latitude: 42.96,
                longitude: -72.89,
                zoom: 14.73,
                bearing: -100.80,
                pitch: 60.00,
                width: 500,
                height: 500,
                stat: ""
            }
        };
    }

    componentDidMount() {
        /*
                if(this.props.latitude > 0) {
                    this.setState({
                        viewport: {
                            latitude: this.props.lattitude,
                            longitude: this.state.longitude,
                            zoom: 5,
                            bearing: 0,
                            pitch: 0.00,
                            width: 500,
                            height: 500,
                            stat: ""
                        }

                    });
                   // alert(this.state.latitude);
                }
                if(this.props.longitude > 0) {
                    this.setState({
                        viewport: {
                            latitude: this.state.latitude,
                            longitude: this.props.longitude,
                            zoom: 5,
                            bearing: 0,
                            pitch: 0.00,
                            width: 500,
                            height: 500,
                            stat: ""
                        }
                    });
                    //alert(this.state.longitude);
                }
        */

        this.setState({state: this.state})
    }

    render() {


        const {viewport} = this.state;
        //viewport.latitude = this.props.latitude;
        //viewport.longitude = this.props.longitude;
        return (
            <div>
                <MapGL
                    {...viewport}
                    mapStyle="mapbox://styles/stayfrosty/cjuyeizb90a121fmoso13dy41"
                    mapboxApiAccessToken={TOKEN}
                    onViewportChange={(viewport) => this.setState({viewport})}
                >
                </MapGL>
            </div>
        );
    }
}