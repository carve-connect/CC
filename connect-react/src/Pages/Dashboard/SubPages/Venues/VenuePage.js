import React, {Component} from 'react'
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Figure from 'react-bootstrap/Figure';
import Mount_Snow from '../../../../images/mount_snow_bg.png'
import Button from 'react-bootstrap/Button';
import ButtonGroup from 'react-bootstrap/ButtonGroup';
import axios from 'axios';
import MediaGroup from '../../../../components/MediaComponents/MediaGroup';
import VenueApi from "../../../../api/VenueApi";
import UserApi from "../../../../api/UserApi";
import VenueCarveCard from '../../../../components/CarveComponents/VenueCarveCard'
import Map from "../../../../components/VenueComponents/Map";
import WeatherForecast from "../../../../components/VenueComponents/WeatherForecast";
import beach from "../../../../images/beach.jpeg";
import mountain from "../../../../images/mountain.jpeg";
import skatedude from "../../../../images/skatedude.jpeg";
import MB from "../../../../images/MB.jpeg";
import para from "../../../../images/para.jpeg";
import skydive from "../../../../images/skydive.jpeg";
import WeatherForecast1 from "../../../../components/VenueComponents/WeatherForecast1";


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
    componentWillMount() {
        this.getData();
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
    render() {
        //<WeatherHistory id ={this.state.venueId}/>


        let content;
        // If we have the venue information, fill in the page with the information
        if(this.state.venueInfoLength > 0){


            // const venueInfo = this.state.venueInfo;
            const { venueInfo, venueLoading, followsVenue } = this.state;

            let pic;
            if (venueInfo.picture === "beach")
                pic = beach;
            else if (venueInfo.picture === "mountain")
                pic = mountain;
            else if (venueInfo.picture === "mount_snow")
                pic = Mount_Snow;
            else if (venueInfo.picture === "skatedude")
                pic = skatedude;
            else if (venueInfo.picture === "para")
                pic = para;
            else if (venueInfo.picture === "MB")
                pic = MB;
            else if (venueInfo.picture === "skydive")
                pic = skydive;

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
                                <VenueCarveCard venue_id={this.state.venueId}/>
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
                                <h2>Map of area around Venue <i className="fa fa-globe fa-spin"
                                                                style={{color: "white"}}/></h2>
                                <Map latitude={this.state.venueInfo.lattitude}
                                     longitude={this.state.venueInfo.longitude}/>
                            </Col>
                            <Col style={{backgroundColor: "grey", width: "50%"}}>

                                <WeatherForecast id={this.state.venueId}/>

                            </Col>
                            <Col style={{backgroundColor: "slate", width: "50%"}}>
                                <Container>
                                    <WeatherForecast1 id={this.state.venueId}/>
                                </Container>
                            </Col>
                        </Row>
                    </Container>
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

                                        <Figure.Image rounded src={pic}/>

                                    </Figure>
                                <div style={{backgroundColor: "cadetblue", paddingTop: "0px"}}>
                                    <h3><em>{venueInfo.city}, {venueInfo.state}</em></h3>
                                    <h3>About {venueInfo.venue_name}: {venueInfo.about}</h3>
                                    <h3>Sports: {venueInfo.snow_sports} {venueInfo.water_sports} {venueInfo.land_sports} {venueInfo.air_sports}</h3>
                                    <h3>Website with info for venue: <a href={venueInfo.url}>{venueInfo.url}</a></h3>
                                </div>
                                </Col>
                            </Row>

                    </Row>

                    {/* Row of buttons for navigation */}
                    <Row style={{backgroundColor: "gainsboro", width: "150%"}}>
                        <ButtonGroup size='lg' aria-label="Venue button group"
                                     style={{width: "80%", paddingBottom: "0px"}}>
                            <Button variant="secondary" onClick={this.handleInfo}>Information</Button>
                            <Button variant="secondary" onClick={this.handleCarves}>Carves</Button>
                            <Button variant="secondary" onClick={this.handleMedia}>Media</Button>
                        </ButtonGroup>
                    </Row>

                    {/* Carves at the venue */}
                    <Row style={{backgroundColor: "gainsboro", width: "150%"}}>
                        <div>
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

    getVenueInfo() {
        VenueApi.getVenueInfo(this.state.venueId)
          .then(venue => {
              this.setState({ venueInfo: venue, venueInfoLength: Object.keys(venue).length });
          })

    }

    getFollowingVenues() {
        UserApi.getFollowingVenues(localStorage.getItem('userId'))
          .then(venues => {
              let followsVenue = false;
              venues.forEach((venue) => {
                  if(venue.venue_Id === this.state.venueId) {
                      followsVenue = true;
                  }
              });
              this.setState({followsVenue, venueLoading: false});
            });
    }

    getData() {
        this.getVenueInfo();
        this.getFollowingVenues();
        console.log(this.state);
    }

}