import React, {Component} from 'react'
import axios from 'axios'
import Button from "react-bootstrap/Button";
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Tabs from 'react-bootstrap/Tabs';
import Tab from 'react-bootstrap/Tab';

import BuddyRequestModal from "../../../../components/BuddyRequestModal";
import ProfileInfoCard from './ProfileInfoCard';

import { imgObj } from "images/images";
import UserApi from "api/UserApi";
import FollowsApi from "api/FollowsApi";
import MediaTab from "./Tabs/MediaTab";
import CarveTab from "./Tabs/CarveTab";
import WallTab from "./Tabs/WallTab";

const myUserId = Number(localStorage.getItem('userId'));

export default class ProfilePage extends Component {
	constructor(props) {
		super(props);
		this.state = {
			userId: props.match.params.number,
			userInfo: {},
			userInfoLength: 0,
			isUserLoggedIn: Number(props.match.params.number) === myUserId,
			profileShow: false,
			showBuddyModal: false,
			numBuddies: 0,
			numFollowers: 0,
			isBuddy: false,
			isFollowing: false,
			tabsKey: 'carves'
		};

		this.handleProfileModal = this.handleProfileModal.bind(this);
		this.getUserInfo = this.getUserInfo.bind(this);
		this.handleBuddyModal = this.handleBuddyModal.bind(this);
		this.unfollowUser = this.unfollowUser.bind(this);
		this.followUser = this.followUser.bind(this);
	}

	// ----------------------------- METHODS ---------------------------------- //


	// Retrieves info before component is mounted to the DOM
	componentWillMount() {
		this.getUserInfo();
	}

	handleBuddyModal() {
		this.setState({ showBuddyModal: !this.state.showBuddyModal });
	}

	handleProfileModal() {
		this.setState({ showProfile: !this.state.showProfile });
	}

	// Follows user we are looking at
	followUser() {
		console.log("Follow " + this.state.userId + " by " + localStorage.getItem('userId'));
		axios.post('http://localhost:8000/follows', {
			user1: myUserId,
			user2: this.state.userId
		});
	};

	// Unfollows the user that we are currently looking at
	unfollowUser() {
		FollowsApi.deleteFollow(myUserId, this.state.userId)
			.then(msg => {
				console.log('Message returned:', msg);
			})
			.catch(err => {
				console.log('Error:', err)
			})
	}

	getUserInfo() {
		// User info of persons profile
		UserApi.getUserInfo(this.state.userId).then(userInfo => {
			console.log('User info:', userInfo);
			this.setState({userInfo, userInfoLength: Object.keys(userInfo).length});
		});

		// Gets buddies of user on profile so we can grab the count
		UserApi.getUsersBuddies(this.state.userId)
			.then(buddies => {
				const isBuddy = buddies.map(buddy => buddy.user_id).filter(id => id === myUserId).length > 0;
				console.log('Are we buddies with this person? ', isBuddy);
				this.setState({ numBuddies: buddies.length, isBuddy });
			});


		// Gets the people who follow the person on the profile page so we know if person logged in follows them
		UserApi.getUsersFollowers(this.state.userId)
			.then(users => {
				this.setState({ numFollowers: users.length });
			});

		/* ----- Lets see if the person logged in is following this profile ----- */

		// Retrieves the number of followers the user has (Person on profile page)
		UserApi.getFollowingUsers(myUserId)
			.then(people => {
				// Map over the users ids that we follow, then if the number on the page is in the list, we are following them!
				let isFollowing = people.map(person => person.user_Id2).filter(id => id === Number(this.state.userId)).length > 0;
				this.setState({ isFollowing: isFollowing });
				console.log('I am following this person', isFollowing);
			});

	}


	// ----------------------------- RENDER ---------------------------------- //

	// We need to conditionally render things based on the user in relation to who is logged in
	render() {
		// Render user info if we have grabbed it from the api
		if(this.state.userInfoLength > 0) {
			const { userInfo, isUserLoggedIn, isFollowing, isBuddy } = this.state;
			const profilePrefix = isUserLoggedIn ? 'My ' : `${this.state.userInfo.username}'s `;
			let pic = imgObj[userInfo.photo];
			let followOptions;
			let buddyOptions;

			// Image logic
			if(pic == 'undefined' || userInfo.photo === null) {
				pic = imgObj['snowProfilePic'];
			}

			if (!isUserLoggedIn) {
				// We need to check if we follow them or are we buddies with them
				buddyOptions = (isBuddy) ?
					<Button>Remove buddy</Button> :
					<Button onClick={this.handleBuddyModal}>Add Buddy</Button>;

				followOptions = (isFollowing) ?
					<Button onClick={this.unfollowUser}>Unfollow</Button> :
					<Button onClick={this.followUser}>Follow</Button>
			}


			// What gets shown to the screen
			return (
				<>
					<BuddyRequestModal id={this.state.userInfo.user_id} show={this.state.showBuddyModal} handleClose={this.handleBuddyModal}/>

					{/* Header on the page that announces that we are on Profile Page */}
					<Row style={{backgroundColor: "gainsboro", height: "1%", width: "100%"}}>
						<div style={{paddingLeft: "3%", paddingTop: '1%', paddingBottom: '2%', display: 'flex', width: '100%'}}>
							<div style={{ width: '75%' }}>
								<h1>{profilePrefix} Profile</h1>
							</div>
							<div style={{ flex: 1, display: 'flex' }}>
								<div style={{ width: '40%' }}>{followOptions}</div>
								<div>{buddyOptions}</div>
							</div>
						</div>
					</Row>

					
					{/* This is the row that will hold the profile picture and the information */}
					<Row style={{backgroundColor: "gainsboro", padding: '1% 0 1% 2%', justify: 'flex-start',}}>
						<ProfileInfoCard loggedIn={isUserLoggedIn} handleShow={this.handleProfileModal}
										 close={this.handleProfileModal}
										 show={this.state.profileShow} refresh={this.getUserInfo} user={userInfo}
										 img={pic} id={isUserLoggedIn} bud={this.state.numBuddies}
										 fol={this.state.numFollowers}/>
						<Col style={{backgroundColor: "gainsboro", width: "75%", marginLeft: '25px'}}></Col>
					</Row>


					{/* Tabs */}
					<div>
						<hr/>
						<Row style={{paddingLeft: "5%", width: "200%", paddingBottom: "1%"}}>
							<div>
								<Tabs	id="controlled-tab-content"	activeKey={this.state.tabsKey} onSelect={tabsKey => this.setState({ tabsKey })}>
									<Tab eventKey="carves" title="Carves">
										<CarveTab user={this.state.userId} />
									</Tab>
									<Tab eventKey="media" title="Media">
										<MediaTab user={this.state.userId} />
									</Tab>
									<Tab eventKey="wall" title="Wall Posts">
										<WallTab user={this.state.userId} />
									</Tab>
								</Tabs>
							</div>
						</Row>
					</div>
				</>
			);
		} else {
			return (
				<div>
					<h1 className="fa fa-spinner fa-spin" style={{position: 'absolute', left: '50%', top: '50%'}}>Loading!</h1>
				</div>
			);
		}
	}
}
