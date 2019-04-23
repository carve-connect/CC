import React, {Component} from 'react';
import axios from 'axios';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Container from 'react-bootstrap/Container';
import VenueFigure from './VenueFigure';
import Mount_Snow_BG from '../../../../images/mount_snow_bg.png';
import Form from 'react-bootstrap/Form';
import Button from 'react-bootstrap/Button';


export default class VenueListPage extends Component {
    //I think i'll need the state information based on the future filtering options
    constructor(props){
        super(props);
        this.state = {
            venues: {},
            isUserLoggedIn: props.match.params.number === localStorage.getItem('userId'),
            venuesLength: 0
        }
    }

    componentWillMount() {
		// Getting the user id from the url param
		axios.get(`http://localhost:8000/venues`)
			.then(res => {
				this.setState({
					venues: res.data.venues[0],
					venuesLength: res.data.venues[0].length
				});
			})
    }

    createSnowRow = () => {
        const venues = this.state.venues;
        const length = this.state.venuesLength;

        let div = [];
            let row = [];

            for(let k =0 ; k < length; k++){
                if(venues[k].water_sports == null && venues[k].air_sports == null && venues[k].land_sports == null){
                    row.push(
                        <Col key={k}>
                            <VenueFigure name={venues[k].venue_name} img={Mount_Snow_BG} href={'/dashboard/venues/' + venues[k].venue_id}/>
                        </Col>
                    );
                }
            }
            div.push(
                <Row key={Math.random(50)} style={{flex: '0 0 auto'}}>
                    {row}
                </Row>
            );

        return div;
    };

    createWaterRow = () => {
        const venues = this.state.venues;
        const length = this.state.venuesLength;

        let div = [];
        let row = [];

        for(let k =0 ; k < length; k++){
            if(venues[k].snow_sports == null && venues[k].air_sports == null && venues[k].land_sports == null){
                row.push(
                    <Col key={k}>
                        <VenueFigure name={venues[k].venue_name} img={Mount_Snow_BG} href={'/dashboard/venues/' + venues[k].venue_id}/>
                    </Col>
                );
            }
        }
        div.push(
            <Row key={Math.random(50)} style={{flex: '0 0 auto'}}>
                {row}
            </Row>
        );

        return div;
    }

    createLandRow = () => {
        const venues = this.state.venues;
        const length = this.state.venuesLength;

        let div = [];
        let row = [];

        for(let k =0 ; k < length; k++){
            if(venues[k].snow_sports == null && venues[k].air_sports == null && venues[k].water_sports == null){
                row.push(
                    <Col key={k}>
                        <VenueFigure name={venues[k].venue_name} img={Mount_Snow_BG} href={'/dashboard/venues/' + venues[k].venue_id}/>
                    </Col>
                );
            }
        }
        div.push(
            <Row key={Math.random(50)} style={{flex: '0 0 auto'}}>
                {row}
            </Row>
        );

        return div;
    }

    createAirRow = () => {
        const venues = this.state.venues;
        const length = this.state.venuesLength;

        let div = [];
        let row = [];

        for(let k =0 ; k < length; k++){
            if(venues[k].snow_sports == null && venues[k].water_sports == null && venues[k].land_sports == null){
                row.push(
                    <Col key={k}>
                        <VenueFigure name={venues[k].venue_name} img={Mount_Snow_BG} href={'/dashboard/venues/' + venues[k].venue_id}/>
                    </Col>
                );
            }
        }
        div.push(
            <Row key={Math.random(50)} style={{flex: '0 0 auto'}}>
                {row}
            </Row>
        );

        return div;
    }
    
    render(){
        let waterList;
        let landList;
        let snowList;
        let airList;
        const {venues} = this.state;
        if(this.state.venuesLength > 0){


            return (
                <Container>
                    <Row style = {{marginTop: '40px'}}>
                        <h1>Venues</h1>
                    </Row>
                    <Row style = {{marginTop: '45px'}}>
                        <Col md={{ span: 6, offset: 1 }}>
                            <Form.Control type="text" placeholder="Search" />
                        </Col>
                        <Button variant="link">+Filters</Button>
                    </Row>

                    <div style = {{marginTop: '20px', borderBottom: '1px solid lightgray'}}> </div> 

                    
                    <h4 style = {{marginTop: '3rem'}}><u>Snow Venues</u></h4>
                    <Row style = {{display: 'flex', flexWrap: 'nowrap', overflowX: 'auto'}}>
                        {this.createSnowRow('')}
                    </Row>

                    <h4 style = {{marginTop: '3rem'}}><u>Water Venues</u></h4>
                    <Row style = {{display: 'flex', flexWrap: 'nowrap', overflowX: 'auto'}}>
                        {this.createWaterRow('')}
                    </Row>

                    <h4 style = {{marginTop: '3rem'}}><u>Land Venues</u></h4>
                    <Row style = {{display: 'flex', flexWrap: 'nowrap', overflowX: 'auto'}}>
                        {this.createLandRow('')}
                    </Row>

                    <h4 style = {{marginTop: '3rem'}}><u>Air Venues</u></h4>
                    <Row style = {{display: 'flex', flexWrap: 'nowrap', overflowX: 'auto'}}>
                        {this.createAirRow('')}
                    </Row>
                </Container>
            );
        }else{
            return (
                <div>
                    <h1 className="fa fa-spinner fa-spin" style={{position: 'absolute', left: '50%', top: '50%'}}>Loading! </h1>
                </div>
            );
        }
    }
}
