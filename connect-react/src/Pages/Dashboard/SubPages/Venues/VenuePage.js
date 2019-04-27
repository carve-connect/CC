import React, {Component} from 'react'
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Figure from 'react-bootstrap/Figure';
import Mount_Snow from '../../../../images/mount_snow_bg.png'
import Button from 'react-bootstrap/Button';
import ButtonGroup from 'react-bootstrap/ButtonGroup';
import axios from 'axios';
import MediaGroup from '../../../../components/MediaGroup';
import CardColumns from 'react-bootstrap/CardColumns';
import VenueApi from "api/VenueApi";
import UserApi from "api/UserApi";


export default class VenuePage extends Component {
    constructor(props){
        super(props);
        this.state = {
            venueId: Number(props.match.params.number),
            venueInfo: {},
            venueInfoLength: 0,
            followsVenue: false,
            venueLoading: true
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

    render() {
        // If we have the venue information, fill in the page with the information
        if(this.state.venueInfoLength > 0){
            // const venueInfo = this.state.venueInfo;
            const { venueInfo, venueLoading, followsVenue } = this.state;
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



            return (
                <>
                    {/* Follow button, image, and info about sports at the venue */}
                    <Row>
                        <Container>
                            <Row>
                                <Col>
                                    <Figure>
                                        <h1>{venueInfo.venue_name}</h1>
                                        <h4><em>{venueInfo.city}, {venueInfo.state}</em></h4>

                                        {/* Conditionally Render this button if we follow the venue already */}
                                        {/*<Button style={{margin:'5px'}} variant="info" onClick={this.onClick1}>Follow</Button>*/}
                                        {followButton}

                                        <Figure.Image rounded src={Mount_Snow} />
                                        <h4>{venueInfo.about}</h4>
                                        <h5>Sports: {venueInfo.snow_sports} {venueInfo.land_sports} {venueInfo.air_sports}</h5>
                                    </Figure>
                                </Col>
                            </Row>
                        </Container>
                    </Row>

                    {/* Row of buttons for navigation */}
                    <Row className = 'justify-content-center'>
                        <ButtonGroup size = 'lg' aria-label="Venue button group">
                            <Button variant="secondary">Information</Button>
                            <Button variant="secondary">Carves</Button>
                            <Button variant="secondary">Media</Button>
                        </ButtonGroup>
                    </Row>

                    {/* Carves at the venue */}
                    <Row style={{marginTop: '2rem'}}>
                        <Col>
                        <CardColumns>
                                <MediaGroup type = "venue" content_id = {this.state.venueId}/>
                        </CardColumns>  
                        </Col>
                    </Row>
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