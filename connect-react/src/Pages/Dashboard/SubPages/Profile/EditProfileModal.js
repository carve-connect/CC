import React, {Component} from 'react';
import Modal from 'react-bootstrap/Modal';
import Button from 'react-bootstrap/Button';
import CustomFormGroup from '../../../../components/CustomFormGroup';
import Form from "react-bootstrap/Form";
import axios from 'axios';

export default class EditProfileModal extends Component {
	constructor(props) {
		super(props);
		this.state = {
			username: props.user.username,
			password: props.user.password,
			email: props.user.email,
			firstName: props.user.first_name,
			lastName: props.user.last_name,
			id: props.user.user_id,
			description: props.user.description,
			profileType: props.user.type,
			snowSports: props.user.snow_sports,
			waterSports: props.user.water_sports,
			landSports: props.user.land_sports,
			airSports: props.user.air_sports
		}
	}

	// Validates form for style purposes and so that we cannot send empty data to api
	validateForm() {
		const { username, sport_type, firstName, lastName, profileType } = this.state;
		return username.length > 0 &&
			firstName.length > 0 &&
			lastName.length > 0 &&
			profileType.length > 0

	}

	// Handles state change for each input in the state object
	handleChange = event => {
		this.setState({
			[event.target.id]: event.target.value
		});
	};


	// Handles state change for each input in the state object
	handleChange1 = event => {
		this.setState({
			snowSports: event.target.value
		});

	};

	// Handles state change for each input in the state object
	handleChange2 = event => {
		this.setState({
			landSports: event.target.value
		});

	};


	// Handles state change for each input in the state object
	handleChange3 = event => {
		this.setState({
			profileType: event.target.value

		});

	};

	handleChange4 = event => {
		this.setState({
			waterSports: event.target.value
		});

	};

	// Handles state change for each input in the state object
	handleChange5 = event => {
		this.setState({
			airSports: event.target.value
		});

	};


	handleSubmit = e => {
		// We go to endpoint here to update users info and send the new info that is stored in state
		e.preventDefault();
		axios.put(`http://localhost:8000/users/${this.state.id}`, {
			username: this.state.username,
			password: this.state.password,
			email: this.state.email,
			first_name: this.state.firstName,
			last_name: this.state.lastName,
			description: this.state.description,
			type: this.state.profileType,
			snow_sports: [this.state.snowSports],
			water_sports: [this.state.waterSports],
			land_sports: [this.state.landSports],
			air_sports: [this.state.airSports]


		})
			.then(res => {
				console.log('Resulting information from API:', res);
				this.props.handleRefresh();
				this.props.handleClose();
			})
			.catch(err => {
				console.log('Error', err);
			})
	};

