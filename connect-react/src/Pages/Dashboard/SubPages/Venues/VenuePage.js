import React, {Component} from 'react'
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Figure from 'react-bootstrap/Figure';
import Mount_Snow from '../../../../images/SkRs2.jpeg';
import mountain2 from '../../../../images/SkRs2.jpeg';
import Button from 'react-bootstrap/Button';
import ButtonGroup from 'react-bootstrap/ButtonGroup';
import axios from 'axios';
import MediaGroup from '../../../../components/MediaComponents/MediaGroup';
import VenueApi from "../../../../api/VenueApi";
import UserApi from "../../../../api/UserApi";
import Map from "../../../../components/VenueComponents/Map";
import WeatherForecast from "../../../../components/VenueComponents/WeatherForecast";
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
import af from "../../../../images/AF1.jpeg";
import skydive from "../../../../images/SkyDive1.jpeg";
import skydive2 from "../../../../images/SkyDive2.jpeg";
import WeatherForecast1 from "../../../../components/VenueComponents/WeatherForecast1";
import CarveCollector from "../../../../components/CarvesComponents/CarveCollector";


export default class VenuePage extends Component {
    constructor(props){
        super(props);
        this.state = {
            venueId: Number(props.match.params.number),
            venueInfo: {},
            venueInfoLength: 0,
            followsVenue: false,
            venueLoading: true,
            content: "carves"

        };

        this.unFollowVenue = this.unFollowVenue.bind(this);
    }

    // Fetches Data from api before the component is rendered to the screen
    componentDidMount() {
        this.getData();
	  }

    getVenueInfo() {
        VenueApi.getVenueInfo(this.state.venueId)
            .then(venue => {
                this.setState({venueInfo: venue, venueInfoLength: Object.keys(venue).length});
            })

    }

    getFollowingVenues() {
        UserApi.getFollowingVenues(localStorage.getItem('userId'))
            .then(venues => {
                let followsVenue = false;
                venues.forEach((venue) => {
                    if (venue.venue_Id === this.state.venueId) {
                        followsVenue = true;
                    }
                });
                this.setState({followsVenue, venueLoading: false});
            });
    }

    getData() {
        this.getVenueInfo();
        this.getFollowingVenues();
        this.getFollowingUsers();
        console.log(this.state);
    }

	  // Allows the user to follow the venue that they are on.
    followVenue = () => {
        axios.post('http://localhost:8000/follows', {
            user1: localStorage.getItem('userId'),
            v: this.state.venueInfo.venue_id
        }).then(() => {
            this.getData();
        });
    };

