import React, {Component} from 'react'
import Button from "react-bootstrap/Button";
import CreateCarveModal from "../../../../components/CarveComponents/CreateCarveModal";
import CarveCard from "../../../../components/CarveComponents/CarveCard";
import Row from "react-bootstrap/Row";

export default class ListingPage extends Component {
	constructor(props) {
		super(props);
		this.state = {
            show: false,
            completed: 0,
            athlete: true,
            photographer: true
		}
	}

	handleClick = () => {
		this.setState({ show: !this.state.show });
	};

	render() {


        return (
			<div style={{paddingLeft: "2%"}}>
				<CreateCarveModal handleClose={this.handleClick} show={this.state.show}/>
                <Row style={{width: "200%", height: "100%", backgroundColor: "cadetblue"}}>
                    <h2 style={{width: '80%'}}>Listings Page</h2>
					<Button onClick={this.handleClick} style={{ margin: '5px' }}>Create Carve</Button>
                </Row>
                <Row style={{width: "200%", backgroundColor: "grey"}}>
					<h1>Carves open for attendance request</h1>

                </Row>
                <Row style={{width: "100%", backgroundColor: "gainsboro"}}>
                    <CarveCard completed={this.state.completed} athlete={this.state.athlete}
                               photographer={this.state.photographer}/>
                </Row>
			</div>
		);
	}
}
