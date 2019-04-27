import React, {Component} from 'react'
import Nav from 'react-bootstrap/Nav'
import NavDropdown from 'react-bootstrap/NavDropdown'
import Form from 'react-bootstrap/Form'
import Button from 'react-bootstrap/Button'
import { Link } from 'react-router-dom'

import CustomFormGroup from "./CustomFormGroup";
import NavbarBrand from "react-bootstrap/NavbarBrand";
import axios from "axios";
import UserApi from "../api/UserApi";

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
				notifications: []};
	}

	handleClick() {
		alert("searching for user: " + this.state.userId);
		this.setState({userId : this.value}) ;

	}

	handleClick1= () => {
		this.setState({ show1: !this.state.show1 });
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
	}

	componentWillMount() {
		axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/messages/notifications`)
			.then(res => {
				this.setState({
					messages: res.data.results[0]
				});
			});

		axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/messages/inbox`)
			.then(res => {
				this.setState({
					notifications: res.data.messages
				});
			});

	}


	render(){
		return (
				<>
					<Nav className="navbar navbar-dark bg-dark nav-fill" >
					{/*<a className="navbar-brand" href="/">Carve Connect</a>*/}
						<NavbarBrand href='/' style = {{color:'lightskyblue',textShadowColor:'black',fontWeight:'bold',fontFamily:'monospace'}}>Carve Connect</NavbarBrand>
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
										<h6>Messages: {this.state.messages.length}</h6>
										<NavDropdown.Item href="/dashboard/messages">Messages</NavDropdown.Item>
										<NavDropdown.Item href="/dashboard/messages/inbox">Inbox</NavDropdown.Item>
										<NavDropdown.Item href="/dashboard/messages/outbox">Sent</NavDropdown.Item>
										<NavDropdown.Divider />

										<NavDropdown.Item onClick={this.handleClick1}>Send Message</NavDropdown.Item>

									</NavDropdown>


									<NavDropdown className ="fa fa-bell text-danger"  id="collapsible-nav-dropdown" >
										<h6>Notifications: {this.state.notifications.length}</h6>
										<NavDropdown.Item href="/dashboard/notinbox">Notifications</NavDropdown.Item>
										<NavDropdown.Item href="/dashboard/notoutbox">Sent</NavDropdown.Item>
										<NavDropdown.Divider />

									</NavDropdown>

									<NavDropdown className="fa fa-cogs text-secondary"  id="collapsible-nav-dropdown" >

										<NavDropdown.Item href="#">Settings</NavDropdown.Item>
										<NavDropdown.Item href="#">Privacy</NavDropdown.Item>
										<NavDropdown.Item href="#">Help</NavDropdown.Item>
										<NavDropdown.Divider />
										<NavDropdown.Item href="/">Contact Us</NavDropdown.Item>
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