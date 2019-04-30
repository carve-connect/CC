import React from 'react';
import WallPost from "components/WallPost";
import Container from "react-bootstrap/Container";

const WallTab = (props) => {
	return (
		<Container style={{marginTop: '20px'}}>
			<h2>Wall Posts</h2>
			<div style={{borderBottom: '1px solid lightgray'}}></div>
			<WallPost profile={props.user}/>
		</Container>
	);
}

export default WallTab;