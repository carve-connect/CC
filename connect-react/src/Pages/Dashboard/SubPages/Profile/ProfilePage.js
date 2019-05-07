import React, {Component} from 'react'
import axios from 'axios'
import Button from "react-bootstrap/Button";
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';

import CreateCarveModal from "../../../../components/CarveComponents/CreateCarveModal";
import BuddyRequestModal from "../../../../components/NotificationComponents/BuddyRequestModal";
import MediaGroup from "../../../../components/MediaComponents/MediaGroup";
import ProfileInfoCard from './ProfileInfoCard';
import Container from 'react-bootstrap/Container';
import WallPost from '../../../../components/WallComponents/WallPost';
import CreateMediaModal from "../../../../components/MediaComponents/CreateMediaModal";
//import { imgObj } from "images/images";
import dogskate from '../../../../images/dogskate.jpeg';
import SEAN from '../../../../images/SEAN.jpeg';
import DHRUV from '../../../../images/DHRUV.jpg';
import FRED from '../../../../images/FRED.jpeg';
import BALIGA from '../../../../images/BALIGA.png';
import SnMb1 from '../../../../images/SnMb1.jpeg'
import dogsurf from '../../../../images/dogsurf.jpeg';
import dog from '../../../../images/dog.jpg';
import SkyDive1 from '../../../../images/SkyDive1.jpeg';
import Su1 from "../../../../images/Su1.jpeg";
import Sn1 from '../../../../images/Sn1.jpeg';
import Ph1 from '../../../../images/Ph1.jpeg';
import Sn4 from '../../../../images/Sn4.jpeg';
import Ph2 from '../../../../images/Ph2.jpeg';
import Dr1 from '../../../../images/Dr1.jpeg';
import SnowProfilePic from '../../../../images/Sn3.jpeg';
import Sn3 from '../../../../images/Sn3.jpeg';
import UserApi from "../../../../api/UserApi";
import CarveCollector from "../../../../components/CarvesComponents/CarveCollector";
import Sn2 from "../../../../images/Sn2.jpg";
import Sn5 from "../../../../images/Sn5.jpeg";
import Su2 from "../../../../images/Su2.jpg";
import SkyDive2 from "../../../../images/SkyDive2.jpeg";
import Dr2 from "../../../../images/Dr2.jpeg";
import Ph3 from "../../../../images/Ph3.jpeg";
import MB1 from "../../../../images/MB1.jpeg";
import MB2 from "../../../../images/MB2.jpeg";
import MB3 from "../../../../images/MB3.jpeg";
import MB4 from "../../../../images/MB4.jpeg";
import Par1 from "../../../../images/Par1.jpeg";
import Sk1 from "../../../../images/Sk1.jpeg";
import Sk2 from "../../../../images/Sk2.jpeg";
import Ska1 from "../../../../images/Ska1.jpeg";
import Ska2 from "../../../../images/Ska2.jpeg";
import Ska3 from "../../../../images/Ska3.jpeg";
import Ska4 from "../../../../images/Ska4.jpeg";
import SkPh1 from "../../../../images/SkPh1.jpeg";
import SkPh2 from "../../../../images/SkPh2.jpeg";
import JRIDER from "../../../../images/JRIDER.png";

//photos


class ProfilePage extends Component {
	constructor(props) {
		super(props);
		this.state = {
			userId: Number(props.match.params.number),
			userInfo: {},
			userInfoLength: 0,
			isUserLoggedIn: props.match.params.number === localStorage.getItem('userId'),
			pic: null,
			check: true,
			show: false,
			show1: false,
			show2: false,
			buddies: 0,
			followers: 0,
            following: 0,
            vFollowing: 0,
			carve: true,
			media: false,
			posts: false,
			content: "carves",
			createMedia: false,
            follows: false,
            buddy: false,
            followsUser: false
		};

		this.handleShow = this.handleShow.bind(this);
		this.handleCreateMedia = this.handleCreateMedia.bind(this);
		this.handleClose = this.handleClose.bind(this);
		this.addBuddy = this.addBuddy.bind(this);
		this.getUserInfo = this.getUserInfo.bind(this);
		this.handleCarves = this.handleCarves.bind(this);
		this.handleMedia = this.handleMedia.bind(this);
		this.handlePosts = this.handlePosts.bind(this);
		this.setProfilePic = this.setProfilePic.bind(this);
		this.followUser = this.followUser.bind(this);
		this.unFollowUser = this.unFollowUser.bind(this);
		this.addBuddy = this.addBuddy.bind(this);
		this.removeBuddy = this.removeBuddy.bind(this);
	}

