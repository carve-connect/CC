import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';


import dogskate from "../../../../images/dogskate.jpeg";
import dogphoto from "../../../../images/dogphoto.jpeg";
import dogsurf from "../../../../images/dogsurf.jpeg";
import mountain from "../../../../images/mountain.jpeg";
import beach from "../../../../images/beach.jpeg";
import skate from "../../../../images/skatedude.jpeg";
import React, {Component} from "react";
import FeaturedUserCard from '../../../../components/FeaturedUserCard';

class ExplorePage extends Component {
    render() {
        return (

            <>

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
                            <FeaturedUserCard title="Featured User 1" img={dogskate} text="I love Carve Connect!"/>
                        </Col>
                        <Col>
                            <FeaturedUserCard title="Featured User 2" img={dogphoto}
                                              text="Filming is an art and it's my passion."/>
                        </Col>
                        <Col>
                            <FeaturedUserCard title="Featured User 3" img={dogsurf} text="Sports are cool."/>
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
                            <FeaturedUserCard title="Featured Venue 1" img={mountain} text="Great place to shred."/>
                        </Col>
                        <Col>
                            <FeaturedUserCard title="Featured Venue 2" img={beach} text="Totally Tubular"/>
                        </Col>
                        <Col>
                            <FeaturedUserCard title="Featured Venue 3" img={skate} text="Great place to skate."/>
                        </Col>
                    </Row>
                </Container>

            </>
        );
    }
}

export default ExplorePage;
