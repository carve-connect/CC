import React from 'react';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Container from "react-bootstrap/Container";
import Image from 'react-bootstrap/Image';
import EditProfileModal from "./EditProfileModal";
import Button from 'react-bootstrap/Button';


const ProfileInfoCard = (props) => {
    let editButton;
    if(props.loggedIn){
        editButton = 
                    <Col xs={1} style={{fontSize: '24px'}}>
                        <Button onClick={props.handleShow} variant="link" style={{color: 'black'}}><i class="fa fa-ellipsis-h fa-10x"></i></Button>
                    </Col>;
    }
    else{
        editButton = "";
    }
    return (

        <div style={{width: "100%"}}>
        <EditProfileModal handleRefresh={props.refresh} id={props.id} user={props.user} show={props.show} handleClose={props.close} />
            <Container  
                style= {{
                    width: '150%',
                    height: '120%',
                    border: 'solid 1px #555',
                    backgroundColor: "darkgrey",
                    boxShadow:  '0 0 10px 5px rgba(0,0,0,0.6)',
                    borderRadius: '10px',
                    justifyContent: 'center'

                }}>
                <Row>
                    <Col className="col-3">
                        <Image rounded src = {props.img} width = "400px" style={{border: '3px solid black'}}></Image>
                    </Col>
                    <Col style={{marginLeft: '12rem'}}>
                        <table>
                            <tbody>
                            <tr>
                                <td><h1>{props.user.username}</h1></td>
                            </tr>
                            <tr>
                                <td><h2>{props.user.first_name} {props.user.last_name}</h2></td>

                                </tr>
                                <tr>
                                    <td>{props.user.type}</td>
                                </tr>
                                <tr>
                                    <td>{props.user.snow_sports}</td>
                                </tr>
                                <tr>
                                    <td>{props.user.water_sports}</td>
                                </tr>
                                <tr>
                                    <td>{props.user.land_sports}</td>
                                </tr>
                            <tr>
                                <td>{props.user.air_sports}</td>
                            </tr>
                                <tr>
                                    <td><h3>About me:</h3> {props.user.description}</td>
                                </tr>
                            </tbody>
                        </table>
                    </Col>
                    <Col>
                        <Row>
                            <div style={{paddingTop: "50%"}}>
                                <Row> {props.user.username} has {props.bud} Buddies</Row>
                                <Row> has {props.fol} Followers</Row>
                                <Row> Follows {props.foll} other Users</Row>
                                <Row> Follows {props.vfol} Venues</Row>
                            </div>
                        </Row>

                    </Col>
                    {editButton}

                    
                </Row>
            </Container>
        </div>

    );
};

export default ProfileInfoCard;