import React, {Component} from 'react';
import Col from 'react-bootstrap/Col';
import ListGroup from 'react-bootstrap/ListGroup'
import Row from "react-bootstrap/Row";
import pic1 from "../../images/Sn1.jpeg"
import Image from 'react-bootstrap/Image'
import axios from 'axios';
import {Link} from "react-router-dom";
import NameDropdown from '../../components/NameDropdown'

class SideMenu extends Component {
	constructor(props) {
		super(props);
		this.state = {
			buddies:[] ,
			user_Id2: 0,
			buddyname: [],
			names: [""]
		};

	}


	componentDidMount() {
		axios.get(`http://localhost:8000/users/${localStorage.getItem('userId')}/follows/buddies`)
			.then(res => {
				// console.log("results: ", res.data.results[0]);
				//alert("Buddy list:"+ JSON.stringify(res.data.results[0][0].user_Id2));
				this.setState({
					buddies: res.data.results[0]
				});
			});
		/*
                for(var c = 0; c< this.state.buddies.length; c++) {
                    axios.get(`http://localhost:8000/users/${this.state.buddies[c].user_id2}`)
                        .then(res1 => {
                            // console.log("results: ", res.data.results[0]);
                            this.setState(previousState => ({
                                names: [...previousState.names, res1.data.users]
                            }));
                        });

                }
                alert(JSON.stringify(this.state.names))*/

	}


	render() {
		const menuItems = {
			'My Profile ': {href: `/dashboard/profile/${localStorage.getItem('userId')}`, icon: "fa fa-id-card"},
			'My Messages ': {href: '/dashboard/inbox/ ', icon: "fa fa-envelope-open"},
			'Venues ': {href: '/dashboard/venues', icon: "fa fa-globe"},
			'Users ': {href: '/dashboard/users', icon: "fa fa-user-circle"},
			'Explore ': {href: '/dashboard/explore', icon: "fa fa-compass"},
			'My Feed ': {href: '/dashboard/feed', icon: "fa fa-rss-square"},
			'Listings ': {href: '/dashboard/listings', icon: "fa fa-list-alt"}
		};

		let listItems;

		// Make a group of the list items from obj in state
		listItems = Object.keys(menuItems).map((name, index) => {
			// Make a list group item that when clicked, changes the sel field in state
			return (
				<ListGroup.Item key={index} style={{
					backgroundColor: "slategrey", color: "white", fontWeight: 'bold',
					paddingRight: '0px', width: "100%"
				}}>
					<Link to={menuItems[name].href}><h4>{name}<i className={menuItems[name].icon}
																 style={{color: "white"}}/></h4></Link>
				</ListGroup.Item>
			)
		});

		let buddiesList;

		if(this.state.buddies.length > 0) {
			buddiesList = this.state.buddies.map((buddy, index) => {


				return (
					<ListGroup.Item key={index} style={{
						backgroundColor: "seashell", color: "green",
                        paddingRight: '0px', width: "125%",
					}}>
                        <NameDropdown link={`/dashboard/profile/${this.state.buddies[index].user_id2}`} name= {this.state.buddies[index].username} />
						<Image src={pic1}roundedCircle style={{ width: "20px", height: "20px"}}/>
					</ListGroup.Item>
				)
			});
		}
		return (
			<>
				{/* First column that holds the menu items */}
				<Col xs={1} style={{paddingRight: '5px', backgroundColor: "slategrey"}}>
					<Row>
                        <ListGroup variant="flush" defaultActiveKey="1" style={{width: "90%"}}>
							{listItems}
						</ListGroup>
					</Row>
					<Row style={{paddingBottom:"0px"}}>
						<h5 style={{
							color: "green", paddingLeft: "10%", fontWeight: 'bold',
                            paddingTop: "10%", backgroundColor: "seashell", width: "90%", paddingBottom: "0px"
						}}>Buddies <i className="fa fa-users " style={{color: "green"}}/></h5>
					</Row>
                    <Row style={{paddingTop: "0px", width: "90%"}}>

                        <ListGroup variant="flush" defaultActiveKey="1"
                                   style={{paddingTop: "0px", width: "120%", paddingLeft: "15%"}}>
							{buddiesList}
						</ListGroup>
					</Row>
				</Col>
			</>
		);
	};
}

export default SideMenu;