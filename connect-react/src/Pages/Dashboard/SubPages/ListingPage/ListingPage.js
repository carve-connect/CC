import React, {Component} from 'react'
import Button from "react-bootstrap/Button";
import CreateCarveModal from "../../../../components/CarveComponents/CreateCarveModal";
import Row from "react-bootstrap/Row";
import CarveCollector from "../../../../components/CarvesComponents/CarveCollector";

export default class ListingPage extends Component {
	constructor(props) {
		super(props);
		this.state = {

		}
	}



	render() {
        let type = 'open';

        return (
            <div style={{paddingLeft: "1%"}}>
				<CreateCarveModal handleClose={this.handleClick} show={this.state.show}/>
                <Row style={{width: "100%", height: "100%", backgroundColor: "cadetblue"}}>
                    <h2 style={{width: '80%'}}>Listings Page</h2>
					<Button onClick={this.handleClick} style={{ margin: '5px' }}>Create Carve</Button>
                </Row>
                <Row style={{width: "100%", backgroundColor: "lightgrey", justifyContent: "center"}}>
                    <h1 atyle={{}}>Carves open for attendance request</h1>

                </Row>
                <Row style={{width: "100%", backgroundColor: "gainsboro"}}>
                    <CarveCollector type={type}>

                    </CarveCollector>
                </Row>
			</div>
		);
	}
}
