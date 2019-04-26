import React, {Component} from 'react'
import CarveCardUserAttend from "../../../../components/CarveCardUserAttend";
import CreateCarveModal from "../../../../components/CreateCarveModal";
import Button from "react-bootstrap/Button";
import Container from 'react-bootstrap/Container';
import MediaGroup from "../../../../components/MediaGroup";
import Row from "react-bootstrap/Row";

export default class FeedPage extends Component {
	constructor(props) {
		super(props);
		this.state = {
			show: false,
			show2: false,
			content: "carveAttend",
			completed: true,
			pending: true
		};

		this.handleBuddies = this.handleBuddies.bind(this);
		this.handleUserAttend = this.handleUserAttend.bind(this);
		this.handleVenuesFollowed = this.handleVenuesFollowed.bind(this);
		this.handleUsersFollowed = this.handleUsersFollowed.bind(this);
		this.handleBuddiesMedia = this.handleBuddiesMedia.bind(this);
		this.handleVenuesFollowedMedia = this.handleVenuesFollowedMedia.bind(this);
		this.handleUsersFollowedMedia = this.handleUsersFollowedMedia.bind(this);

	}

	handleClick = () => {
		this.setState({ show: !this.state.show });
	};

	handleUserAttend = () => {
		this.setState({content: "carveAttend"});
	};

	handleBuddies = () => {
		this.setState({content: "buddiesCarves"});
	};

	handleVenuesFollowed = () => {
		this.setState({content: "venuesFollowedCarves"});
	};

	handleUsersFollowed = () => {
		this.setState({content: "usersFollowedCarves"});
	};

	handleBuddiesMedia = () => {
		this.setState({content: "buddiesMedia"});
	};

	handleVenuesFollowedMedia = () => {
		this.setState({content: "venuesFollowedMedia"});
	};

	handleUsersFollowedMedia = () => {
		this.setState({content: "usersFollowedMedia"});
	};

	render() {
		let content;
		/*

		<CarveCardBuddies id={localStorage.getItem('userID')}/>

		<CarveCardVenuesFollowed id={localStorage.getItem('userID')} />

		<CarveCardUserFollowed id={localStorage.getItem('userID')}/>

		 */

		if (this.state.content === "carveAttend") {
			content =
				<Container style={{}}>
					<h2>Carves User is/has attending/ed </h2>
					<Row>
						<CarveCardUserAttend>Carves:</CarveCardUserAttend>
					</Row>
				</Container>;
		} else if (this.state.content === "buddiesCarves") {
			content =
				<Container style={{}}>
					<h2>Buddies' Carves </h2>
					<Row>

					</Row>
				</Container>;
		} else if (this.state.content === "venuesFollowedCarves") {
			content =
				<Container style={{}}>
					<h2>Followed Venues' Carves </h2>
					<Row>

					</Row>
				</Container>;
		} else if (this.state.content === "usersFollowedCarves") {
			content =
				<Container style={{}}>
					<h2>Followed Users' Carves </h2>
					<Row>

					</Row>
				</Container>;
		} else if (this.state.content === "buddiesMedia") {
			content =
				<Container style={{}}>
					<h2>Buddies' Media </h2>
					<Row>
						<MediaGroup type="profile" content_id={1}/>
					</Row>
				</Container>;
		} else if (this.state.content === "venuesFollowedMedia") {
			content =
				<Container style={{}}>
					<h2>Followed Venues' Media </h2>
					<Row>
						<MediaGroup type="venue" content_id={1}/>
					</Row>
				</Container>;
		} else if (this.state.content === "usersFollowedMedia") {
			content =
				<Container style={{}}>
					<h2>Followed Users' Media </h2>
					<Row>
						<MediaGroup type="profile" content_id={1}/>
					</Row>
				</Container>;
		} else {
			content =
				<h1 className="fa fa-spinner fa-spin"
					style={{position: 'absolute', left: '50%', top: '50%'}}>Loading! </h1>
		}

		return (
			<>
				<CreateCarveModal handleClose={this.handleClick} show={this.state.show}/>
				<Row>
					<h1>User's Feed</h1>
					<Button onClick={this.handleClick} style={{ margin: '5px' }}>Create Carve</Button>
				</Row>
				<Row>
					<Button onClick={this.handleUserAttend}>Carves Attended</Button>
					<Button onClick={this.handleBuddies}>Buddies' Carves</Button>
					<Button onClick={this.handleVenuesFollowed}>Venues' Followed Carves</Button>
					<Button onClick={this.handleUsersFollowed}>Users' Followed Carves</Button>
					<Button onClick={this.handleBuddiesMedia}>Buddies' Media</Button>
					<Button onClick={this.handleVenuesFollowedMedia}>Venues' Followed Media</Button>
					<Button onClick={this.handleUsersFollowedMedia}>Users' Followed Media</Button>
				</Row>
				<Row>
					{content}
				</Row>







				</>
		);
	}
}
