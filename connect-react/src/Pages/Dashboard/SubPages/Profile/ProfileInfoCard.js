import React from 'react';
import Card from 'react-bootstrap/Card';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Container from "react-bootstrap/Container";
import Image from 'react-bootstrap/Image';



const ProfileInfoCard = (props) => {
    return (
        <>
            <Container  
                style= {{
                    width: '75%',
                    height:'50%',
                    border: 'solid 1px #555',
                    backgroundColor: '#74bde8',
                    boxShadow:  '0 0 10px 5px rgba(0,0,0,0.6)',
                    borderRadius: '10px',
                    padding: '.5rem',
                    justifyContent: 'center'
                }}>
                <Row>
                    <Col className="col-3">
                        <Image rounded src = {props.img} width = "400px" style={{border: '3px solid black'}}></Image>
                    </Col>
                    <Col style={{marginLeft: '12rem'}}>
                        <table>
                            <thead>

                            </thead>
                            <tbody>
                                <tr>
                                    <td><h1>{props.firstName} {props.lastName}</h1></td>
                                    <td><strong>@{props.username}</strong></td>
                                </tr>
                                <tr>
                                    <td>{props.type}</td>
                                </tr>
                                <tr>
                                    <td>{props.snow}</td>
                                </tr>
                                <tr>
                                    <td>{props.water}</td>
                                </tr>
                                <tr>
                                    <td>{props.land}</td>
                                </tr>
                                <tr>
                                    <td><h3>About me:</h3> {props.description}</td>
                                </tr>
                            </tbody>
                        </table>
                        
                    </Col>

                    
                </Row>
            </Container>

        </>
    );
};

export default ProfileInfoCard;