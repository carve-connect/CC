import React, {Component} from 'react'
import Nav from 'react-bootstrap/Nav'
import NavDropdown from 'react-bootstrap/NavDropdown'
import Form from 'react-bootstrap/Form'
import Button from 'react-bootstrap/Button'

import {Link} from 'react-router-dom'
import UserApi from "../../api/UserApi";
import axios from 'axios';
import CustomFormGroup from "../../components/CustomFormGroup";
import NavbarBrand from "react-bootstrap/NavbarBrand";
import Settings from '../../components/SettingsComponents/settings';
import Help from '../../components/SettingsComponents/help';
import Privacy from '../../components/SettingsComponents/privacy';
import Contact from '../../components/SettingsComponents/contact';
import Alert from 'react-bootstrap/Alert'
import MessageModal from "../../components/MessageComponents/MessageModal";

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
				messageAlert: true,
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
		return search.length > 0;
	}

	// Searches the database for usernames, first names and last names LIKE the search term
	handleSearch = e => {
		e.preventDefault();
		console.log('Submitted form');
		UserApi.searchForUsers(this.state.search)
			.then((users) => {
				console.log('Searched users found:', users);
				this.setState({redirect: true})
			}).catch(err => {
				console.log('Error', err);
			});
	};

	handleAlertClose = () => {
		this.setState({messageAlert: !this.state.messageAlert});
	};

	componentWillMount()
	{

		axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/messages/notifications`)
			.then(res => {
				this.setState({
					notifications: res.data.results[0]
				});
			});

		axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/messages`)
			.then(res => {
				this.setState({
					messages: res.data.results[0]
				});
			});

	}


	render(){

		return (
				<>
					<Settings show={this.state.settings} handleClose={this.handleSettings}/>
					<Help show={this.state.help} handleClose={this.handleHelp}/>
					<Privacy show={this.state.privacy} handleClose={this.handlePrivacy}/>
					<Contact show={this.state.contact} handleClose={this.handleContact}/>
					<MessageModal handleClose={this.handleClick1} show={this.state.show1}/>
					<Nav className="navbar navbar-dark bg-dark nav-fill" >
						{/*<a className="navbar-brand" href="/">Carve Connect</a>*/}
						<NavbarBrand style={{
                            color: 'lightskyblue',
                            textShadowColor: 'black',
                            fontWeight: 'bold',
                            fontFamily: 'monospace'
						}}><Link exact to={`/dashboard/profile/${localStorage.getItem('userId')}`}>Carve Connect</Link></NavbarBrand>
						<li>
							<div style={{justify:"left"}}>
								<Form onSubmit={this.handleSearch} inline style={{justify:"left"}} >
									<CustomFormGroup value={this.state.search} type="text" placeholder="User Search" className="mr-sm-2" controlId="search" onChange={this.handleChange}  />
									<Link to={`/dashboard/users?search=${this.state.search}`}><Button type="submit" block style={{width: 50, color: "white"}}>Find</Button></Link>
								</Form>
							</div>
						</li>
						<li>
							<ul className="navbar justify-content-end">
								<div>

									<NavDropdown className ="fa fa-envelope text-white"  id="collapsible-nav-dropdown">
										<NavDropdown.Item
										><Link to={"/dashboard/inbox"}><h4>Messages: {this.state.messages.length}</h4>
										</Link></NavDropdown.Item>
										<NavDropdown.Divider/>
										<NavDropdown.Item><Link to={"/dashboard/inbox"}><h4>Inbox</h4>
										</Link></NavDropdown.Item>
										<NavDropdown.Divider/>
										<NavDropdown.Item><Link to={"/dashboard/outbox"}><h4>Sent</h4>
										</Link></NavDropdown.Item>
										<NavDropdown.Divider />
										<NavDropdown.Item onClick={this.handleClick1}>Send Message</NavDropdown.Item>

									</NavDropdown>


									<NavDropdown className ="fa fa-bell text-danger"  id="collapsible-nav-dropdown" >
										<NavDropdown.Item
										><Link to={"/dashboard/notinbox"}>
											<h4>Notifications: {this.state.notifications.length}</h4>
										</Link></NavDropdown.Item>
										<NavDropdown.Divider/>
										<NavDropdown.Item><Link to={"/dashboard/notinbox"}><h4>Incoming</h4>
										</Link></NavDropdown.Item>
										<NavDropdown.Divider/>
										<NavDropdown.Item><Link to={'/dashboard/notoutbox'}><h4>Outgoing</h4>
										</Link></NavDropdown.Item>
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
					<Alert dismissible variant="danger" show={this.state.messageAlert} onClose={this.handleAlertClose}>
						<Alert.Heading>You have {this.state.messages.length} messages</Alert.Heading>
						<Alert.Heading>You have {this.state.notifications.length} notifications</Alert.Heading>
					</Alert>
					</>
	)}


}

export default TopNav;