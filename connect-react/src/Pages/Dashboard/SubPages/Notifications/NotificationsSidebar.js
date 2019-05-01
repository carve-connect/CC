import React, {Component} from 'react';
import Col from 'react-bootstrap/Col';
import ListGroup from 'react-bootstrap/ListGroup'
import {Link} from "react-router-dom";

import MessageModal from "../../../../components/MessageComponents/MessageModal";

const menuItems = {
	'Compose  ': {href: '/dashboard/notifications '},
	'Inbox  ': {href: '/dashboard/notinbox'},
	'Sent  ': {href: '/dashboard/notoutbox '}

};



export default class NotificationsSidebar extends Component {
	constructor(props) {
		super(props);
		this.state = {
			show: false
		}
	}

	handleClick = () => {
		this.setState({ show: !this.state.show });
	};
render() {
	return (
		<>
			<MessageModal handleClose={this.handleClick} show={this.state.show} />
			{/* First column that holds the menu items */}
			<Col xs={1} style={{ paddingLeft: "0px",paddingRight: '0px', backgroundColor: "grey",bordered: '0.5px solid rgba(0, 0, 0, 0.5)'}}>
				<ListGroup variant="flush" defaultActiveKey="1"  style={{ paddingRight: '0px'}}>
					<ListGroup.Item key={menuItems[2]} style={{
						backgroundColor: "grey", color: "white", fontWeight: 'bold',
						fontFamily: 'monospace', paddingTop: '5px',bordered: '0.5px solid rgba(0, 0, 0, 0.5)'}}>
						<Link to={'/dashboard/notinbox/'}><h4>{"Incoming "}<i
							className="fa fa-envelope-open-o text-white"/></h4></Link>
					</ListGroup.Item>
					<ListGroup.Item key={menuItems[3]} style={{
						backgroundColor: "grey", color: "white", fontWeight: 'bold',
						fontFamily: 'monospace', paddingRight: '0px',bordered: '0.5px solid rgba(0, 0, 0, 0.5)'}}>
						<Link to={'/dashboard/notoutbox/'}><h4>{"Sent  "}<i className="fa fa-send-o text-white"/></h4>
						</Link>
					</ListGroup.Item>
				</ListGroup>
			</Col>
		</>
	);
  }
}

