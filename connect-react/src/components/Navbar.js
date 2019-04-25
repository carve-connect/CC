import React, {Component} from 'react'
import Nav from 'react-bootstrap/Nav'
import NavDropdown from 'react-bootstrap/NavDropdown'
import Form from 'react-bootstrap/Form'
import Button from 'react-bootstrap/Button'
import {link} from 'react-router'
import axios from 'axios';
import CustomFormGroup from "./CustomFormGroup";
import NavbarBrand from "react-bootstrap/NavbarBrand";
import Settings from './settings';
import Help from './help';
import Privacy from './privacy';
import Contact from './contact';


class TopNav extends Component {
	constructor(props){
			super(props);
			this.state = {
				userId: 1,
				search: "",
				redirect: false,
				show: false,
				show1: false,
				messages: [],
				settings: false,
				contact: false,
				privacy: false,
				help: false,
				notifications: []};

		this.handleSettings = this.handleSettings.bind(this);
		this.handleContact = this.handleContact.bind(this);
		this.handlePrivacy = this.handlePrivacy.bind(this);
		this.handleHelp = this.handleHelp.bind(this);

	}

	handleClick() {
		alert("searching for user: " + this.state.userId);
		this.setState({userId : this.value}) ;

	}

	handleClick1= () => {
		this.setState({ show1: !this.state.show1 });
	};

	handleContact = () => {
		this.setState({contact: !this.state.contact});
	};

	handleSettings = () => {
		this.setState({settings: !this.state.settings});
	};

	handlePrivacy = () => {
		this.setState({privacy: !this.state.privacy});
	};

	handleHelp = () => {
		this.setState({help: !this.state.help});
	};

	// Handles state change for each input in the state object
	handleChange = event => {
		this.setState({
			[event.target.id]: event.target.value
		});
	};

	validateForm() {
		const { search } = this.state;

		return parseInt(search) > 0;
	}

	handleSubmit = e => {
		e.preventDefault();
		alert("submitting the form " + this.state.search);
		console.log('Submitted form:', this.state);
		var value = this.state.search;
		parseInt(value);
		if(value > 0) {

			this.setState({redirect : true});


	}};
	componentWillMount()
	{

		axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/messages/notifications`)
			.then(res => {
				console.log("results: ", res.data.results[0]);
				this.setState({
					notifications: res.data.results[0]
				});
				//alert("you have "+this.state.messages.length+" notifications");
				//alert(JSON.stringify(res.data.users[0][0]))
			});

		axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/messages`)
			.then(res => {
				console.log("Messages from inbox: ", res.data.messages);
				this.setState({
					messages: res.data.results[0]
				});
				//alert("you have "+this.state.messages.notifications+" messages");
			});

	}


	render(){


		let redirect = this.state.redirect;
		if(redirect) {
			return <link to={`/dashboard/profile/${this.state.userId}`}/>;
		}

	return (
			<>
				<Settings show={this.state.settings} handleClose={this.handleSettings}/>
				<Help show={this.state.help} handleClose={this.handleHelp}/>
				<Privacy show={this.state.privacy} handleClose={this.handlePrivacy}/>
				<Contact show={this.state.contact} handleClose={this.handleContact}/>
				<Nav className="navbar navbar-dark bg-dark nav-fill" >
				{/*<a className="navbar-brand" href="/">Carve Connect</a>*/}
					<NavbarBrand href={`/dashboard/profile/${this.state.userId}`} style={{
						color: 'lightskyblue',
						textShadowColor: 'black',
						fontWeight: 'bold',
						fontFamily: 'monospace'
					}}>Carve Connect</NavbarBrand>
					<li>
						<div style={{justify:"left"}}>
							<Form inline style={{justify:"left"}} >
								<CustomFormGroup value = {this.state.search} type="integer" placeholder="User Search" className=" mr-sm-2" controlId ="search" onChange={this.handleChange}  />
								<Button type="submit" block disabled={!this.validateForm()} href = {'/dashboard/profile/'+ parseInt(this.state.search)} style = {{width: 50, color: "white"}}>Find</Button>
							</Form>
						</div>
					</li>
						<li >

							<ul className="navbar justify-content-end">
								<div>

									<NavDropdown className ="fa fa-envelope text-white"  id="collapsible-nav-dropdown">
										<NavDropdown.Item
											href="/dashboard/messages/inbox">Messages: {this.state.messages.length}</NavDropdown.Item>
										<NavDropdown.Divider/>
										<NavDropdown.Item href="/dashboard/messages/inbox">Inbox</NavDropdown.Item>
										<NavDropdown.Divider/>
										<NavDropdown.Item href="/dashboard/messages/outbox">Sent</NavDropdown.Item>
										<NavDropdown.Divider />
										<NavDropdown.Item onClick={this.handleClick1}>Send Message</NavDropdown.Item>

									</NavDropdown>


									<NavDropdown className ="fa fa-bell text-danger"  id="collapsible-nav-dropdown" >
										<NavDropdown.Item
											href="/dashboard/notinbox">Notifications: {this.state.notifications.length}</NavDropdown.Item>
										<NavDropdown.Divider/>
										<NavDropdown.Item href="/dashboard/notinbox">Incoming</NavDropdown.Item>
										<NavDropdown.Divider/>
										<NavDropdown.Item href="/dashboard/notoutbox">Outgoing</NavDropdown.Item>
										<NavDropdown.Divider />

									</NavDropdown>

									<NavDropdown className="fa fa-cogs text-secondary"  id="collapsible-nav-dropdown" >

										<NavDropdown.Item onClick={this.handleSettings}>Settings</NavDropdown.Item>
										<NavDropdown.Divider/>
										<NavDropdown.Item onClick={this.handlePrivacy}>Privacy</NavDropdown.Item>
										<NavDropdown.Divider/>
										<NavDropdown.Item onClick={this.handleHelp}>Help</NavDropdown.Item>
										<NavDropdown.Divider />
										<NavDropdown.Item onClick={this.handleContact}>Contact Us</NavDropdown.Item>
									</NavDropdown>
								</div>
							<div>
							<li className="nav-item">
									<a className="nav-link active" href={'/logout'}>Logout</a>
								</li>
							</div>
							</ul>

						</li>

					</Nav>
				</>
)}


}

export default TopNav;