	// Retrieves info before component is mounted to the DOM
	componentDidMount() {

		this.setState({
			userId: Number(this.props.match.params.number)
		});
		//this.getUserCounts();
		this.getUserInfo();
	}

	componentWillReceiveProps(newProps, nextContext) {
		this.setState({
			userId: Number(newProps.match.params.number)
		});
		this.getUserInfo();

		//this.getUserCounts();

	}

	handleClick = () => {
		this.setState({show1: !this.state.show1});
	};

	handleCreateMedia = () => {
		this.setState({createMedia: !this.state.createMedia});
	};

	handleClick2 = () => {
		this.setState({show2: !this.state.show2});
	};

    addBuddy() {
        this.setState({show2: false});
    }

	onClick1 = () => {
        //alert("Follow " + this.state.userId + " by " + localStorage.getItem('userId'));
		axios.post('http://localhost:8000/follows', {
			user1: localStorage.getItem('userId'),
			user2: this.state.userId

		});
	};

    followUser = () => {
        axios.post('http://localhost:8000/follows', {
            user1: localStorage.getItem('userId'),
            user2: this.state.userId
        }).then(() => {

        });


    };

    followsCheck = () => {


    };

    // Unfollows the venue that we are on


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

	handlePosts = () => {
		this.setState({
			content: "posts"
		});
	};


    handleClose() {
        this.setState({show: false});
    }

    handleClose2() {
        this.setState({show2: false});
    }

    handleShow() {
        this.setState({show: true});
    }

    getUserInfo() {
        // Getting the user id from the url param
        if (this.state.userId > 0) {

          /*
        	axios.get(`http://localhost:8000/users/${this.state.userId}`)
						.then(res => {
							console.log('USER INFO RESULTS:', res);
							this.setState({
									userInfo: res.data.users[0][0],
									userInfoLength: Object.keys(res.data.users[0][0]).length,
							});
						})
						.then(() => {
							this.getBuddy();
							this.getFollowingUsers();
							this.getFollowers();
							this.getFollowingVenues();
							this.setProfilePic();
						});
				}*/

            axios.get(`http://localhost:8000/users/${this.state.userId}`)
                .then(res => {
                    this.setState({
                            userInfo: res.data.users[0][0],
                            userInfoLength: Object.keys(res.data.users[0][0]).length,

                        }
                    )

                });

            this.getBuddy();
            this.getFollowingUsers();
            this.getFollowers();
            this.getFollowingVenues();

        }
    }

    // Sets users profile picture after we grab the users info
    setProfilePic() {

      /*
    	const { photo } = this.state.userInfo;
    	let pic = imgObj[photo];

    	// Case: We do not find a photo from the user's profile info
    	if(pic == 'undefined' || photo === null) {
    		pic = imgObj['snowboard-profile-pic'];
			}

    	// Sets profile pic to pic we found
    	this.setState({pic});
      */
    }


    getBuddy() {
        UserApi.getBuddies(this.state.userId)
            .then(buddies => {
                let buddy = false;
                buddies.forEach((bud) => {
                    if (bud.user_id == localStorage.getItem('userId')) {
                        buddy = true;
                    }
                });
                this.setState({buddy: buddy, buddies: buddies.length});
            });
    }

    getFollowingUsers() {
        UserApi.getFollowingUsers(this.state.userId)
            .then(following => {

                this.setState({
                    following: following.length

                });
            });
    }

    getFollowingVenues() {
        UserApi.getFollowingVenues(this.state.userId)
            .then(venues => {
                this.setState({
                    vFollowing: venues.length

                });
            });
    }

    getFollowers() {
        UserApi.getUsersFollowers(this.state.userId)
            .then(followers => {
                let isFollowing;
                isFollowing = followers.includes(localStorage.getItem('userId'));
                //let isFollowing = followers.map(person => person.user_Id2).filter(id => id === Number(localStorage.getItem('userId'))).length > 0;
                this.setState({

                    isFollowing: isFollowing, followers: followers.length

                });
                //alert("following? "+this.state.isFollowing);
            });

    }

