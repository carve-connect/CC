import React, {Component} from 'react';
import Modal from 'react-bootstrap/Modal';
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import Container from "react-bootstrap/Container";
import DatePicker from "react-datepicker/es";

import "react-datepicker/dist/react-datepicker.css";
import axios from "axios";

export default class CreateCarveModal extends Component {
	constructor(props) {
		super(props);
		this.state = {
			name: 'Carver\'s Carve',
			sport: {},
			type: {},
			venue: {},
			photo: 0,
			athlete: 1,
			startDate: new Date(),
			description: 'Shred the gnar!'
		};

		this.createCarve = this.createCarve.bind(this);
		this.handleDateChange = this.handleDateChange.bind(this);
	}

	// Handles state change for each input in the state object
	handleChange = event => {
		this.setState({
			[event.target.id]: event.target.value
		});
	};

	// Hits API with body of carve
	createCarve(e) {
		e.preventDefault();

		// Need to format date for db in YYYY-MM-DD
		const { startDate } = this.state;
		const date = `${startDate.getFullYear()}-${startDate.getMonth() + 1}-${startDate.getDate()}`;
		console.log('Date:', date);
//carveName,creatorId,venueId,carveType,athlete,photo,date, sports
		axios.post('http://localhost:8000/carves', {
			carveName: this.state.name,
			creatorId: localStorage.getItem('userId'),
			venueId: this.state.venue,
			carveType: [this.state.type],
			athlete: this.state.athlete,
			photo: this.state.photo,
			sports: [this.state.sport]

		});
		this.props.handleClose();
	}



	// Used for changing the date on the date picker
	handleDateChange(date) {
		this.setState({
			startDate: date
		});
	}

	// Make sure that all fields are filled in
	validateForm() {
		const {name, description, athlete} = this.state;
		return (
				name.length > 0 &&
				description.length > 0 &&
				athlete > 0
		);
	}