	render() {
		const {firstName, lastName, username,} = this.state;

		const {snowSports} = this.state;
		const {landSports} = this.state;
		const {profileType} = this.state;
		const {waterSports} = this.state;
		const {airSports} = this.state;

		return (
			<Modal show={this.props.show} onHide={this.props.handleClose}>
				<Modal.Header closeButton>
					<Modal.Title>EditProfile</Modal.Title>
				</Modal.Header>


				<Modal.Body>
					<h3 style={{textAlign: 'center', marginTop: '5%'}}>Sign Up</h3>
					<form onSubmit={this.handleSubmit}>

						<CustomFormGroup value={this.state.username} label="Username" controlId="username"
										 type="text" onChange={this.handleUserChange}/>

						<CustomFormGroup value={this.state.password} label="Password" controlId="password"
										 type="password" onChange={this.handleChange}/>

						<CustomFormGroup value={this.state.email} label="email" controlId="email"
										 type="text" onChange={this.handleChange}/>

						<CustomFormGroup value={this.state.firstName} label="First Name" controlId="firstName"
										 type="text" onChange={this.handleChange}/>

						<CustomFormGroup value={this.state.lastName} label="Last Name" controlId="lastName"
										 type="text" onChange={this.handleChange}/>

						<CustomFormGroup value={this.state.description} label="Description(something about yourself)"
										 controlId="description"
										 type="text" onChange={this.handleChange}/>

						<Form.Group controlId="winter sport type">

							<Form.Label>Winter Sport Type</Form.Label>
							<Form.Control value={snowSports} placeholder="Select a Sport" onChange={this.handleChange1}
										  as="select">
								<option disabled value={-1}>Select an option...</option>
								<option></option>
								<option value='snowboard'>Snowboard</option>
								<option value='ski'>Ski</option>
								<option value='snowmobile'>Snowmobile</option>
								<option value='snowboard,ski'>Snowboard & Ski</option>
								<option value='snowboard,snowmobile'>Snowboard & Snowmobile</option>
								<option value='ski,snowmobile'>Ski & Snowmobile</option>
								<option value='snowboard,ski,snowmobile'>Snowboard & Ski & Snowmobile</option>
							</Form.Control>
						</Form.Group>

						<Form.Group controlId="land sport type">
							<Form.Label>Land Sport Type</Form.Label>
							<Form.Control value={landSports} placeholder="Select a Sport" onChange={this.handleChange2}
										  as="select">
								<option disabled value={-1}>Select an option...</option>
								<option></option>
								<option value='skateboard'>Skateboard</option>
								<option value='BMX'>BMX</option>
								<option value='mountainBiking'>Mountain Biking</option>
								<option value='skateboard,BMX'>Skateboard & BMX</option>
								<option value='skateboard,mountainBiking'>Skateboard & Mountain biking</option>
								<option value='BMX,mountainBiking'> BMX & Mountain Biking</option>
								<option value='skateboard,BMX,mountainBiking'>Skateboard & BMX & Mountain biking
								</option>
							</Form.Control>
						</Form.Group>
						<Form.Group controlId="water sport type">

							<Form.Label>Water Sport Type</Form.Label>
							<Form.Control value={waterSports} placeholder="Select a Sport" onChange={this.handleChange4}
										  as="select">
								<option disabled value={-1}>Select an option...</option>
								<option></option>
								<option value='surf'>Surf</option>
								<option value='waterski'>Water Ski</option>
								<option value='surf,waterski'>Surf & Water Ski</option>
							</Form.Control>
						</Form.Group>

						<Form.Group controlId="air sport type">
							<Form.Label>Air Sport Type</Form.Label>
							<Form.Control value={airSports} placeholder="Select a Sport" onChange={this.handleChange5}
										  as="select">
								<option disabled value={-1}>Select an option...</option>
								<option></option>
								<option value='skyDive'>Skydive</option>
								<option value='hangGlide'>Hang Glide</option>
								<option value='skyDive,hangGlide'>Skydive & Hang Glide</option>
							</Form.Control>
						</Form.Group>


						<Form.Group controlId="profileType">

							<Form.Label>Profile Type (required)</Form.Label>

							<Form.Control value={profileType} placeholder="Select type of profile..."
										  onChange={this.handleChange3} as="select">

								<option disabled value={-1}>Select an option...</option>

								<option></option>

								<option value='athlete'>Athlete</option>
								<option value='proAthlete'>Pro Athlete</option>
								<option value='athlete,proAthlete'>Athlete & Pro Athlete</option>
								<option value='photographer'>Photographer</option>
								<option value='filmographer'>Filmographer</option>
								<option value='droneOperator'>Drone Operator</option>
								<option value='athlete,photographer'>Athlete & Photographer</option>
								<option value='photographer,filmographer'>Photographer & Filmographer</option>
								<option value='photographer,droneOperator'>Photographer & Drone Operator</option>
								<option value='photographer,filmographer,droneOperator'>Photographer & Filmographer &
									Drone Operator
								</option>
								<option value='athlete,photographer'>Athlete & Photographer</option>
								<option value='athlete,photographer,filmographer'>Athlete & Photographer &
									Filmographer
								</option>
								<option value='athlete,photographer,droneOperator'>Athlete & Photographer & Drone
									Operator
								</option>
								<option value='athlete,photographer,filmographer,droneOperator'>Athlete & Photographer &
									Filmographer & Drone Operator
								</option>
								<option value='fan'>Fan</option>


							</Form.Control>

						</Form.Group>
					</form>

				</Modal.Body>


				<Modal.Footer>
					<Button variant="secondary" onClick={this.props.handleClose}>
						Close
					</Button>
					<Button variant="primary" onClick={this.handleSubmit} disabled={!this.validateForm()}>
						Save Changes
					</Button>
				</Modal.Footer>
			</Modal>
		);
	}
}