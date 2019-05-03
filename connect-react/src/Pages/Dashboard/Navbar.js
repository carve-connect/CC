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
import {Badge, Dropdown} from 'react-bootstrap';
import Logo from "../../images/logo.png";
import {Col} from 'react-bootstrap';
import {Row} from 'react-bootstrap';
import DropdownToggle from 'react-bootstrap/DropdownToggle';
import DropdownMenu from 'react-bootstrap/DropdownMenu';

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

					<Nav style={{padding: '0', height: '6rem'}} className="navbar navbar-dark bg-dark nav-fill" >
						{/*<a className="navbar-brand" href="/">Carve Connect</a>*/}
						<NavbarBrand style={{
                            color: 'lightskyblue',
                            textShadowColor: 'black',
                            fontWeight: 'bold',
                            fontFamily: 'monospace'
						}}>
							<Link exact to={`/dashboard/profile/${localStorage.getItem('userId')}`}>
							<img 
								style={{marginRight: '1rem'}}
								alt=""
								height="40px"
								width="60px"
								src = {Logo}
								className="rounded"/>
							Carve Connect</Link>
						</NavbarBrand>
						<li>
							<Form onSubmit={this.handleSearch} inline>
								<CustomFormGroup value={this.state.search} type="text" placeholder="Search for buddies"  controlId="search" onChange={this.handleChange}  />
								<Link to={`/dashboard/users?search=${this.state.search}`}><Button type="submit"  style={{width: 50, color: "white"}}>Find</Button></Link>
							</Form>
						</li>
						<li>
							<ul className="navbar justify-content-end">
								<Row>
									<Col>
										<Badge variant="success">{this.state.messages.length}</Badge>
										{/* <NavDropdown className ="fa fa-envelope text-white fa-2x"  id="collapsible-nav-dropdown">
										<i class="fa fa-envelope text-white fa-2x"></i>
											<NavDropdown.Item style={{displayafter:'none'}}>
												<Link to={"/dashboard/inbox"}><h6>Inbox</h6></Link>
											</NavDropdown.Item>
											<NavDropdown.Divider/>
											<NavDropdown.Item>
												<Link to={"/dashboard/outbox"}><h6>Sent</h6></Link>
											</NavDropdown.Item>
											<NavDropdown.Divider />
											<NavDropdown.Item onClick={this.handleClick1}><h6>Compose Message</h6></NavDropdown.Item>
										</NavDropdown> */}

										<Dropdown>
											<Dropdown.Toggle style={{padding: '0'}}>
												<i class="fa fa-envelope text-white fa-2x"></i>
											</Dropdown.Toggle>

											<Dropdown.Menu>
												<Dropdown.Item>
													<Link to={"/dashboard/inbox"}><h6>Inbox</h6></Link>
												</Dropdown.Item>
												<NavDropdown.Item>
													<Link to={"/dashboard/outbox"}><h6>Sent</h6></Link>
												</NavDropdown.Item>
												<NavDropdown.Divider/>
												<NavDropdown.Item onClick={this.handleClick1}><h6>Compose Message</h6></NavDropdown.Item>
											</Dropdown.Menu>
										</Dropdown>
									</Col>
									<Col>
										<Badge variant="success">{this.state.notifications.length}</Badge>
										<NavDropdown className ="fa fa-bell text-danger fa-2x"  id="collapsible-nav-dropdown" >
											<NavDropdown.Item><Link to={"/dashboard/notinbox"}><h6>Incoming</h6>
											</Link></NavDropdown.Item>
											<NavDropdown.Divider/>
											<NavDropdown.Item><Link to={'/dashboard/notoutbox'}><h6>Outgoing</h6>
											</Link></NavDropdown.Item>
										</NavDropdown>
									</Col>
									<Col style={{marginTop: '1.4rem'}}>
										<NavDropdown className="fa fa-cogs text-secondary fa-2x "  id="collapsible-nav-dropdown" >
										<NavDropdown.Item onClick={this.handleSettings}>Settings</NavDropdown.Item>
										<NavDropdown.Divider/>
										<NavDropdown.Item onClick={this.handlePrivacy}>Privacy</NavDropdown.Item>
										<NavDropdown.Divider/>
										<NavDropdown.Item onClick={this.handleHelp}>Help</NavDropdown.Item>
										<NavDropdown.Divider />
										<NavDropdown.Item onClick={this.handleContact}>Contact Us</NavDropdown.Item>
										</NavDropdown>
									</Col>
								</Row>
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