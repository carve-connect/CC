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
import UserApi from "../../../../api/UserApi";
import MediaTab from "./Tabs/MediaTab";
import CarveTab from "./Tabs/CarveTab";
import WallTab from "./Tabs/WallTab";

const myUserId = localStorage.getItem('userId');


export default class ProfilePage extends Component {
	constructor(props) {
		super(props);
		this.state = {
			userId: props.match.params.number,
			userInfo: {},
			userInfoLength: 0,
			isUserLoggedIn: props.match.params.number === myUserId,
			check: true,
			show: false,
			show1: false,
			show2: false,
			buddies: 0,
			followers: 0,
			tabsKey: 'carves'
		};

		this.handleShow = this.handleShow.bind(this);
		this.handleClose = this.handleClose.bind(this);
		this.handleClose2 = this.handleClose2.bind(this);
		this.getUserInfo = this.getUserInfo.bind(this);
	}

	// Retrieves info before component is mounted to the DOM
	componentWillMount() {
		this.getUserInfo();
	}


	handleClick = () => {
		this.setState({ show1: !this.state.show1 });
	};

	handleClick2 = () => {
		this.setState({ show2: !this.state.show2 });
	};


	onClick1 = () =>{
		alert("Follow " + this.state.userId + " by " + localStorage.getItem('userId'));
		axios.post('http://localhost:8000/follows', {
            user1: localStorage.getItem('userId'),
			user2: this.state.userId

		});
	};


	// We need to conditionally render things based on the user in relation to who is logged in
	render() {
		// Render user info if we have grabbed it from the api
		if(this.state.userInfoLength > 0) {
			const { userInfo, isUserLoggedIn } = this.state;
			const profilePrefix = isUserLoggedIn ? 'My ' : `${this.state.userInfo.username}'s `;
			let pic = imgObj[userInfo.photo];
			let options;

			// Image logic
			if(pic == 'undefined') {
				pic = imgObj['snowProfilePic'];
			}

			// If the user is logged in, make the options according to follow and buddy status
			if (isUserLoggedIn) {
				options =	<Row classname="justify-content-end" style={{paddingTop: "15px"}}></Row>
			} else {
				// We need to check if we follow them or are we buddies with them



				let budCheck = 0;
				let followCheck = 0;

				// for (var c = 0; c < this.state.buddies.length; c++) {
				// 	if (this.state.buddies[0][c].user_Id2 === localStorage.getItem('userId'))
				// 		budCheck = 1;
				// }
				// if (budCheck === 1) {
				// 	options = <div></div>;
				// } else if (followCheck === 1) {
				// 	options = <div>
				// 		<Button style={{margin: '5px'}} variant="info" onClick={this.handleClick2}>Add Buddy</Button>
				// 	</div>;
				// } else {
				// 	options =
				// 		<div style={{display: 'flex'}}>
				// 			<Button style={{margin: '5px'}} variant="info" onClick={this.onClick1}>Follow</Button>
				// 			<Button style={{margin: '5px'}} variant="info" onClick={this.handleClick2}>Add Buddy</Button>
				// 		</div>;
				// }
			}


			// What gets shown to the screen
			return (
				<>
					<BuddyRequestModal id={this.state.userInfo.user_id} show={this.state.show2} handleClose={this.handleClose2}/>

					<Row style={{backgroundColor: "gainsboro", height: "1%", width: "200%"}}>
						<div style={{marginLeft: "3%", marginTop: '2%', marginBottom: '2%'}}>
							<h1>{profilePrefix} Profile</h1>
						</div>
						<div>{options}</div>
					</Row>

					
					{/* This is the row that will hold the profile picture and the information */}
					<Row style={{backgroundColor: "gainsboro", padding: '1% 0 1% 2%', justify: 'flex-start',}}>
						<ProfileInfoCard loggedIn={isUserLoggedIn} handleShow={this.handleShow}
										 close={this.handleClose}
										 show={this.state.show} refresh={this.getUserInfo} user={userInfo}
										 img={pic} id={isUserLoggedIn} bud={this.state.buddies.length}
										 fol={this.state.followers.length}/>
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

	handleClose() {
		this.setState({ show: false });
	}
	handleClose2() {
		this.setState({ show2: false });
	}
	handleShow() {
		this.setState({ show: true });
	}


	// Retrieves user information
	getUserInfo() {
		// User info
		UserApi.getUserInfo(this.state.userId).then(userInfo => {
			console.log('User info:', userInfo);
			this.setState({userInfo, userInfoLength: Object.keys(userInfo).length});
		});

		// Gets buddies of user on profile so we can grab the count
		UserApi.getUsersBuddies(this.state.userId)
			.then(buddies => {
				console.log('Buddies:', buddies);
				console.log('My user id is:', myUserId);
				const isBuddy = buddies.map(buddy => buddy.user_id).filter(id => id == myUserId).length > 0;
				console.log('new list of buddies', isBuddy);
				this.setState({buddies});
			})

		// Get people that the user follows
		UserApi.getFollowingUsers(this.state.userId)
			.then(following => {
				console.log('Follows', following);
			});

		// Gets the people who follow the given user
		UserApi.getUsersFollowers(this.state.userId)
			.then(users => {
				this.setState({ followers: users });
			})
	}

}
