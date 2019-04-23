import React, {Component} from 'react'
import CarveCardUserAttend from "../../../../components/CarveCardUserAttend";
import CreateCarveModal from "../../../../components/CreateCarveModal";
import Button from "react-bootstrap/Button";
import Row from "react-bootstrap/Row";


export default class FeedPage extends Component {
	constructor(props) {
		super(props);
		this.state = {
			show: false,
			show2: false
		}
	}

	handleClick = () => {
		this.setState({ show: !this.state.show });
	};

	render() {
		return (
			<>
				<CreateCarveModal handleClose={this.handleClick} show={this.state.show}/>
				<Row>
					<h1>Carves user will or has already attended</h1>
					<Button onClick={this.handleClick} style={{ margin: '5px' }}>Create Carve</Button>
				</Row>

				<CarveCardUserAttend>Carves:</CarveCardUserAttend>
			</>
		);
	}
}
