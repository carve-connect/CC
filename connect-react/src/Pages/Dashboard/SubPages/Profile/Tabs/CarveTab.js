import React, { Component } from 'react';
import Col from "react-bootstrap/Col";
import Row from "react-bootstrap/Row";
import Button from "react-bootstrap/Button";
import CarveCardUserCreate from "../../../../../components/CarveCardUserCreate";
import Container from "react-bootstrap/Container";
import CreateCarveModal from "../../../../../components/CreateCarveModal";

export default class CarveTab extends Component {
	constructor(props) {
		super(props);
		this.state = {
			showModal: false
		}

		this.handleModal = this.handleModal.bind(this);
	}

	handleModal() {
		this.setState({showModal: !this.state.showModal});
	}

	render() {
		return (
			<div>
				<CreateCarveModal handleClose={this.handleModal} show={this.state.showModal}/>
				<Container style={{paddingTop: "1%", width: "200%"}}>
					<Col>
						<Row style={{paddingLeft: "53%"}}>
							<h2>Carves created by user</h2>
							<Button onClick={this.handleModal} style={{marginLeft: '50px', marginTop: '-7px'}}>Create	Carve</Button>
						</Row>
						<Row>
							<CarveCardUserCreate id={this.props.user}/>
						</Row>
					</Col>
				</Container>
			</div>
		);
	}
}