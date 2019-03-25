import React, { Component } from 'react';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import Carousel from 'react-bootstrap/Carousel';
import Button from 'react-bootstrap/Button';
import Snow from '../../images/snow1.jpg';
import Skate from '../../images/skater1.jpeg';
import Surf from '../../images/surf1.jpg';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Dog from '../../images/dog.jpg';
import FeaturedUserCard from '../../components/FeaturedUserCard';
import Video_Placeholder from '../../images/video-placeholder.png';
import CarouselCaption from 'react-bootstrap/CarouselCaption';


class LogoutPage extends Component {
    constructor(props){
        super(props);
        localStorage.clear();
    }

    render() {
        return (

            <>

                {/* Sliding carousel */}
                <Carousel fade className="carousel" pauseOnHover={false}>
                    <Carousel.Item>
                        <img
                            className="d-block w-100"
                            src={Snow}
                            alt="First slide"
                        />
                        <CarouselCaption>
                            <Container>
                                <Row style = {{marginBottom: '20px', marginRight: '5px'}}>
                                    <Col>
                                        <Button href='/' variant="dark" size="lg">
                                            Return to Carve Connect
                                        </Button>
                                    </Col>
                                </Row>
                            </Container>
                        </CarouselCaption>
                    </Carousel.Item>
                </Carousel>
                <Container>
                    <Row>
                        <Col style = {{textAlign: 'left'}}>
                            <h1>Logout Successful</h1>
                            <p>
                                "Thank you for using Carve Connect, Have a Rad Day!"
                            </p>
                        </Col>
                    </Row>
                </Container>
            </>
        );
    }
}

export default LogoutPage;