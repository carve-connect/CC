import React, {Component} from 'react';
import axios from 'axios';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Carousel from 'react-alice-carousel';
//import "react-multi-carousel/lib/styles.css";
import "react-alice-carousel/lib/alice-carousel.css";
import VenueFigure from './VenueFigure';
import Button from 'react-bootstrap/Button';
import para from "../../../../images/AF1.jpeg";
import {Container, Nav} from 'react-bootstrap';
import UserApi from "../../../../api/UserApi";
//images
import beach from "../../../../images/Be1.jpeg";
import dt from "../../../../images/DT.jpeg";
import gt from "../../../../images/GT.jpeg";
import mk from "../../../../images/MK.jpeg";
import pp from "../../../../images/PP.jpeg";
import mountain from "../../../../images/SkRs1.jpeg";
import skatedude from "../../../../images/Ska1.jpeg";

export default class VenueListPage extends Component {
    //I think i'll need the state information based on the future filtering options
    constructor(props){
        super(props);
        console.log('Props in VenueListPage component', props);
        this.state = {
            venues: {},
            venuesLength: 0,
            content: "all",
            followList: [],
        };
        this.createSnowRow = this.createSnowRow.bind(this);
        this.handleAllVenues = this.handleAllVenues.bind(this);
        this.handleFollowingVenues = this.handleFollowingVenues.bind(this);
    }

    getFollowingVenues() {
        UserApi.getFollowingVenues(localStorage.getItem('userId'))
            .then(venues => {
                this.setState({
                    followList: venues

                });
            });
    }

    handleAllVenues(){
        this.setState({
            content: 'all'
        })
    }

    handleFollowingVenues(){
        this.setState({
            content: 'following'
        })
    }


    componentDidMount() {
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

        for (let k = 0; k < 16; k++) {

                    row.push(
                        <Col key={k} style={{}}>
                            <VenueFigure name={venues[k].venue_name} img={mountain} style={{}}
                                         href={'/dashboard/venues/' + venues[k].venue_id}/>
                        </Col>

                    );

            }


        return row;
    };

    createBeachRow = () => {
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

    createLakeRow = () => {
        const venues = this.state.venues;
        const length = this.state.venuesLength;

        let div = [];
        let row = [];

        for (let k = 0; k < length; k++) {
            if (venues[k].snow_sports == null && venues[k].air_sports == null && venues[k].land_sports == null) {
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

    createMountainRow = () => {
        const venues = this.state.venues;
        const length = this.state.venuesLength;

        let div = [];
        let row = [];
        let pic;
        for (let k = 15; k < 21; k++) {

            if (venues[k].picture === "DT")
                pic = dt;
            if (venues[k].picture === "MK")
                pic = mk;
            if (venues[k].picture === "GT")
                pic = gt;
            if (venues[k].picture === "PP")
                pic = pp;

            row.push(
                <Col key={k}>
                    <VenueFigure name={venues[k].venue_name} img={pic}
                                 href={'/dashboard/venues/' + venues[k].venue_id}/>
                </Col>
            );

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

        let content;


        if(this.state.content == "all"){
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
            content = 
                <div>
                <h4 style={{marginTop: '3rem'}}><u><i className="fa fa-snowflake-o fa-spin"
                                                            style={{color: "skyblue"}}/>Snow Venues <i
                        className="fa fa-snowflake-o fa-spin"
                        style={{color: "skyblue"}}/></u></h4>
                    <Row style={{width: "100%", height: "100%"}}>
                        <Carousel fade responsive={responsive} className="carousel" pauseOnHover={true}
                                  style={{paddingLeft: "10%", width: "100%", color: "black"}} slidesToSlide={5}
                                  autoPlay={false} autoPlayInterval={5000}>
                            {this.createSnowRow}
                        </Carousel>
                </Row>
                    <h4 style={{marginTop: '3rem'}}><u><i className="fa fa-snowflake-o fa-spin"
                                                          style={{color: "skyblue"}}/>Mountain Venues <i
                        className="fa fa-snowflake-o fa-spin"
                        style={{color: "skyblue"}}/></u></h4>
                    <Row style={{width: "100%", height: "100%"}}>
                        <Carousel fade responsive={responsive} className="carousel" pauseOnHover={true}
                                  style={{paddingLeft: "10%", width: "100%", color: "black"}} slidesToSlide={5}
                                  autoPlay={false} autoPlayInterval={5000}>
                            {this.createMountainRow}
                        </Carousel>
                    </Row>

                    <h4 style={{marginTop: '3rem'}}><u><i className="fa fa-anchor " style={{color: "navy"}}/> Beach
                        Venues <i className="fa fa-anchor " style={{color: "navy"}}/></u></h4>
                <Row style = {{display: 'flex', flexWrap: 'nowrap', overflowX: 'auto'}}>
                    <Carousel fade responsive={responsive} wrap={true} className="carousel" pauseOnHover={true}
                                style={{paddingLeft: "10%", width: "100%", color: "black"}} slidesToSlide={5}
                                autoPlay={false} autoPlayInterval={2000}>
                        {this.createBeachRow('')}
                    </Carousel>
                </Row>

                    <h4 style={{marginTop: '3rem'}}><u><i className="fa fa-anchor " style={{color: "navy"}}/> Lake
                        Venues <i className="fa fa-anchor " style={{color: "navy"}}/></u></h4>
                    <Row style={{display: 'flex', flexWrap: 'nowrap', overflowX: 'auto'}}>
                        <Carousel fade responsive={responsive} wrap={true} className="carousel" pauseOnHover={true}
                                  style={{paddingLeft: "10%", width: "100%", color: "black"}} slidesToSlide={5}
                                  autoPlay={false} autoPlayInterval={2000}>
                            {this.createBeachRow('')}
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

                </div>;
        }
        //i'll keep working on this
        else if(this.state.content == "following"){
            let followList;
             followList = this.state.followList.map((venue) =>{
                return (
                    <div>
                        {venue.venue_id}
                    </div>
                )
            });
        }

        if(this.state.venuesLength > 0){



        

            return (
            <Col style={{backgroundColor: "gainsboro", width: "220%"}}>
                    <Nav  variant="pills" defaultActiveKey="all">
                        <Nav.Item style = {{marginTop: '1rem'}} >
                            <Button onClick={this.handleAllVenues} eventKey="all" variant="outline-primary">All Venues</Button>
                        </Nav.Item>
                        <Nav.Item style = {{marginTop: '1rem'}} >
                            <Button disabled onClick={this.handleFollowingVenues} eventKey="following" variant="outline-primary">Following</Button>
                        </Nav.Item>
                    </Nav>
                <div style = {{marginTop: '20px', borderBottom: '2px solid lightgray'}}> </div>
                <Container>
                {content}
                </Container>
                

                    
            </Col>
                
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