	render() {
		return (
			<Modal size="lg"
						 aria-labelledby="contained-modal-title-vcenter"
						 centered
						 show={this.props.show}
						 onHide={this.props.handleClose}
						onSubmit = {this.props.handleClose}>
				<Modal.Header closeButton>
					<Modal.Title id="contained-modal-title-vcenter">New Carve</Modal.Title>
				</Modal.Header>


				<Modal.Body>
					<Container>

						{/* Name of Carve */}
						<Form.Group controlId="name">
							<Form.Label>Name</Form.Label>
							<Form.Control value={this.state.name} onChange={this.handleChange} type="text" placeholder="Enter Name of Carve..." />
							<Form.Text className="text-muted">
								This is the name of your group carve.
							</Form.Text>
						</Form.Group>

						{/* Type of Carve */}
						<Form.Group controlId="type">
							<Form.Label>Carve Type</Form.Label>
							<Form.Control value={this.state.type} placeholder="Select a Sport" onChange={this.handleChange} as="select">
								<option disabled value={-1}>Select an option...</option>
								<option> </option>
								<option value = 'buddy'>Buddy Carve</option>
								<option value = 'open'>Open Carve</option>
							</Form.Control>
						</Form.Group>
						{/* Sport selection */}
						<Form.Group controlId="sport">
							<Form.Label>Sport Type</Form.Label>
							<Form.Control value={this.state.sport} placeholder="Select a Sport" onChange={this.handleChange} as="select">
								<option disabled value={-1}>Select an option...</option>
								<option value = 'snowboard'>Snowboarding</option>
								<option value = 'ski'>Skiing</option>
								<option value = 'snowmobile'>Snowmobile</option>
								<option value = 'snowboard,ski'>Snowboard and Ski</option>
								<option value = 'surf'>Surfing</option>
								<option value = 'waterski'>Water Ski</option>
								<option value = 'skateboard'>Skateboarding</option>
								<option value = 'BMX'>BMX</option>
								<option value = 'mountainBike'>Mountain Bike</option>
								<option value = 'skyDive'>Sky Dive</option>
								<option value = 'hangGlide'>Hang Glide</option>
							</Form.Control>
						</Form.Group>

						{/* Location */}
						<Form.Group controlId="venue">
							<Form.Label>Venue</Form.Label>
							<Form.Control value={this.state.venue} placeholder="Select Location..."  onChange={this.handleChange} as="select" >
								<option disabled value={-1}>Select an option...</option>
								<option value = '0'> </option>
								<option value='1'>Catamount: Hillsdale, NY (Mountain)</option>
								<option value='2'>Bristol Mt: Canandaigua, NY (Mountain)</option>
								<option value='3'>Holiday Valley: Ellicotville, NY (Mountain)</option>
								<option value='4'>Whiteface Mt: Wilmington, NY (Mountain)</option>
								<option value='5'>Belleayre Mt: Highmount, NY (Mountain)</option>
								<option value='6'>Windham Mt: Windham, NY (Mountain)</option>
								<option value='7'>Hunter Mt: Hunter, NY (Mountain)</option>
								<option value='8'>Gore Mt: North Creek, NY (Mountain)</option>
								<option value='9'>Mt Peter (Mountain)</option>
								<option value='10'>Jack Frost (Mountain)</option>
								<option value='11'>Camelback Mt (Mountain)</option>
								<option value='12'>Campgaw (Mountain)</option>
								<option value='13'>Mt Creek Resort (Mountain)</option>
								<option value='14'>Mt Snow (Mountain)</option>
								<option value='15'>Killington Resort (Mountain)</option>
								<option value='16'>Shawnee Peak (Mountain)</option>
								<option value='17'>Sundance Resort (Mountain)</option>
								<option value='18'>Powder Mt (Mountain)</option>
								<option value='19'>Keystone (Mountain)</option>
								<option value='20'>Aspen/Snowmass (Mountain)</option>
								<option value='21'>Spring Lake Beach (Beach)</option>
								<option value='22'>Belmar Beach (Beach)</option>
								<option value='23'>Avon Beach (Beach)</option>
								<option value='24'>Manasquan Beach (Beach)</option>
								<option value='25'>Manasquan Inlet (Beach)</option>
								<option value='26'>Seagirt Beach (Beach)</option>
								<option value='27'>Asburry Beach (Beach)</option>
								<option value='28'>Waikiki Beach (Beach)</option>
								<option value='29'>Sunset Beach (Beach)</option>
								<option value='30'>Waimea Bay (Beach)</option>
								<option value='31'>Ehukai Beach (Beach)</option>
								<option value='32'>Haleiwa Alli Beach (Beach)</option>
								<option value='33'>Haleiwa Beach (Beach)</option>
								<option value='34'>Chun's Reef (Beach)</option>
								<option value='35'>Ke Waena Beach (Beach)</option>
								<option value='36'>Turtle Bay (Beach)</option>
								<option value='37'>Black's Beach (Beach)</option>
								<option value='38'>Ocean City Beach (Beach)</option>
								<option value='39'>Windansea Beach (Beach)</option>
								<option value='40'>Cocoa Beach (Beach)</option>
								<option value='41'>Lake Buena Vista (Lake)</option>
								<option value='42'>Lake Carnegie (Lake)</option>
								<option value='43'>Greenwood Lake (Lake)</option>
								<option value='44'>Lake Mowhawk (Lake)</option>
								<option value='45'>Union Lake (Lake)</option>
								<option value='46'>Burnside Skate Park (Skate park)</option>
								<option value='47'>Skate Lab (Skate park)</option>
								<option value='48'>Denver Skate Park (Skate park)</option>
								<option value='49'>David Armstrong Extreme Park (Skate park)</option>
								<option value='50'>Lincoln City Skare Park (Skate park)</option>
								<option value='51'>Ray's MTB Park (BMX course)</option>
								<option value='52'>Chula Vista (BMX course)</option>
								<option value='53'>The Unit (BMX course)</option>
								<option value='54'>Mesh (BMX course)</option>
								<option value='55'>The Flow (BMX course)</option>
								<option value='56'>Pensylvania Skidiving Center (skydiving airfield)</option>
								<option value='57'>Sky Dive Key West (skydiving airfield)</option>
								<option value='58'>Alaska SkyDive Center (skydiving airfield)</option>
								<option value='59'>Skydive Hawaii (skydiving airfield)</option>
								<option value='60'>Skydive Zion (skydiving airfield))</option>

							</Form.Control>
						</Form.Group>

						{/* Date Picker */}
						<Form.Group>
							<Form.Label>Date of Event</Form.Label>
							<div>
								<DatePicker	selected={this.state.startDate} onChange={this.handleDateChange} />
							</div>
							<Form.Text className="text-muted">Pick a date for your carve.</Form.Text>
						</Form.Group>

						{/* Description */}
						<Form.Group controlId="description">
							<Form.Label>Description</Form.Label>
							<Form.Control value={this.state.description} onChange={this.handleChange} as="textarea" rows="2" placeholder="Enter description here..." />
						</Form.Group>

						<Form.Group controlId="photo">
							<Form.Label>PhotoSlots</Form.Label>
							<Form.Control value={this.state.photo} onChange={this.handleChange} as="textarea" rows="2"
										  placeholder="Enter number here..."/>
						</Form.Group>

						<Form.Group controlId="athlete">
							<Form.Label>AthleteSlots</Form.Label>
							<Form.Control value={this.state.athlete} onChange={this.handleChange} as="textarea" rows="2"
										  placeholder="Enter number here..."/>
						</Form.Group>

						{/* Horizontal rule */}
						<hr/>

					</Container>
				</Modal.Body>


				<Modal.Footer>
					<Button variant="secondary" onClick={this.props.handleClose}>
						Close
					</Button>
					<Button type = "submit" variant="primary" disabled={!this.validateForm()} onClick={this.createCarve}>
						Create
					</Button>
				</Modal.Footer>
			</Modal>
		);
	}
}