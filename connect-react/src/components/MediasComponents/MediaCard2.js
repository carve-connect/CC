import React from 'react';
import Card from 'react-bootstrap/Card';
import Row from 'react-bootstrap/Row';
import Container from "react-bootstrap/Container";


const MediaCard2 = (props) => {
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
        <>

            <Card style={{width: '30rem', marginBottom: '2rem'}}>
                <container className="embed-responsive embed-responsive-16by9">
                    <div className="embed-responsive embed-responsive-16by9">
                        <iframe width="560" height="315" src={props.media.url}
                                frameBorder="0"
                                allow=""
                                allowFullScreen></iframe>
                    </div>


                </container>

                <Card.Body>
                    <Container>
                        <Row style={{marginTop: '-1rem', borderBottom: '1px dashed lightgrey'}}>
                            <Card.Link href="#">{props.media.poster} {creatorName}</Card.Link>
                            :{props.media.description}
                        </Row>
                        <Row>

                        </Row>
                    </Container>
                </Card.Body>
                {/* comment table would be here */}

                <Card.Footer style={{fontSize: '10px'}}><em>Create_Time: {props.media.time}</em></Card.Footer>
            </Card>
        </>
    );
};
export default MediaCard2;