import React, {Component} from 'react';
import {Button, Form} from "react-bootstrap";
import CustomFormGroup from "../../components/CustomFormGroup";
import Redirect from "react-router/Redirect";
import axios from "axios";
import hangGlide from '../../images/SkRs8.jpeg'

export default class SignUpPage extends Component {
	constructor(props) {
		super(props);
		this.state = {
			username: '',
			email: '',
			password: '',
			firstName: '',
			lastName: '',
			description: '',
			profileType: [],
			snowSports: [''],
			landSports: [''],
			waterSports: [''],
			airSports: [''],
			typ: false,
			typA: false,
			typB: false,
			sno: false,
			wat: false,
			lan: false,
			air: false,
			redirect: false
		}
	}

	// Validates form for style purposes and so that we cannot send empty data to api
	validateForm() {
		const { username, password} = this.state;

		return username.length > 0 &&

			password.length > 0;
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
			landSports : event.target.value
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
            airSports : event.target.value
        });

    };


	handleUserChange = event => {


		this.setState({

			[event.target.id]: event.target.value
		});

	};


	handleTypeA = event => {
		let e = 'athlete';
		var array = [...this.state.profileType];
		if (this.state.profileType.length > 0) {
			// make a separate copy of the array
			var index = array.indexOf('athlete');
			if (index !== -1) {
				array.splice(index, 1);
				this.setState({profileType: array});

			} else {
				this.setState(previousState => ({
					profileType: [...previousState.profileType, 'athlete']
				}));
			}
		} else {
			this.setState(previousState => ({
				profileType: [...previousState.profileType, 'athlete']
			}));
		}
		this.setState({

			typA: !this.state.typA

		});
		//alert(this.state.profileType);

	};
	handleTypeP = event => {
		let e = 'photographer';
		var array = [...this.state.profileType];
		if (this.state.profileType.length > 0) {
			// make a separate copy of the array
			var index = array.indexOf('photographer');
			if (index !== -1) {
				array.splice(index, 1);
				this.setState({profileType: array});

			} else {
				this.setState(previousState => ({
					profileType: [...previousState.profileType, 'photographer']
				}));
			}
		} else {
			this.setState(previousState => ({
				profileType: [...previousState.profileType, 'photographer']
			}));
		}
		this.setState({

			typP: !this.state.typP

		});
		//alert(this.state.profileType);
	};


	handleType = e => {
		var array = [...this.state.profileType]; // make a separate copy of the array
		var index = array.indexOf(e.target.value);
		if (index !== -1) {
			array.splice(index, 1);
			this.setState({people: array});

		}

		this.setState({

			typP: !this.state.typP

		});

	};


	handleSubmit = e => {
		e.preventDefault();
		console.log('Submitted form:', this.state);

		axios.post('http://localhost:8000/users', {
			username: this.state.username,
			password: this.state.password,
			email: this.state.email,
			first_name: this.state.firstName,
			last_name: this.state.lastName,
			description: this.state.description,
            type: [this.state.profileType],
			snow_sports: [this.state.snowSports],
			water_sports: [this.state.waterSports],
			land_sports: [this.state.landSports],
			air_sports: [this.state.airSports]


		})
			.then(results => {
				this.setState( {userId : results.data.check })	;

				if(this.state.userId > 0) {
					//alert("created profile userId: " + this.state.userId + " " + this.state.type);
					localStorage.setItem('userId', this.state.userId);
					this.setState({redirect: true});

				}
				else {
					//alert("failed username is already taken");

					this.setState({redirect: false});
				}
			});

	};

	render() {
		console.log('State', this.state);
		const { redirect } = this.state;
		if(redirect) {
			return <Redirect to={`/dashboard/profile/${localStorage.getItem('userId')}`}/>;
		}
		const { valueSnow } = this.state;
		const { valueLand } = this.state;
		const { valueType } = this.state;
        const { valueWater } = this.state;
        const { valueAir } = this.state;
		return (
			<div style={{height: "100%", width: "200%", backgroundImage: `url(${hangGlide})`}}>
				<div className="Login" style={{height: '100%', top: '42%', backgroundColor: "grey"}}>
					<h3 style={{textAlign: 'center', marginTop: '5%'}}>Sign Up</h3>
				<form onSubmit={this.handleSubmit}>

					<CustomFormGroup value={this.state.username} label="Username"	controlId="username"
									 type="text"	onChange={this.handleUserChange} />

					<CustomFormGroup value={this.state.password} label="Password"	controlId="password"
									 type="password"	onChange={this.handleChange} />

					<CustomFormGroup value={this.state.email} label="email"	controlId="email"
									 type="text"	onChange={this.handleChange} />

					<CustomFormGroup value={this.state.firstName} label="First Name"	controlId="firstName"
						type="text"	onChange={this.handleChange} />

					<CustomFormGroup value={this.state.lastName} label="Last Name"	controlId="lastName"
						type="text"	onChange={this.handleChange} />

					<CustomFormGroup value={this.state.description} label="Description(something about yourself)"	controlId="description"
									 type="text"	onChange={this.handleChange} />

					<Form.Group controlId="winter sport type">

						<Form.Label>Winter Sport Type</Form.Label>
						<Form.Control value={valueSnow} placeholder="Select a Sport" onChange={this.handleChange1} as="select">
							<option disabled value={-1}>Select an option...</option>
							<option> </option>
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
						<Form.Control value={valueLand} placeholder="Select a Sport" onChange={this.handleChange2} as="select">
							<option disabled value={-1}>Select an option...</option>
							<option> </option>
                            <option value='skateboard'>Skateboard</option>
							<option value='bmx'>BMX</option>
                            <option value='mountainbike'>Mountain Biking</option>
                            <option value='rockrlimb'>Rock Climb</option>
                            <option value='skateboard,bmx'>Skateboard & BMX</option>
                            <option value='skateboard,mountainbike'>Skateboard & Mountain biking</option>
                            <option value='bmx,mountainbike'> BMX & Mountain Biking</option>
                            <option value='skateboard,bmx,mountainbike'>Skateboard & BMX & Mountain biking</option>
						</Form.Control>
					</Form.Group>
                    <Form.Group controlId="water sport type">

                        <Form.Label>Water Sport Type</Form.Label>
                        <Form.Control value={valueWater} placeholder="Select a Sport" onChange={this.handleChange4} as="select">
                            <option disabled value={-1}>Select an option...</option>
                            <option> </option>
                            <option value='surf'>Surf</option>
                            <option value='paddleboard'>Paddleboard</option>
                            <option value='parasail'>Parasail</option>
                            <option value='kayak'>Kayak</option>
                            <option value='waterski'>Water Ski</option>
                            <option value='surf,waterski'>Surf & Water Ski</option>
                        </Form.Control>
                    </Form.Group>

                    <Form.Group controlId="air sport type">
                        <Form.Label>Air Sport Type</Form.Label>
                        <Form.Control value={valueAir} placeholder="Select a Sport" onChange={this.handleChange5} as="select">
                            <option disabled value={-1}>Select an option...</option>
                            <option> </option>
                            <option value='skydive'>Sky Dive</option>
                            <option value='hangglide'>Hang Glide</option>
                            <option value='skyDive,hangglide'>Skydive & Hang Glide</option>
                        </Form.Control>
                    </Form.Group>


					<Form.Group controlId="profileType">

						<Form.Label>Profile Type (required)</Form.Label>

						<Form.Control value={valueType} placeholder="Select type of profile..." onChange={this.handleChange3} as="select">

							<option disabled value={-1}>Select an option...</option>

							<option> </option>

                            <option value='athlete'>Athlete</option>
                            <option value='proathlete'>Pro Athlete</option>
                            <option value='athlete,proathlete'>Athlete & Pro Athlete</option>
                            <option value='photographer'>Photographer</option>
                            <option value='videographer'>Videographer</option>
                            <option value='droneoperator'>Drone Operator</option>
                            <option value='athlete,photographer'>Athlete & Photographer</option>
                            <option value='photographer,videographer'>Photographer & Filmographer</option>
                            <option value='photographer,droneoperator'>Photographer & Drone Operator</option>
                            <option value='photographer,videographer,droneoperator'>Photographer & Filmographer & Drone
								Operator
							</option>
                            <option value='athlete,photographer'>Athlete & Photographer</option>
                            <option value='athlete,photographer,videographer'>Athlete & Photographer & Filmographer
							</option>
                            <option value='athlete,photographer,droneoperator'>Athlete & Photographer & Drone Operator
							</option>
                            <option value='athlete,photographer,videographer,droneoperator'>Athlete & Photographer &
								Filmographer & Drone Operator
							</option>
							<option value='fan'>Fan</option>


						</Form.Control>

					</Form.Group>


                    <Button style={{ marginTop: '20px' }}	block disabled={!this.validateForm()} type="submit">Create Account!</Button>
				</form>
			</div>
			</div>
		);
	}
}