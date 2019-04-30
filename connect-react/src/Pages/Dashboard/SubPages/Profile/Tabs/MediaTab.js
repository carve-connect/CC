import React, { Component } from 'react';
import Row from "react-bootstrap/Row";
import Container from "react-bootstrap/Container";

import MediaGroup from "components/MediaGroup";
import Button from "react-bootstrap/Button";
import CreateMediaModal from "components/CreateMediaModal";

export default class MediaTab extends Component {
	constructor(props) {
		super(props);
		this.state = {
			showModal: false
		}

		this.showModal = this.showModal.bind(this);
	}

	showModal() {
		this.setState({showModal: !this.state.showModal});
	}

	render() {
		return (
			<div>
				<CreateMediaModal show={this.state.showModal} handleClose={this.showModal}/>
				<Container show={this.state.media} style={{width: "150%", paddingTop: "0%"}}>
					<Row style={{padding: "2% 0%", height: "2%"}}>
						<h2 style={{padding: '0% 3%', width: '80%'}}>My Media</h2>
						<Button onClick={this.showModal} style={{height: "30%"}} size="sm" variant="info">Add Media</Button>
					</Row>
					{/* Row will hold all of the media and such that we grab from the api */}
					<Container style={{display: 'flex', flexWrap: 'wrap', flexDirection: 'row', justifyContent: 'space-between', width: "200%"}}>
						<Row>
							<MediaGroup type="profile" content_id={this.props.user}/>
						</Row>
					</Container>
				</Container>
			</div>
		);
	}
}