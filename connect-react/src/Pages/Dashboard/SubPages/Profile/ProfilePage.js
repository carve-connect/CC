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
import CarveCardUserCreate from '../../../../components/CarveComponents/CarveCardUserCreate';
import WallPost from '../../../../components/WallComponents/WallPost';
import CreateMediaModal from "../../../../components/MediaComponents/CreateMediaModal";
//photos
import dogskate from '../../../../images/dogskate.jpeg';
import dogphoto from '../../../../images/dogphoto.jpeg';
import dogsurf from '../../../../images/dogsurf.jpeg';
import dog from '../../../../images/dog.jpg';
import big_wave from "../../../../images/big_wave.jpeg";
import SnowProfilePic from '../../../../images/snowboard-profile-pic.jpg';
import helmPhoto from '../../../../images/helmPhoto.jpeg';
import upsidedown_snow from '../../../../images/upsidedown_snow.jpeg';
import photosnow from '../../../../images/photosnow.jpeg';
import droneguy from '../../../../images/drone guy.jpeg'
import UserApi from "../../../../api/UserApi";


export default class ProfilePage extends Component {
	constructor(props) {
		super(props);
		this.state = {
			userId: props.match.params.number,
			userInfo: {},
			userInfoLength: 0,
			isUserLoggedIn: props.match.params.number === localStorage.getItem('userId'),
			pic: SnowProfilePic,
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
		this.getUserInfo();
		//this.getUserCounts();
		//this.setProfilePic();
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

    setProfilePic() {
        const {userInfo} = this.state;
        let pic;
        if (userInfo.photo === "dogphoto")
            pic = dogphoto;
        else if (userInfo.photo === "big_wave")
            pic = big_wave;
        else if (userInfo.photo === "dogskate")
            pic = dogskate;
        else if (userInfo.photo === "dogsurf")
            pic = dogsurf;
        else if (userInfo.photo === "upsidedown_snow")
            pic = upsidedown_snow;
        else if (userInfo.photo === "dog")
            pic = dog;
        else if (userInfo.photo === "helmPhoto")
            pic = helmPhoto;
        else if (userInfo.photo === "photosnow")
            pic = photosnow;
        else if (userInfo.photo === "droneguy")
            pic = droneguy;

        else
            pic = SnowProfilePic;

        this.setState({
            pic: pic
        })
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

			if (this.state.content === "media") {
				content =


					<Container show={this.state.media} style={{paddingLeft: "15%", width: "150%", paddingTop: "1%"}}>
						<Row style={{paddingLeft: "50%", height: "2%"}}>
							<h2 style={{margin: '3rem'}}>My Media</h2>
							<CreateMediaModal show={this.state.createMedia} handleClose={this.handleCreateMedia}/>
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
								<h2>Carves created by user</h2>
								<Button onClick={this.handleClick} style={{marginLeft: '50px', marginTop: '-7px'}}>Create
									Carve</Button>
							</Row>
							<Row>
								<CarveCardUserCreate id={this.state.userId}/>
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

					<Row style={{backgroundColor: "gainsboro", height: "1%", width: "200%"}}>
                        <div style={{marginLeft: "3%", marginBottom: '2%'}}>
							<h1>{profilePrefix} Profile</h1>
						</div>
						<div>
							{options}
						</div>
					</Row>


					{/* This is the row that will hold the profile picture and the information */}
					<Row style={{
						width: "200%",
						backgroundColor: "gainsboro",
						paddingTop: "1%",
						justify: 'flex-start',
						paddingLeft: "2%"
					}}>

						<ProfileInfoCard style={{}} loggedIn={isUserLoggedIn} handleShow={this.handleShow}
                                         close={this.handleClose}
                                         show={this.state.show} refresh={this.getUserInfo} user={userInfo}
                                         img={this.state.pic} id={isUserLoggedIn} bud={this.state.buddies}
                                         fol={this.state.followers} foll={this.state.following}
                                         vfol={this.state.vFollowing}/>

						<Col style={{backgroundColor: "gainsboro", width: "75%"}}>
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