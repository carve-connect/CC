import React, {Component} from 'react';
import axios from 'axios';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Carousel from 'react-alice-carousel';
//import "react-multi-carousel/lib/styles.css";
import "react-alice-carousel/lib/alice-carousel.css";
import VenueFigure from './VenueFigure';
import Button from 'react-bootstrap/Button';
import af from "../../../../images/AF1.jpeg";
import {Container, Nav} from 'react-bootstrap';
import UserApi from "../../../../api/UserApi";
//images
import beach from "../../../../images/Be1.jpeg";
import beach2 from "../../../../images/Be2.jpeg";
import beach3 from "../../../../images/Be3.jpg";
import beach4 from "../../../../images/Be4.jpg";
import beach5 from "../../../../images/Be5.jpg";
import lake from "../../../../images/Lk1.jpg";
import lake2 from "../../../../images/Lk2.JPG";
import lake3 from "../../../../images/Lk3.JPG";
import lake4 from "../../../../images/Lk4.jpg";
import lake5 from "../../../../images/Lk5.jpg";
import dt from "../../../../images/DT.jpeg";
import mr from "../../../../images/MtRainier.jpeg";
import gt from "../../../../images/GT.jpeg";
import mk from "../../../../images/MK.jpeg";
import pp from "../../../../images/PP.jpeg";
import mountain from "../../../../images/SkRs1.jpeg";
import mountain2 from "../../../../images/SkRs2.jpeg";
import mountain3 from "../../../../images/SkRs3.JPG";
import mountain4 from "../../../../images/SkRs4.JPG";
import mountain6 from "../../../../images/SkRs4.JPG";
import mountain5 from "../../../../images/SkRs5.jpeg";
import mountain7 from "../../../../images/SkRs7.JPG";
import mountain8 from "../../../../images/SkRs8.jpeg";
import skatedude from "../../../../images/Ska1.jpeg";
import skatedude2 from "../../../../images/Ska2.jpeg";
import skatedude3 from "../../../../images/Ska3.jpeg";
import skatedude4 from "../../../../images/Ska4.jpeg";

