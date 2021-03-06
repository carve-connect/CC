import React, {Component} from 'react'
import CreateCarveModal from "../../../../components/CarveComponents/CreateCarveModal";
import Button from "react-bootstrap/Button";

import Container from 'react-bootstrap/Container';
import MediaGroupFeed from "../../../../components/MediaComponents/MediaGroupFeed";
import Row from "react-bootstrap/Row";
import ToggleButtonGroup from 'react-bootstrap/ToggleButtonGroup';
import ToggleButton from 'react-bootstrap/ToggleButton';
import CarveCollector from "../../../../components/CarvesComponents/CarveCollector";


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



	}

	handleClick = () => {
		this.setState({ show: !this.state.show });
	};

	handleUserAttend = () => {
		this.setState({content: "carveAttend"});

	};

	handleBuddies = () => {
		this.setState({content: "buddiesMadeCarves"});

	};

	handleBuddiesAt = () => {
		this.setState({content: "buddiesAttendedCarves"});

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
		let content = <div></div>;
		/*



		<CarveCardVenuesFollowed.js id={localStorage.getItem('userID')} />



		 */

		if (this.state.content === "carveAttend") {
			content =
				<Container style={{}}>
					<h2>Carves where user is an attendee </h2>
					<Row>
						<CarveCollector type={"userAttend"}/>
					</Row>
				</Container>;
		} else if (this.state.content === "buddiesAttendedCarves") {
			content =
				<Container style={{}}>
					<h2>Buddies' Attended Carves </h2>
					<Row>
						<CarveCollector type={"buddyAttend"}/>
					</Row>
				</Container>;
		} else if (this.state.content === "buddiesMadeCarves") {
			content =
				<Container style={{}}>
					<h2>Buddies' Carves </h2>
					<Row>
						<CarveCollector type={"buddy"}/>
					</Row>
				</Container>;
		} else if (this.state.content === "venuesFollowedCarves") {
			content =
				<Container style={{}}>
					<h2>Followed Venues' Carves </h2>
					<Row>
						<CarveCollector type={"venueFollow"}/>
					</Row>
				</Container>;
		} else if (this.state.content === "usersFollowedCarves") {
			content =
				<Container style={{}}>
					<h2>Followed Users' Carves </h2>
					<Row>
						<div>
							<CarveCollector type={"userFollow"}/>
						</div>
					</Row>
				</Container>;
		} else if (this.state.content === "buddiesMedia") {
			content =
				<Container style={{}}>
					<h2>Buddies' Media </h2>
					<Row>
						<MediaGroupFeed med="buddy" type="profile" content_id={localStorage.getItem('userId')}/>
					</Row>
				</Container>;
		} else if (this.state.content === "venuesFollowedMedia") {
			content =
				<Container style={{}}>
					<h2>Followed Venues' Media </h2>
					<Row>
						<MediaGroupFeed med="venue" type="venue" content_id={localStorage.getItem('userId')}/>
					</Row>
				</Container>;
		} else if (this.state.content === "usersFollowedMedia") {
			content =
				<Container style={{}}>
					<h2>Followed Users' Media </h2>
					<Row>
						<MediaGroupFeed med="user" type="profile" content_id={localStorage.getItem('userId')}/>
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
                <Row style={{backgroundColor: "cadetblue", paddingLeft: "10%", width: "200%"}}>

					<h1>User's Feed</h1>
					<Button onClick={this.handleClick} variant="success" style={{margin: '5px',}}>Create Carve</Button>
				</Row>
                <Row style={{backgroundColor: "grey", paddingLeft: "35%", width: "200%"}}>
					<ToggleButtonGroup
						name={"Carves"}

					>
						<ToggleButton variant="secondary" onClick={this.handleUserAttend}>Carves Attended</ToggleButton>
						<ToggleButton variant="secondary" onClick={this.handleBuddies}>Buddies' Carves</ToggleButton>
						<ToggleButton variant="secondary" onClick={this.handleBuddiesAt}>Buddies' Attended
							Carves</ToggleButton>
						<ToggleButton variant="secondary" onClick={this.handleVenuesFollowed}>Venues' Followed
							Carves</ToggleButton>
						<ToggleButton variant="secondary" onClick={this.handleUsersFollowed}>Users' Followed
							Carves</ToggleButton>
					</ToggleButtonGroup>

				</Row>
                <Row style={{backgroundColor: "darkgrey", paddingLeft: "40%", width: "200%"}}>
					<ToggleButtonGroup name={"media"}

					>
						<ToggleButton variant="dark" onClick={this.handleBuddiesMedia}>Buddies' Media</ToggleButton>
						<ToggleButton variant="dark" onClick={this.handleVenuesFollowedMedia}>Venues' Followed
							Media</ToggleButton>
						<ToggleButton variant="dark" onClick={this.handleUsersFollowedMedia}>Users' Followed
							Media</ToggleButton>
					</ToggleButtonGroup>
				</Row>
                <Row style={{backgroundColor: "gainsboro"}}>
					{content}
				</Row>
				</>

		);
	}
}
