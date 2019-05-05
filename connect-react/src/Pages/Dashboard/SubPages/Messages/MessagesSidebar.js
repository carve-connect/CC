import React, {Component} from 'react';
import Col from 'react-bootstrap/Col';
import ListGroup from 'react-bootstrap/ListGroup'
import MessageModal from "../../../../components/MessageComponents/MessageModal";
import {Link} from "react-router-dom";

const menuItems = {
	'Compose  ': {href: '/dashboard/messages/ '},
	'Inbox  ': {href: '/dashboard/inbox '},
	'Sent  ': {href: '/dashboard/outbox'}

};



export default class MessagesSidebar extends Component {
	constructor(props) {
		super(props);
		this.state = {
			show0: false
		}
	}

	handleClick0 = () => {

		this.setState({ show0: !this.state.show0});
	};

	handleClose = () => {
		this.setState({ show0: !this.state.show0 });
	};

render() {
	return (
		<>
			<MessageModal handleClose={this.handleClick0} show={this.state.show0} />
			{/* First column that holds the menu items */}
			<Col xs={1} style={{ paddingLeft: "0px",paddingRight: '0px', backgroundColor: "grey",bordered: '0.5px solid rgba(0, 0, 0, 0.5)'}}>
				<ListGroup variant="flush" defaultActiveKey="1"  style={{ paddingRight: '0px'}}>

					<ListGroup.Item key={menuItems[2]} action style={{
						backgroundColor: "grey", color: "white", fontWeight: 'bold',
						fontFamily: 'monospace', paddingTop: '5px',bordered: '0.5px solid rgba(0, 0, 0, 0.5)'}}>
						<Link to={'/dashboard/inbox/'}><h4>{"Inbox"}<i className="fa fa-envelope-open-o text-white"/>
						</h4></Link>

					</ListGroup.Item>
					<ListGroup.Item key={menuItems[3]} action style={{
						backgroundColor: "grey", color: "white", fontWeight: 'bold',
						fontFamily: 'monospace', paddingRight: '0px',bordered: '0.5px solid rgba(0, 0, 0, 0.5)'}}>
						<Link to={'/dashboard/outbox/'}><h4>{"Outbox"}<i className="fa fa-send-o text-white"/></h4>
						</Link>

					</ListGroup.Item>
				</ListGroup>
			</Col>
		</>
	);
  }
}

