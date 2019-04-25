import React, {Component} from 'react'
import axios from 'axios'
import Button from "react-bootstrap/Button";
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import SnowProfilePic from '../../../../images/snowboard-profile-pic.jpg';
import CreateCarveModal from "../../../../components/CreateCarveModal";
import BuddyRequestModal from "../../../../components/BuddyRequestModal";
import MediaGroup from "../../../../components/MediaGroup";
import ProfileInfoCard from './ProfileInfoCard';
import Container from 'react-bootstrap/Container';
import CarveCardUserCreate from '../../../../components/CarveCardUserCreate';
import WallPost from '../../../../components/WallPost';


export default class ProfilePage extends Component {
	constructor(props) {
		super(props);
		this.state = {
			userId: props.match.params.number,
			userInfo: {},
			userInfoLength: 0,
            isUserLoggedIn: props.match.params.number = localStorage.getItem('userId'),
			pic : SnowProfilePic,
			check: true,
			show: false,
			show1: false,
			show2: false,
			buddies: 0,
			follows: 0,
			carve: true,
			media: false,
			posts: false,
			content: "carves"
		};

		this.handleShow = this.handleShow.bind(this);
		this.handleClose = this.handleClose.bind(this);
		this.handleClose2 = this.handleClose2.bind(this);
		this.getUserInfo = this.getUserInfo.bind(this);
		this.handleCarves = this.handleCarves.bind(this);
		this.handleMedia = this.handleMedia.bind(this);
		this.handlePosts = this.handlePosts.bind(this);
	}

	// Retrieves info before component is mounted to the DOM
	componentWillMount() {
		this.getUserInfo();
		//this.getUserCounts();
	}

	handleClick = () => {
		this.setState({ show1: !this.state.show1 });
	};

	handleClick2 = () => {
		this.setState({ show2: !this.state.show2 });
	};


	onClick1 = () =>{

		axios.post('http://localhost:8000/follows', {
			user1: this.state.isUserLoggedIn,
			user2: this.state.userId

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

	handlePosts = () => {
		this.setState({
			content: "posts"
		});
	};
	// We need to conditionally render things based on the user in relation to who is logged in
	render() {
		if(this.state.userInfoLength > 0) {
			const {userInfo, isUserLoggedIn} = this.state;
			const profilePrefix = isUserLoggedIn ? 'My ' : `${this.state.userInfo.username}'s `;

			// Make button options for top right corner
			let options;
			let content;
			if (isUserLoggedIn) {
				options =
					<Row classname="justify-content-end" style={{paddingTop: "15px"}}>
						<Button onClick={this.handleClick} style={{marginLeft: '50px', marginTop: '-7px'}}>Create
							Carve</Button>
					</Row>
			} else {
				options =
					<div style={{display: 'flex'}}>
						<Button style={{margin: '5px'}} variant="info" onClick={this.onClick1}>Follow</Button>
						<Button style={{margin: '5px'}} variant="info" onClick={this.handleClick2}>Add Buddy</Button>
						<h3>state: {this.state.isUserLoggedIn}</h3>
					</div>;


			}

			if (this.state.content === "media") {
				content =


					<Container show={this.state.media}>
						<h2 style={{margin: '3rem'}}>My Media</h2>
						{/* Row will hold all of the media and such that we grab from the api */}
						<Container style={{
							display: 'flex',
							flexWrap: 'wrap',
							flexDirection: 'row',
							justifyContent: 'space-between'
						}}>
							<Row>
								<MediaGroup type="profile" content_id={this.state.userId}/>
							</Row>
						</Container>
					</Container>;
			} else if (this.state.content === "carves") {
				content =

					<Container style={{marginLeft: '3rem', width: '100%'}} show={this.state.carves}>
						<Col>
							<Row>
								<h2>Carves created by user</h2>
							</Row>
							<Row>
								<CarveCardUserCreate id={this.state.userId}/>
							</Row>
						</Col>
					</Container>;
			} else {
				content =

					<Container style={{justifyContent: 'center', marginTop: '20px'}} show={this.state.posts}>
						<h2>Wall Posts</h2>
						<div style={{borderBottom: '1px solid lightgray'}}></div>
						<WallPost profile={this.state.userId}/>
					</Container>;
			}

			return (
				<>
					<CreateCarveModal handleClose={this.handleClick} show={this.state.show1}/>
					<BuddyRequestModal id ={this.state.userInfo.user_id} show={this.state.show2} handleClose={this.handleClose2}/>
					<Row style={{marginLeft: "3%", marginTop: '2%', marginBottom: '2%'}}>
						<div style={{ display: 'flex', marginTop: '8px', border: "0px solid slategrey" }}>
							<h2>{profilePrefix} Profile</h2>
						</div>
						<div >
							{options}
						</div>
					</Row>

					
				{/* This is the row that will hold the profile picture and the information */}
				<div>
					<ProfileInfoCard loggedIn={isUserLoggedIn} handleShow={this.handleShow} close={this.handleClose} show={this.state.show} refresh= {this.getUserInfo} user={userInfo} img={this.state.pic} id = {isUserLoggedIn}/>
				</div>
					<Row>
						<div style={{backgroundColor: "grey"}}>

						</div>
					</Row>

					<Row style={{paddingLeft: "40%", paddingBottom: "1%", paddingTop: "1%", border: "5px"}}>
						<h3>Content

						</h3>
					</Row>
					<Row style={{paddingLeft: "40%"}}>

						<Button onClick={this.handleCarves}>Carves</Button>


						<Button onClick={this.handleMedia}>Media</Button>


						<Button onClick={this.handlePosts}>Wall Posts</Button>

					</Row>
					<Row>
						{content}
					</Row>
				</>
			);
		} else {
			return (
				<div>
					<h1 className="fa fa-spinner fa-spin" style={{position: 'absolute', left: '50%', top: '50%'}}>Loading! </h1>
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

	getUserInfo() {
		// Getting the user id from the url param
		if(this.state.userId >0)
			axios.get(`http://localhost:8000/users/${this.state.userId}`)
				.then(res => {
					this.setState({
						userInfo: res.data.users[0][0],
						userInfoLength: Object.keys(res.data.users[0][0]).length,
						//pic: this.state.userInfo.photo
					});


					axios.get(`http://localhost:8000/users/${this.state.userId}/follows/buddies`)
						.then(res => {
							this.setState({
								buddies: res.data[0][0].length,

							});

							//alert(JSON.stringify(res.data.users[0][0]))
						});


					axios.get(`http://localhost:8000/users/${this.state.userId}/follows/followers`)
						.then(res => {
							this.setState({
								follows: res.data[0][0].length

							});
						})

					//alert(JSON.stringify(res.data.users[0][0]))
				});
		else {

			axios.get(`http://localhost:8000/users/${0}`)
				.then(res => {
					this.setState({
						userInfo: res.data.users[0][0],
						userInfoLength: Object.keys(res.data.users[0][0]).length,
						//pic: this.state.userInfo.photo
					});
				})
			//window.location.reload();
		}
	}
	getUserCounts() {
		// Getting the user id from the url param


			//window.location.reload();

	}

}