    unFollowUser() {
        axios.delete(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/following`, {
            data: {user_id1: localStorage.getItem('userId'), user_id2: this.state.userId}
        })

    }

    removeBuddy() {
        axios.delete(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/buddy`, {
            data: {user_id1: localStorage.getItem('userId'), user_id2: this.state.userId}
        })

    }

	// We need to conditionally render things based on the user in relation to who is logged in
	render() {
		if (this.state.userInfoLength > 0) {
			const {userInfo, isUserLoggedIn} = this.state;
			const profilePrefix = isUserLoggedIn ? 'My ' : `${this.state.userInfo.username}'s `;

            let pic;
			if (userInfo.photo === "SEAN")
				pic = SEAN;
			else if (userInfo.photo === "DHRUV")
				pic = DHRUV;
			else if (userInfo.photo === "BALIGA")
				pic = BALIGA;
            else if (userInfo.photo === "dogskate")
				pic = dogskate;
			else if (userInfo.photo === "JRIDER")
				pic = JRIDER;
            else if (userInfo.photo === "dogsurf")
                pic = dogsurf;
			else if (userInfo.photo === "FRED")
				pic = FRED;
            else if (userInfo.photo === "dog")
                pic = dog;
			else if (userInfo.photo === "Su1")
				pic = Su1;
			else if (userInfo.photo === "Sn1")
				pic = Sn1;
			else if (userInfo.photo === "Sn4")
				pic = Sn4;
			else if (userInfo.photo === "Ph1")
				pic = Ph1;
			else if (userInfo.photo === "Ph2")
				pic = Ph2;
			else if (userInfo.photo === "SnMb1")
				pic = SnMb1;
			else if (userInfo.photo === "SkyDive1")
				pic = SkyDive1;
			else if (userInfo.photo === "Dr1")
				pic = Dr1;
			else if (userInfo.photo === "Sn2")
				pic = Sn2;
			else if (userInfo.photo === "Sn3")
				pic = Sn3;
			else if (userInfo.photo === "Sn5")
				pic = Sn5;
			else if (userInfo.photo === "Su2")
				pic = Su2;
			else if (userInfo.photo === "Su3")
				pic = SnMb1;
			else if (userInfo.photo === "SkyDive2")
				pic = SkyDive2;
			else if (userInfo.photo === "Dr2")
				pic = Dr2;
			else if (userInfo.photo === "Ph3")
				pic = Ph3;
			else if (userInfo.photo === "MB1")
				pic = MB1;
			else if (userInfo.photo === "MB2")
				pic = MB2;
			else if (userInfo.photo === "MB3")
				pic = MB3;
			else if (userInfo.photo === "MB4")
				pic = MB4;
			else if (userInfo.photo === "Par1")
				pic = Par1;
			else if (userInfo.photo === "Sk1")
				pic = Sk1;
			else if (userInfo.photo === "Sk2")
				pic = Sk2;
			else if (userInfo.photo === "Ska1")
				pic = Ska1;
			else if (userInfo.photo === "Ska2")
				pic = Ska2;
			else if (userInfo.photo === "Ska3")
				pic = Ska3;
			else if (userInfo.photo === "Ska4")
				pic = Ska4;
			else if (userInfo.photo === "SkPh1")
				pic = SkPh1;
			else if (userInfo.photo === "SkPh2")
				pic = SkPh2;


			else
				pic = SnowProfilePic;

			// Make button options for top right corner
			let options;
			let content;
			let followButton;

			if (isUserLoggedIn) {

				options =
					<Row classname="justify-content-end" style={{paddingTop: "15px"}}>


					</Row>
			} else {
				let budCheck = 0;
				let followCheck = 0;

				if (this.state.buddy) {
                    options = <div><Button style={{margin: '5px'}} variant="info" onClick={this.removeBuddy}>Remove
                        Buddy</Button></div>;
                } else if (this.state.followers) {
					options = <div>
                        <Button style={{margin: '5px'}} variant="info" onClick={this.unFollowUser}>Unfollow</Button>
                        <Button style={{margin: '5px'}} variant="info" onClick={this.addBuddy}>Add Buddy</Button>

					</div>;
				} else {

					options =
						<div style={{display: 'flex'}}>
                            <Button style={{margin: '5px'}} variant="info" onClick={this.followUser}>Follow</Button>
                            <Button style={{margin: '5px'}} variant="info" onClick={this.removeBuddy}>Add
								Buddy</Button>
						</div>;


				}
			}
			let createMedia;
			let pagePrefix = (isUserLoggedIn) ? "My " : "Their ";
			if(isUserLoggedIn){
				createMedia = 
				<CreateMediaModal show={this.state.createMedia} handleClose={this.handleCreateMedia}/>
			}

			let createCarve;
			if(isUserLoggedIn){
				createCarve = 
				<Button onClick={this.handleClick} style={{marginLeft: '50px', marginTop: '-7px'}}>Create Carve</Button>
			}

			if (this.state.content === "media") {
				content =
					<Container show={this.state.media} style={{paddingLeft: "15%", width: "150%", paddingTop: "1%"}}>
						<Row style={{paddingLeft: "50%", height: "2%"}}>
							<h2 style={{margin: '3rem'}}>{pagePrefix} Media</h2>
							{createMedia}
							
						</Row>
						{/* Row will hold all of the media and such that we grab from the api */}
						<Container style={{
							display: 'flex',
							flexWrap: 'wrap',
							flexDirection: 'row',
							justifyContent: 'space-between',
							width: "200%"
						}}>
							<Row>
								<MediaGroup type="profile" content_id={this.state.userId}/>
							</Row>
						</Container>
					</Container>;
			} else if (this.state.content === "carves") {
				content =
					<Container style={{paddingTop: "1%", width: "200%"}} show={this.state.carves}>
						<Col>
							<Row style={{paddingLeft: "53%"}}>
								<h2>{pagePrefix} Carves</h2>
								{createCarve}
							</Row>
							<Row>
								<CarveCollector type={"userCreate"} id={this.state.userId}/>
							</Row>
						</Col>
					</Container>;
			} else {
				content =

					<Container style={{marginTop: '20px'}} show={this.state.posts}>
						<h2>Wall Posts</h2>
						<div style={{borderBottom: '1px solid lightgray'}}></div>
						<WallPost profile={this.state.userId}/>
					</Container>;
			}


			return (
				<>
					<CreateCarveModal handleClose={this.handleClick} show={this.state.show1}/>
					<BuddyRequestModal id={this.state.userInfo.user_id} show={this.state.show2}
									   handleClose={this.handleClose2}/>

                    <Row style={{backgroundColor: "gainsboro", height: ".6%", width: "150%"}}>
						<div style={{marginLeft: "3%", marginBottom: '2%', height: ".1%"}}>
							<h1>{profilePrefix} Profile</h1>
						</div>
						<div>
							{options}
						</div>
					</Row>


					{/* This is the row that will hold the profile picture and the information */}
					<Row style={{
						width: "120%",
						backgroundColor: "gainsboro",

					}}>
						<Col style={{width: "100%"}}>
							<ProfileInfoCard style={{width: "100%"}} loggedIn={isUserLoggedIn}
                                             handleShow={this.handleShow}
                                             close={this.handleClose}
                                             show={this.state.show} refresh={this.getUserInfo} user={userInfo}
                                             img={pic} id={isUserLoggedIn} bud={this.state.buddies}
                                             fol={this.state.followers} foll={this.state.following}
                                             vfol={this.state.vFollowing}/>

						</Col>
					</Row>

					<Row style={{
						paddingLeft: "50%",
						paddingBottom: "1%",
						paddingTop: "1%",
						width: "200%",
						backgroundColor: "silver",
						color: "black"
					}}>
						<h3>Content

						</h3>
					</Row>
					<Row style={{paddingLeft: "47%", width: "200%", backgroundColor: "silver", paddingBottom: "1%"}}>

						<Button variant={"dark"} onClick={this.handleCarves}>Carves</Button>


						<Button variant={"dark"} onClick={this.handleMedia}>Media</Button>


						<Button variant={"dark"} onClick={this.handlePosts}>Wall Posts</Button>

					</Row>
					<Row style={{backgroundColor: "lightsteelblue", width: "200%", justifyContent: "center"}}>
						<Col style={{paddingRight: "60%", width: "100%"}}>
							{content}
						</Col>
					</Row>
				</>
			);
		} else {
			return (
				<div>
					<h1 className="fa fa-spinner fa-spin"
						style={{position: 'absolute', left: '50%', top: '50%'}}>Loading! </h1>
				</div>

			);
		}
	}


}

export default ProfilePage;