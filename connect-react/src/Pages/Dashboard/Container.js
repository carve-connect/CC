import React, {Component} from 'react'
import routes from './dashboardRoutes'


export default class Container extends Component {
	constructor(props) {
		super(props);
		this.state = {
			value: 0
		};

		this.changeSel = this.changeSel.bind(this);


    }

	componentDidMount() {
		this.setState({
			value: 0
		})
	}

	render() {
		return (

            <div style={{width: "85%"}}>
                {routes}
            </div>
		);
	}

	// Responsible for changing the selected component
	changeSel(name) {
		this.setState({ sel: name });
	}
}