import React from 'react';
import Card from 'react-bootstrap/Card';
import Row from 'react-bootstrap/Row';
import Container from "react-bootstrap/Container";
import CommentTable from '../WallComponents/CommentTable';
import MediaLikes from './MediaLikes';
import {Dropdown} from 'react-bootstrap';
import {Tooltip} from 'react-bootstrap';
import {OverlayTrigger} from 'react-bootstrap';


const MediaCard = (props) => {
    let creatorName = "";
    /*
    if (props.users.length > 0) {
        for (var c = 0; c < props.users.length; c++) {
            if (props.users[c].user_id == props.media.poster)
                creatorName = this.state.users[c].username;
        }
    }
*/



    return (


        <Card style={{width: '30rem', marginBottom: '2rem'}}>
        <Card.Header style={{padding: 0}}>
                    <Dropdown >
                        <Dropdown.Toggle size="sm"  variant="link" style={{color: 'black', float: 'right', border: 'none'}}>
                            <i class="fa fa-ellipsis-h fa-10x"></i>
                        </Dropdown.Toggle>

                        <Dropdown.Menu style={{minWidth: '5rem'}}>
                            <Dropdown.Item href="#/action-1">
                                <OverlayTrigger overlay = {
                                    <Tooltip>Edit</Tooltip>
                                }>
                                    <i class="fa fa-edit fa-2x"></i>
                                </OverlayTrigger>
                            </Dropdown.Item>
                            <Dropdown.Item onClick={props.delete} href="#/action-1">
                                <OverlayTrigger overlay = {
                                    <Tooltip>Delete</Tooltip>
                                }>
                                <i class="fa fa-trash fa-2x"></i>
                                </OverlayTrigger>
                            </Dropdown.Item>
                        </Dropdown.Menu>
                    </Dropdown>
                </Card.Header>

                <container className="embed-responsive embed-responsive-16by9">
                    <iframe title="User Media" className="embed-responsive-item" src= {props.media.url} allowFullScreen > </iframe>
                </container>

                <Card.Body>
                    <Container>
                        <Row style = {{marginTop: '-1rem', borderBottom:'1px dashed lightgrey'}}>
                            <Card.Link href="#">{props.media.poster} {creatorName}</Card.Link>
                            :{props.media.description}
                        </Row>
                        <Row>
                            <MediaLikes media={props.media}/>
                        </Row>
                    </Container>
                </Card.Body>
               {/* comment table would be here */}
                <CommentTable media={props.media} carve={""} type={"media"}/>
                <Card.Footer style = {{fontSize: '10px'}}><em>Create_Time: {props.media.time}</em></Card.Footer>
            </Card>

    );
};
export default MediaCard;