import bmx1 from "../../../../images/BMXT1.jpeg";
import bmx2 from "../../../../images/BMXT2.jpeg";
import MB from "../../../../images/MB1.jpeg";
import skydive from "../../../../images/SkyDive1.jpeg";
import skydive2 from "../../../../images/SkyDive2.jpeg";

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
        let pic = mountain;

        if (length > 0)
            for (let k = 0; k < 16; k++) {

                if (venues[k].picture === "SkRs1")
                    pic = mountain;
                else if (venues[k].picture === "SkRs2")
                    pic = mountain2;
                else if (venues[k].picture === "SkRs3")
                    pic = mountain3;
                else if (venues[k].picture === "SkRs4")
                    pic = mountain4;
                else if (venues[k].picture === "SkRs5")
                    pic = mountain5;
                else if (venues[k].picture === "SkRs6")
                    pic = mountain6;
                else if (venues[k].picture === "SkRs7")
                    pic = mountain7;
                else if (venues[k].picture === "SkRs8")
                    pic = mountain8;

                row.push(
                    <Col key={k} style={{}}>
                        <VenueFigure name={venues[k].venue_name} img={pic} style={{}}
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
        if (length > 0)
            for (let k = 20; k < 40; k++) {

                let pic;
                if (venues[k].picture === "Be1")
                    pic = beach;
                if (venues[k].picture === "Be2")
                    pic = beach2;
                if (venues[k].picture === "Be3")
                    pic = beach3;
                if (venues[k].picture === "Be4")
                    pic = beach4;
                if (venues[k].picture === "Be5")
                    pic = beach5;

                row.push(
                    <Col key={k}>
                        <VenueFigure name={venues[k].venue_name} img={pic}
                                     href={'/dashboard/venues/' + venues[k].venue_id}/>
                    </Col>
                );

            }


        return row;
    };

    createLakeRow = () => {
        const venues = this.state.venues;
        const length = this.state.venuesLength;

        let div = [];
        let row = [];
        let pic = lake;
        if (length > 0)
            for (let k = 40; k < 46; k++) {
                if (venues[k].picture === "Lk1")
                    pic = lake;
                if (venues[k].picture === "Lk2")
                    pic = lake2;
                if (venues[k].picture === "Lk3")
                    pic = lake3;
                if (venues[k].picture === "Lk4")
                    pic = lake4;
                if (venues[k].picture === "Lk5")
                    pic = lake5;
                row.push(
                    <Col key={k}>
                        <VenueFigure name={venues[k].venue_name} img={pic}
                                     href={'/dashboard/venues/' + venues[k].venue_id}/>
                    </Col>
                );

        }


        return row;
    };

    createMountainRow = () => {
        const venues = this.state.venues;
        const length = this.state.venuesLength;

        let div = [];
        let row = [];
        let pic;

        if (length > 0)
            for (let k = 15; k < 21; k++) {

                if (venues[k].picture === "DT")
                    pic = dt;
                if (venues[k].picture === "MK")
                    pic = mk;
                if (venues[k].picture === "GT")
                    pic = gt;
                if (venues[k].picture === "PP")
                    pic = pp;
                if (venues[k].picture === "MR")
                    pic = mr;

                row.push(
                    <Col key={k}>
                        <VenueFigure name={venues[k].venue_name} img={pic}
                                     href={'/dashboard/venues/' + venues[k].venue_id}/>
                    </Col>
                );

            }

        return row;
    };

    createSkateRow = () => {
        const venues = this.state.venues;
        const length = this.state.venuesLength;

        let div = [];
        let row = [];
        if (length > 0)
            for (let k = 45; k < 51; k++) {
                let pic = skatedude;
                if (venues[k].picture === "Ska1")
                    pic = skatedude;
                else if (venues[k].picture === "Ska2")
                    pic = skatedude2;
                else if (venues[k].picture === "Ska3")
                    pic = skatedude3;
                else if (venues[k].picture === "Ska4")
                    pic = skatedude4;


                row.push(
                    <Col key={k}>
                        <VenueFigure name={venues[k].venue_name} img={pic}
                                     href={'/dashboard/venues/' + venues[k].venue_id}/>
                    </Col>
                );

            }

        return row;
    };

    createBMXRow = () => {
        const venues = this.state.venues;
        const length = this.state.venuesLength;

        let div = [];
        let row = [];
        if (length > 0)
            for (let k = 50; k < 56; k++) {
                let pic;
                if (venues[k].picture === "Ska1")
                    pic = skatedude;
                else if (venues[k].picture === "Ska2")
                    pic = skatedude2;
                else if (venues[k].picture === "Ska3")
                    pic = skatedude3;
                else if (venues[k].picture === "Ska4")
                    pic = skatedude4;
                else if (venues[k].picture === "BMXT1")
                    pic = bmx1;
                else if (venues[k].picture === "BMXT2")
                    pic = bmx2;
                row.push(
                    <Col key={k}>
                        <VenueFigure name={venues[k].venue_name} img={pic}
                                     href={'/dashboard/venues/' + venues[k].venue_id}/>
                    </Col>
                );

            }

        return row;
    };

    createAirRow = () => {
        const venues = this.state.venues;
        const length = this.state.venuesLength;

        let div = [];
        let row = [];
        if (length > 0)
            for (let k = 55; k < length; k++) {
                let pic;
                if (venues[k].picture === "AF1")
                    pic = af;
                else if (venues[k].picture === "MB1")
                    pic = MB;
                else if (venues[k].picture === "SkyDive1")
                    pic = skydive;
                else if (venues[k].picture === "SkyDive2")
                    pic = skydive2;
                row.push(
                    <Col key={k}>
                        <VenueFigure name={venues[k].venue_name} img={pic}
                                     href={'/dashboard/venues/' + venues[k].venue_id}/>
                    </Col>
                );

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
                            {this.createSnowRow('')}
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
                            {this.createMountainRow('')}
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
                            {this.createLakeRow('')}
                        </Carousel>
                    </Row>

                    <h4 style={{marginTop: '3rem'}}><u><i className="fa fa-bicycle " style={{color: "navy"}}/> Skate
                        Venues <i className="fa fa-bicycle " style={{color: "navy"}}/></u></h4>
                <Row style = {{display: 'flex', flexWrap: 'nowrap', overflowX: 'auto'}}>
                    <Carousel fade responsive={responsive} wrap={true} className="carousel" pauseOnHover={true}
                                style={{paddingLeft: "10%", width: "100%", color: "black"}} slidesToSlide={5}
                                autoPlay={false} autoPlayInterval={2000}>
                        {this.createSkateRow('')}
                    </Carousel>
                </Row>

                    <h4 style={{marginTop: '3rem'}}><u><i className="fa fa-bicycle " style={{color: "navy"}}/> BMX
                        Venues <i className="fa fa-bicycle " style={{color: "navy"}}/></u></h4>
                    <Row style={{display: 'flex', flexWrap: 'nowrap', overflowX: 'auto'}}>
                        <Carousel fade responsive={responsive} wrap={true} className="carousel" pauseOnHover={true}
                                  style={{paddingLeft: "10%", width: "100%", color: "black"}} slidesToSlide={5}
                                  autoPlay={false} autoPlayInterval={2000}>
                            {this.createBMXRow('')}
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


            /*
            <Nav.Item style = {{marginTop: '1rem'}} >
                                <Button disabled onClick={this.handleFollowingVenues} eventKey="following" variant="outline-primary">Following</Button>
                            </Nav.Item>
             */

            return (
            <Col style={{backgroundColor: "gainsboro", width: "220%"}}>
                    <Nav  variant="pills" defaultActiveKey="all">
                        <Nav.Item style = {{marginTop: '1rem'}} >
                            <Button onClick={this.handleAllVenues} eventKey="all" variant="outline-primary">All Venues</Button>

                        </Nav.Item>

                    </Nav>
                <h2 style={{paddingLeft: "40%"}}>List of Venues: </h2>
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
