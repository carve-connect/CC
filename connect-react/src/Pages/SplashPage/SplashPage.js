import React, {Component} from 'react';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import Carousel from 'react-bootstrap/Carousel';
import Button from 'react-bootstrap/Button';
import Snow from '../../images/winter.jpeg';
import Skate from '../../images/skater1.jpeg';
import Surf from '../../images/surf1.jpg';
import dirt from '../../images/mountain bike1.jpeg';
import drone from '../../images/drone guy1.jpeg';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import dogskate from '../../images/dogskate.jpeg';
import dogphoto from '../../images/dogphoto.jpeg';
import dogsurf from '../../images/dogsurf.jpeg';
import FeaturedUserCard from '../../components/ProfileComponents/FeaturedUserCard';
import CarouselCaption from 'react-bootstrap/CarouselCaption';
import TopNav1 from "./Navbarsplash";
import beach from '../../images/beach.jpeg';
import mountain from '../../images/mountain.jpeg';
import skate from '../../images/skatedude.jpeg';

class SplashPage extends Component {
    render() {
        return (

          <>
              <TopNav1/>
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
                    <Row style = {{marginBottom: '20px'}}>
                      <Col>
                        <Button href='/login' variant="dark" size="lg">
                          Login
                        </Button>
                      </Col>
                    </Row>
                    <Row>
                      <Col>
                        <Button href='/sign-up' variant="info" size="lg">
                          Sign Up
                        </Button>
                      </Col>
                    </Row>
                  </Container>
                </CarouselCaption>
              </Carousel.Item>
              <Carousel.Item>
                <img
                  className="d-block w-100"
                  src = {Skate}
                  alt="Third slide"
                />
                <CarouselCaption>
                <Container>
                    <Row style = {{marginBottom: '20px'}}>
                      <Col>
                        <Button href='/login' variant="dark" size="lg">
                          Login
                        </Button>
                      </Col>
                    </Row>
                    <Row>
                      <Col>
                      <Button href='/sign-up' variant="info" size="lg">
                          Sign Up
                        </Button>
                      </Col>
                    </Row>
                  </Container>
                </CarouselCaption>
              </Carousel.Item>
              <Carousel.Item>
                <img
                  className="d-block w-100"
                  src= {Surf}
                  alt="fourth slide"
                />
                <CarouselCaption>
                <Container>
                    <Row style = {{marginBottom: '20px'}}>
                      <Col>
                        <Button href='/login' variant="dark" size="lg">
                          Login
                        </Button>
                      </Col>
                    </Row>
                    <Row>
                      <Col>
                      <Button href='/sign-up' variant="info" size="lg">
                          Sign Up
                        </Button>
                      </Col>
                    </Row>
                  </Container>
                </CarouselCaption>
              </Carousel.Item>
                <Carousel.Item>
                    <img
                        className="d-block w-100"
                        src= {dirt}
                        alt="fifth slide"
                    />
                    <CarouselCaption>
                        <Container>
                            <Row style = {{marginBottom: '20px'}}>
                                <Col>
                                    <Button href='/login' variant="dark" size="lg">
                                        Login
                                    </Button>
                                </Col>
                            </Row>
                            <Row>
                                <Col>
                                    <Button href='/sign-up' variant="info" size="lg">
                                        Sign Up
                                    </Button>
                                </Col>
                            </Row>
                        </Container>
                    </CarouselCaption>
                </Carousel.Item>
                <Carousel.Item>
                    <img
                        className="d-block w-100"
                        src= {drone}
                        alt="sixth slide"
                    />
                    <CarouselCaption>
                        <Container>
                            <Row style = {{marginBottom: '20px'}}>
                                <Col>
                                    <Button href='/login' variant="dark" size="lg">
                                        Login
                                    </Button>
                                </Col>
                            </Row>
                            <Row>
                                <Col>
                                    <Button href='/sign-up' variant="info" size="lg">
                                        Sign Up
                                    </Button>
                                </Col>
                            </Row>
                        </Container>
                    </CarouselCaption>
                </Carousel.Item>
            </Carousel>


              <h1 style={{color: "blue"}}>EXPLORE CARVE CONNECT</h1><h1 className='border-bottom' style={{
              borderBottomColor: 'black',
              borderBottomWidth: "10px", width: '150%', borderThickness: "5px"
          }}></h1>
              {/* Featured User Cards */}
              <Container>
                  <Row>
                      <Col>
                          <h1 style={{textAlign: 'left', marginTop: '30px'}}>Featured Users</h1>
                          <h1 className='border-bottom' style={{
                              borderBottomColor: 'black',
                              borderBottomWidth: "10px", width: '150%', borderThickness: "5px"
                          }}></h1>
                      </Col>
                  </Row>
                  <Row style={{marginLeft: '75px', marginTop: '20px'}}>
                      <Col>
                          <FeaturedUserCard title="JRider" img={dogskate} text="Shredding is my life."/>

                      </Col>
                      <Col>
                          <FeaturedUserCard title="Frosty" img={dogphoto}
                                            text="Filming is an art and it's my passion."/>

                      </Col>
                      <Col>
                          <FeaturedUserCard title="balthazar" img={dogsurf}
                                            text="Shred the gnar man, shred the gnar."/>

                      </Col>
                  </Row>
              </Container>

              <Container>
                  <Row>
                      <Col>
                          <h1 style={{textAlign: 'left', marginTop: '30px'}}>Featured Venues</h1>
                          <h1 className='border-bottom' style={{
                              borderBottomColor: 'black',
                              borderBottomWidth: "10px", width: '150%', borderThickness: "5px"
                          }}></h1>
                      </Col>
                  </Row>
                  <Row style={{marginLeft: '75px', marginTop: '20px'}}>
                      <Col>
                          <FeaturedUserCard title="Mt Snow" img={mountain} text="Great place to shred."/>

                      </Col>
                      <Col>
                          <FeaturedUserCard title="Waikiki Beach" img={beach} text="Totally Tubular"/>

                      </Col>
                      <Col>
                          <FeaturedUserCard title="Burnside Skate Park" img={skate} text="Great place to skate."/>

                      </Col>
                  </Row>
              </Container>

            {/* About and Tour Container */}
            <Container>
              <Row> 
                <Col style = {{textAlign: 'left'}}>
                  <h1>About</h1>
                    <h3 className = 'border-bottom' style = {{ borderBottomColor: 'black',
                        borderBottomWidth: "10px", width: '150%', borderThickness:"5px" }}> </h3>
                  <p>
                  "Hello and welcome to carve connect. Carve Connect is a social media platform for extreme sports
                      athletes, those who film them, and fans to connect. The video below will take you on a tour.
                      Thanks for stopping by."
                  </p>

                </Col>
              </Row>
                <Row>

                </Row>
              <Row style = {{marginBottom: '50px'}}>
                <Col style = {{textAlign: 'left'}}>
                    <h3 className = 'border-bottom' style = {{ borderBottomColor: 'black',
                        borderBottomWidth: "10px", width: '150%', borderThickness:"5px" }}> </h3>
                  <h1>Tour</h1>
                  <div className = "text-center" >
                      <div className="embed-responsive embed-responsive-16by9">
                          <iframe width="560" height="315" src="https://www.youtube.com/embed/tBqGrY_qTRA"
                                  frameBorder="0"
                                  allow=""
                                  allowFullScreen></iframe>
                      </div>
                  </div>
                </Col>
              </Row>
            </Container>

            {/* Footer */}
            <Navbar bg="dark" variant="dark">
              <Nav className="mr-auto" style = {{height: '60px'}}>
              </Nav>
            </Navbar>


          </>
        );
    }
}

export default SplashPage;

