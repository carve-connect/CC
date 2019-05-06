import React, {Component} from 'react'
import Button from "react-bootstrap/Button";
import Row from "react-bootstrap/Row";
import MediaGroupAll from "../../../../components/MediaComponents/MediaGroupAll";
import CreateMediaModal from "../../../../components/MediaComponents/CreateMediaModal";

export default class Showcase extends Component {
    constructor(props) {
        super(props);
        this.state = {};
        this.handleCreateMedia = this.handleCreateMedia.bind(this);
    }

    handleCreateMedia = () => {
        this.setState({createMedia: !this.state.createMedia});
    };

    render() {
        let type = 'open';

        return (
            <div style={{paddingLeft: "1%"}}>
                <CreateMediaModal show={this.state.createMedia} handleClose={this.handleCreateMedia}/>
                <Row style={{width: "100%", height: "100%", backgroundColor: "cadetblue"}}>
                    <h2 style={{width: '80%'}}>Media Showcase</h2>
                    <Button onClick={this.handleClick} style={{margin: '5px'}}>Create Media</Button>
                </Row>
                <Row style={{width: "100%", backgroundColor: "lightgrey", justifyContent: "center"}}>
                    <h1 atyle={{}}>All posted Media</h1>

                </Row>
                <Row style={{width: "100%", backgroundColor: "gainsboro"}}>
                    <MediaGroupAll/>
                </Row>
            </div>
        );
    }
}