    // Unfollows the venue that we are on
    unFollowVenue() {
        axios.delete(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/venues`, {
            data: { user_id1: localStorage.getItem('userId'), venue_id: this.state.venueId }
        })
          .then((res) => {
            this.getData();
          });
    }

    handleInfo = () => {
        this.setState({
            content: "info"
        });

    };


    handleCarves = () => {
        this.setState({
            content: "carves"
        });
    };

    handleMedia = () => {
        this.setState({
            content: "media"
        });
    };

    getFollowingUsers() {
        axios.get(`http://localhost:8000/venues/${this.state.venueId}/follows`)
            .then(res => {
                this.setState({
                    followers: res.data.venues[0],
                    fc: res.data.venues[0].length
                });
            })
    }

    render() {
        //<WeatherHistory id ={this.state.venueId}/>


        let content;
        // If we have the venue information, fill in the page with the information
        if(this.state.venueInfoLength > 0){


            // const venueInfo = this.state.venueInfo;
            const { venueInfo, venueLoading, followsVenue } = this.state;

            let pic;
            if (venueInfo.picture === "Be1")
                pic = beach;
            if (venueInfo.picture === "Be2")
                pic = beach2;
            if (venueInfo.picture === "Be3")
                pic = beach3;
            if (venueInfo.picture === "Be4")
                pic = beach4;
            if (venueInfo.picture === "Be5")
                pic = beach5;
            if (venueInfo.picture === "Lk1")
                pic = lake;
            if (venueInfo.picture === "Lk2")
                pic = lake2;
            if (venueInfo.picture === "Lk3")
                pic = lake3;
            if (venueInfo.picture === "Lk4")
                pic = lake4;
            if (venueInfo.picture === "Lk5")
                pic = lake5;
            if (venueInfo.picture === "DT")
                pic = dt;
            if (venueInfo.picture === "MK")
                pic = mk;
            if (venueInfo.picture === "GT")
                pic = gt;
            if (venueInfo.picture === "PP")
                pic = pp;
            if (venueInfo.picture === "MR")
                pic = mr;
            else if (venueInfo.picture === "SkRs1")
                pic = mountain;
            else if (venueInfo.picture === "SkRs2")
                pic = mountain2;
            else if (venueInfo.picture === "SkRs3")
                pic = mountain3;
            else if (venueInfo.picture === "SkRs4")
                pic = mountain4;
            else if (venueInfo.picture === "SkRs5")
                pic = mountain5;
            else if (venueInfo.picture === "SkRs6")
                pic = mountain6;
            else if (venueInfo.picture === "SkRs7")
                pic = mountain7;
            else if (venueInfo.picture === "SkRs8")
                pic = mountain8;
            else if (venueInfo.picture === "mount_snow")
                pic = Mount_Snow;
            else if (venueInfo.picture === "Ska1")
                pic = skatedude;
            else if (venueInfo.picture === "Ska2")
                pic = skatedude2;
            else if (venueInfo.picture === "Ska3")
                pic = skatedude3;
            else if (venueInfo.picture === "Ska4")
                pic = skatedude4;
            else if (venueInfo.picture === "BMXT1")
                pic = bmx1;
            else if (venueInfo.picture === "BMXT2")
                pic = bmx2;
            else if (venueInfo.picture === "AF1")
                pic = af;
            else if (venueInfo.picture === "MB1")
                pic = MB;
            else if (venueInfo.picture === "SkyDive1")
                pic = skydive;
            else if (venueInfo.picture === "SkyDive2")
                pic = skydive2;
            let followButton;

            // Checks to see if we are loading the venues that the user follows
            if(!venueLoading) {
                // If the user follows the venue, change the content of the button
                if(followsVenue) {
                    followButton = <Button style={{margin:'5px'}} variant="info" onClick={this.unFollowVenue}>Unfollow</Button>;
                } else {
                    // We do not follow the venue currently, offer them the option to follow it
                    followButton = <Button style={{margin:'5px'}} variant="info" onClick={this.followVenue}>Follow</Button>;
                }
            } else {
                followButton = <div><i className="fa fa-spinner fa-spin"></i></div>;
            }

            if (this.state.content === "carves") {
                content =
                    <Container>
                        <Col>
                            <Row>
                                <Row><h2>Carves at {this.state.venueInfo.venue_name}</h2></Row>
                            </Row>
                            <Row style={{borderTop: "5px solid black", width: "200%"}}>
                                <CarveCollector type={"venue"} venue_id={this.state.venueId}/>
                            </Row>
                        </Col>
                    </Container>
            } else if (this.state.content === "media") {
                content =
                    <Container style={{}}>
                        <h2>MEDIA for {this.state.venueInfo.venue_name}</h2>
                        <Row style={{borderTop: "5px solid black", width: "200%"}}>
                            <MediaGroup type="venue" content_id={this.state.venueId}/>
                        </Row>
                    </Container>
            } else if (this.state.content === "info") {


//<WeatherHistory id={this.state.venueId}/>
                content =
                    <Container>
                        <Row style={{width: "180%"}}>
                            <Col style={{backgroundColor: "cadetblue"}}>
                                <h2>Map of area around Venue</h2><h4><i className="fa fa-globe fa-spin"
                                                                        style={{color: "blue"}}/></h4>
                                <Map latitude={this.state.venueInfo.lattitude}
                                     longitude={this.state.venueInfo.longitude}/>
                            </Col>
                            <Col style={{backgroundColor: "grey", width: "30%"}}>

                                <WeatherForecast id={this.state.venueId}/>

                            </Col>
                            <Col style={{backgroundColor: "slate", width: "30%"}}>
                                <Container>
                                    <WeatherForecast1 id={this.state.venueId}/>
                                </Container>
                            </Col>
                        </Row>
                    </Container>
                //alert(JSON.stringify(this.state.venueInfo));
            }
            return (
                <>
                    {/* Follow button, image, and info about sports at the venue */}
                    <Row style={{backgroundColor: "grey", width: "120%"}}>

                        <Row style={{paddingLeft: "2%", width: "80%"}}>
                            <Col style={{width: "100%"}}>
                                    <Figure>
                                        <h1>{venueInfo.venue_name}</h1>


                                        {/* Conditionally Render this button if we follow the venue already */}
                                        {/*<Button style={{margin:'5px'}} variant="info" onClick={this.onClick1}>Follow</Button>*/}
                                        {followButton}

                                        <Figure.Image style={{maxHeight: "75%", maxWidth: "75%"}} rounded src={pic}/>

                                    </Figure>
                                <div style={{backgroundColor: "cadetblue", paddingTop: "0px"}}>
                                    <h3><em>{venueInfo.city}, {venueInfo.state}</em></h3>
                                    <h3>About {venueInfo.venue_name}: {venueInfo.about}</h3>
                                    <h3>Sports: {venueInfo.snow_sports} {venueInfo.water_sports} {venueInfo.land_sports} {venueInfo.air_sports}</h3>
                                    <h2>Venue has {this.state.fc} followers</h2>
                                    <h3>Website with info for venue: <a href={venueInfo.url}>{venueInfo.url}</a></h3>
                                </div>
                                </Col>
                            </Row>

                    </Row>

                    {/* Row of buttons for navigation */}
                    <Row style={{backgroundColor: "gainsboro", width: "100%", paddingLeft: "25%"}}>
                        <ButtonGroup size='lg' aria-label="Venue button group"
                                     style={{width: "80%", paddingBottom: "0px"}}>
                            <Button variant="secondary" onClick={this.handleInfo}>Information</Button>
                            <Button variant="secondary" onClick={this.handleCarves}>Carves</Button>
                            <Button variant="secondary" onClick={this.handleMedia}>Media</Button>
                        </ButtonGroup>
                    </Row>

                    {/* Carves at the venue */}
                    <Row style={{backgroundColor: "gainsboro", width: "100%"}}>
                        <div style={{paddingLeft: "2%"}}>
                        {content}
                        </div>
                    </Row>
                    <Row style={{marginLeft: '3rem', width: '100%', backgroundColor: "gainsboro"}}>

                    </Row>
                        
  
                    {/* <Col style = {{width: "200%"}}>
                        <Row>
                            <h2>Carves at this venue</h2>
                        </Row>
                        <Row style = {{width:"100%"}}>
                            <VenueCarveCard venue_id = {this.state.venueId} style = {{width:"100%"}}/>
                        </Row>
                    </Col> */}
                    

                </>
            );
        } else {
            // Return a loading spinner because we did not load the venue information yet
            return (
                <div>
                    <h1 className="fa fa-spinner fa-spin" style={{position: 'absolute', left: '50%', top: '50%'}}>Loading! </h1>
                </div>
            );
        }
    }



}