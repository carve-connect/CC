import React from 'react';
import Card from 'react-bootstrap/Card';
import Row from 'react-bootstrap/Row';
import Container from "react-bootstrap/Container";
import CommentTable from '../WallComponents/CommentTable';
import MediaLikes from './MediaLikes';


const MediaCard = (props) => {
    return (
        <>
        
            <Card style={{width: '30rem', marginBottom: '2rem'}}>
                <container className="embed-responsive embed-responsive-16by9">
                    <iframe title="User Media" className="embed-responsive-item" src= {props.media.url} allowFullScreen > </iframe>
                </container>

                <Card.Body>
                    <Container>
                        <Row style = {{marginTop: '-1rem', borderBottom:'1px dashed lightgrey'}}>
                            <Card.Link href = "#">{props.media.poster}</Card.Link>
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
        </>
    );
};
export default MediaCard;