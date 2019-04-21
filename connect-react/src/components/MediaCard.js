import React from 'react';
import Card from 'react-bootstrap/Card';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Container from "react-bootstrap/Container";
import Image from 'react-bootstrap/Image';
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import FormGroup from 'react-bootstrap/FormGroup';
import Table from 'react-bootstrap/Table';
import CustomFormGroup from './CustomFormGroup';
import ListGroup from 'react-bootstrap/ListGroup';



const MediaCard = (props) => {
    return (
        <>
        
            <Card style={{width: '30rem', marginBottom: '2rem'}}>
                <container className="embed-responsive embed-responsive-16by9">
                    <iframe title="User Media" className="embed-responsive-item" src= {props.media.url} allowFullScreen > </iframe>
                </container>
                <Card.Body>
                    <container>
                        <Row style = {{marginTop: '-1rem', borderBottom:'1px dashed lightgrey'}}>
                            <Card.Link href = "#">{props.media.poster}</Card.Link>
                            :{props.media.description}
                        </Row>
                        <Row >
                            <form onSubmit={props.submit}>
                                <Form.Row>
                                    <Row fluid style={{marginTop: '1rem', marginBottom: '1rem'}}>
                                    <Col style={{marginLeft: '1rem',marginRight: '-1.5rem'}}>
                                        <Form.Control key = {props.index} size="sm" value={props.comment} type="text" onChange={props.change} placeholder="Say something interesting..."/>
                                    </Col>
                                    <Col>
                                        <Button type = "submit" size = "sm" block disabled={props.validateForm}>Enter</Button>
                                    </Col>
                                    </Row>
                                </Form.Row>
                            </form>

                        </Row>
                    </container>
                </Card.Body>
                <Table striped borderless hover size = "sm" style = {{marginTop: '-2rem'}}>
                    <thead>
                        <th>
                        Username
                        </th>
                        <th>
                        Comment
                        </th>
                        <th>
                        Action
                        </th>
                    </thead>
                    <tbody>
                        {props.commentList}
                    </tbody>
                </Table>
                <Card.Footer style = {{fontSize: '10px'}}><em>Create_Time: {props.media.time}</em></Card.Footer>
            </Card>
        </>
    );
}
export default MediaCard;