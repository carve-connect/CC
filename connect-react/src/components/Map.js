import React, {Component} from 'react';
import MapGL, {NavigationControl} from 'react-map-gl';

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
                latitude: 42.968908,
                longitude: -72.890199,
                zoom: 14.73,
                bearing: -100.80,
                pitch: 60.00,
                width: 500,
                height: 500,

            }
        };
    }

    render() {

        const {viewport} = this.state;
        //viewport.latitude = this.props.latitude;
        //viewport.longitude = this.props.longitude;
        return (
            <MapGL
                {...viewport}
                mapStyle="mapbox://styles/stayfrosty/cjuyeizb90a121fmoso13dy41"
                mapboxApiAccessToken={TOKEN}>
                <div className="nav" style={navStyle}>
                    <NavigationControl/>
                </div>
            </MapGL>
        );
    }
}