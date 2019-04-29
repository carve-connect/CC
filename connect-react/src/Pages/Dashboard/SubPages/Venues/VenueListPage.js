import React, {Component} from 'react';
import axios from 'axios';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Carousel from 'react-alice-carousel';
//import "react-multi-carousel/lib/styles.css";
import "react-alice-carousel/lib/alice-carousel.css";
import VenueFigure from './VenueFigure';
import Form from 'react-bootstrap/Form';
import Button from 'react-bootstrap/Button';
import beach from "../../../../images/beach.jpeg";
import mountain from "../../../../images/mountain.jpeg";
import skatedude from "../../../../images/skatedude.jpeg";
import para from "../../../../images/para.jpeg";


export default class VenueListPage extends Component {
    //I think i'll need the state information based on the future filtering options
    constructor(props){
        super(props);
        console.log('Props in VenueListPage component', props);
        this.state = {
            venues: {},
            venuesLength: 0
        };
        this.createSnowRow = this.createSnowRow.bind(this);


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
                        <Col key={k} style={{}}>
                            <VenueFigure name={venues[k].venue_name} img={mountain} style={{}}
                                         href={'/dashboard/venues/' + venues[k].venue_id}/>
                        </Col>

                    );
                }
            }


        return row;
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
                        <VenueFigure name={venues[k].venue_name} img={beach}
                                     href={'/dashboard/venues/' + venues[k].venue_id}/>
                    </Col>
                );
            }
        }


        return row;
    };

    createLandRow = () => {
        const venues = this.state.venues;
        const length = this.state.venuesLength;

        let div = [];
        let row = [];

        for(let k =0 ; k < length; k++){
            if(venues[k].snow_sports == null && venues[k].air_sports == null && venues[k].water_sports == null){
                row.push(
                    <Col key={k}>
                        <VenueFigure name={venues[k].venue_name} img={skatedude}
                                     href={'/dashboard/venues/' + venues[k].venue_id}/>
                    </Col>
                );
            }
        }

        return row;
    };

    createAirRow = () => {
        const venues = this.state.venues;
        const length = this.state.venuesLength;

        let div = [];
        let row = [];

        for(let k =0 ; k < length; k++){
            if(venues[k].snow_sports == null && venues[k].water_sports == null && venues[k].land_sports == null){
                row.push(
                    <Col key={k}>
                        <VenueFigure name={venues[k].venue_name} img={para}
                                     href={'/dashboard/venues/' + venues[k].venue_id}/>
                    </Col>
                );
            }
        }

        return row;
    };
    
    render(){
        let waterList;
        let landList;
        let snowList;
        let airList;
        const {venues} = this.state;
        if(this.state.venuesLength > 0){
            const responsive = {
                0: {
                    items: 1
                },
                600: {
                    items: 2
                },
                1024: {
                    items: 3
                },
                1440: {
                    items: 5
                }
            };

            return (
                <>
                    <Col style={{backgroundColor: "gainsboro", width: "220%"}}>
                        <Row style={{width: "150%"}}>
                        <h1>Venues</h1>
                    </Row>
                        <Row style={{marginTop: '45px', width: "150%"}}>
                        <Col md={{ span: 6, offset: 1 }}>
                            <Form.Control type="text" placeholder="Search" />
                        </Col>
                        <Button variant="link">+Filters</Button>
                    </Row>

                    <div style = {{marginTop: '20px', borderBottom: '1px solid lightgray'}}> </div>


                        <h4 style={{marginTop: '3rem'}}><u><i className="fa fa-snowflake-o fa-spin"
                                                              style={{color: "skyblue"}}/>Snow Venues <i
                            className="fa fa-snowflake-o fa-spin"
                            style={{color: "skyblue"}}/></u></h4>
                        <Row style={{width: "100%", height: "100%"}}>
                            <Carousel fade responsive={responsive} className="carousel" pauseOnHover={true}
                                      style={{paddingLeft: "10%", width: "100%", color: "black"}} slidesToSlide={5}
                                      autoPlay={true} autoPlayInterval={5000}>
                        {this.createSnowRow('')}
                            </Carousel>
                    </Row>

                        <h4 style={{marginTop: '3rem'}}><u><i className="fa fa-anchor " style={{color: "navy"}}/> Water
                            Venues <i className="fa fa-anchor " style={{color: "navy"}}/></u></h4>
                    <Row style = {{display: 'flex', flexWrap: 'nowrap', overflowX: 'auto'}}>
                        <Carousel fade responsive={responsive} wrap={true} className="carousel" pauseOnHover={true}
                                  style={{paddingLeft: "10%", width: "100%", color: "black"}} slidesToSlide={5}
                                  autoPlay={false} autoPlayInterval={2000}>
                            {this.createWaterRow('')}
                        </Carousel>
                    </Row>

                        <h4 style={{marginTop: '3rem'}}><u><i className="fa fa-bicycle " style={{color: "navy"}}/> Land
                            Venues <i className="fa fa-bicycle " style={{color: "navy"}}/></u></h4>
                    <Row style = {{display: 'flex', flexWrap: 'nowrap', overflowX: 'auto'}}>
                        <Carousel fade responsive={responsive} wrap={true} className="carousel" pauseOnHover={true}
                                  style={{paddingLeft: "10%", width: "100%", color: "black"}} slidesToSlide={5}
                                  autoPlay={false} autoPlayInterval={2000}>
                            {this.createLandRow('')}
                        </Carousel>
                    </Row>

                        <h4 style={{marginTop: '3rem'}}><u><i className="fa fa-fighter-jet "
                                                              style={{color: "navy"}}/> Air Venues <i
                            className="fa fa-fighter-jet " style={{color: "navy"}}/></u></h4>
                    <Row style = {{display: 'flex', flexWrap: 'nowrap', overflowX: 'auto'}}>
                        <Carousel fade responsive={responsive} wrap={true} className="carousel" pauseOnHover={true}
                                  style={{paddingLeft: "10%", width: "100%", color: "black"}} slidesToSlide={5}
                                  autoPlay={false} autoPlayInterval={2000}>
                            {this.createAirRow('')}
                        </Carousel>
                    </Row>
                    </Col>
                </>
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
