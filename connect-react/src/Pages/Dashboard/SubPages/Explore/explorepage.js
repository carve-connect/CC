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
import FeaturedUserCard from '../../../../components/ProfileComponents/FeaturedUserCard';
import {Link} from "react-router-dom";

class ExplorePage extends Component {
    render() {
        return (

            <>
                <h1 style={{color: "blue"}}>EXPLORE CARVE CONNECT</h1>
                <h1 className='border-bottom' style={{
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
                            <Link to={'/dashboard/profile/3'}>JRider's profile</Link>
                        </Col>
                        <Col>
                            <FeaturedUserCard title="Frosty" img={dogphoto}
                                              text="Filming is an art and it's my passion."/>
                            <Link to={'/dashboard/profile/1'}> Frosty's profile</Link>
                        </Col>
                        <Col>
                            <FeaturedUserCard title="balthazar" img={dogsurf}
                                              text="Shred the gnar man, shred the gnar."/>
                            <Link to={'/dashboard/profile/4'}> Balthazar's Profile </Link>
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
                            <Link to={`/dashboard/venues/14`}> page</Link>
                        </Col>
                        <Col>
                            <FeaturedUserCard title="Waikiki Beach" img={beach} text="Totally Tubular"/>
                            <Link to={`/dashboard/venues/28`}> page</Link>
                        </Col>
                        <Col>
                            <FeaturedUserCard title="Burnside Skate Park" img={skate} text="Great place to skate."/>
                            <Link to={`/dashboard/venues/46`}> page</Link>
                        </Col>
                    </Row>
                </Container>

            </>
        );
    }
}

export default ExplorePage;
