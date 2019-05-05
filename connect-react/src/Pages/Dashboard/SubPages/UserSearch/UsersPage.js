import React, {Component} from 'react';
import Col from "react-bootstrap/Col";
import Ph1 from "../../../../images/Ph1.jpeg";
import Sk2 from "../../../../images/Sk2.jpeg";
import Form from 'react-bootstrap/Form';
import Button from 'react-bootstrap/Button';
import Row from 'react-bootstrap/Row';
import Container from 'react-bootstrap/Container';

import UserFigure from "./UserFigure";
import UserApi from '../../../../api/UserApi';
import queryString from 'query-string';
import SEAN from "../../../../images/SEAN.jpeg";
import DHRUV from "../../../../images/DHRUV.jpg";
import BALIGA from "../../../../images/BALIGA.png";
import dogskate from "../../../../images/dogskate.jpeg";
import dogsurf from "../../../../images/dogsurf.jpeg";
import FRED from "../../../../images/FRED.jpeg";
import dog from "../../../../images/dog.jpg";
import Su1 from "../../../../images/Su1.jpeg";
import Su2 from "../../../../images/Su2.jpg";
import Su3 from "../../../../images/Su3.jpeg";
import Sn1 from "../../../../images/Sn1.jpeg";
import Sn2 from "../../../../images/Sn2.jpg";
import Sn3 from "../../../../images/Sn3.jpeg";
import SnowProfilePic from "../../../../images/Sn3.jpeg";
import Sn4 from "../../../../images/Sn4.jpeg";
import Sn5 from "../../../../images/Sn5.jpeg";
import Ph2 from "../../../../images/Ph2.jpeg";
import Ph3 from "../../../../images/Ph3.jpeg";
import SnMb1 from "../../../../images/SnMb1.jpeg";
import SkyDive1 from "../../../../images/SkyDive1.jpeg";
import SkyDive2 from "../../../../images/SkyDive2.jpeg";
import Dr1 from "../../../../images/Dr1.jpeg";
import Dr2 from "../../../../images/Dr2.jpeg";
import MB1 from '../../../../images/MB1.jpeg';
import MB2 from '../../../../images/MB2.jpeg';
import MB3 from '../../../../images/MB3.jpeg';
import MB4 from '../../../../images/MB4.jpeg';
import Par1 from '../../../../images/Par1.jpeg';
import Sk1 from '../../../../images/Sk1.jpeg';
import Ska1 from '../../../../images/Ska1.jpeg';
import Ska2 from '../../../../images/Ska2.jpeg';
import Ska3 from '../../../../images/Ska3.jpeg';
import Ska4 from '../../../../images/Ska4.jpeg';
import SkPh1 from '../../../../images/SkPh1.jpeg';
import SkPh2 from '../../../../images/SkPh2.jpeg';
import JRIDER from '../../../../images/JRIDER.png'

class UsersPage extends Component {

    //I think i'll need the state information based on the future filtering options
    constructor(props){
        super(props);
        this.state = {
            users: [],
            searchTerm: queryString.parse(props.location.search).search
        };

        this.fetchUsers = this.fetchUsers.bind(this);
        this.onSubmit = this.onSubmit.bind(this);
    }

    // Called before component mounts to the screen
    componentWillMount() {
        this.fetchUsers(this.state.searchTerm);
    }

    // If props change, update state
    componentWillReceiveProps(nextProps) {
        let newSearch = queryString.parse(nextProps.location.search).search;
        if(newSearch !== this.state.searchTerm) {
            this.setState({searchTerm: newSearch}, () => { this.fetchUsers(newSearch) });
        }
    }

    // Grabs users based on the search term presented
    fetchUsers(searchTerm) {
        UserApi.searchForUsers(searchTerm)
          .then( users => {
              this.setState({ users });
              console.log('Users found:', users);
          })
          .catch(err => {
              console.log('Error:', err)
          });
    }

    // Handle state change of the searchTerm and the enter key
    handleChange = e => {
        this.setState({ searchTerm: e.target.value });
    };

    onSubmit(e) {
        e.preventDefault();
        this.fetchUsers(this.state.searchTerm);
    }


    createDiv = () => {
        const users = this.state.users;
        const length = this.state.users.length;

        //let flag = false;
        let div = [];

        // Guessing j represents how many rows we want? Not sure

        let row = [];

        for(let k =0 ; k < length; k++){


            let pic;
            if (users[k].photo === "SEAN")
                pic = SEAN;
            else if (users[k].photo === "DHRUV")
                pic = DHRUV;
            else if (users[k].photo === "JRIDER")
                pic = JRIDER
            else if (users[k].photo === "BALIGA")
                pic = BALIGA;
            else if (users[k].photo === "dogskate")
                pic = dogskate;
            else if (users[k].photo === "dogsurf")
                pic = dogsurf;
            else if (users[k].photo === "FRED")
                pic = FRED;
            else if (users[k].photo === "dog")
                pic = dog;
            else if (users[k].photo === "Su1")
                pic = Su1;
            else if (users[k].photo === "Sn1")
                pic = Sn1;
            else if (users[k].photo === "Sn4")
                pic = Sn4;
            else if (users[k].photo === "Ph1")
                pic = Ph1;
            else if (users[k].photo === "Ph2")
                pic = Ph2;
            else if (users[k].photo === "SnMb1")
                pic = SnMb1;
            else if (users[k].photo === "SkyDive1")
                pic = SkyDive1;
            else if (users[k].photo === "Dr1")
                pic = Dr1;
            else if (users[k].photo === "Sn2")
                pic = Sn2;
            else if (users[k].photo === "Sn3")
                pic = Sn3;
            else if (users[k].photo === "Sn5")
                pic = Sn5;
            else if (users[k].photo === "Su2")
                pic = Su2;
            else if (users[k].photo === "Su3")
                pic = SnMb1;
            else if (users[k].photo === "SkyDive2")
                pic = SkyDive2;
            else if (users[k].photo === "Dr2")
                pic = Dr2;
            else if (users[k].photo === "Ph3")
                pic = Ph3;
            else if (users[k].photo === "MB1")
                pic = MB1;
            else if (users[k].photo === "MB2")
                pic = MB2;
            else if (users[k].photo === "MB3")
                pic = MB3;
            else if (users[k].photo === "MB4")
                pic = MB4;
            else if (users[k].photo === "Par1")
                pic = Par1;
            else if (users[k].photo === "Sk1")
                pic = Sk1;
            else if (users[k].photo === "Sk2")
                pic = Sk2;
            else if (users[k].photo === "Ska1")
                pic = Ska1;
            else if (users[k].photo === "Ska2")
                pic = Ska2;
            else if (users[k].photo === "Ska3")
                pic = Ska3;
            else if (users[k].photo === "Ska4")
                pic = Ska4;
            else if (users[k].photo === "SkPh1")
                pic = SkPh1;
            else if (users[k].photo === "SkPh2")
                pic = SkPh2;
            else
                pic = SnowProfilePic;


            row.push(
                <Col key={k}>
                    <UserFigure name={users[k].username} img={pic} href={'/dashboard/profile/' + users[k].user_id}/>
                </Col>
            );
        }
        div.push(
            <Row key={Math.random(50)} style={{flex: '0 0 auto'}}>
                {row}
            </Row>
        );

        return div;
    };

    render(){
        return (
            <Container>
                <Row style = {{marginTop: '40px'}}>
                    <h1>Users</h1>
                </Row>
                <Row style = {{marginTop: '45px'}}>
                    <Col md={{ span: 6, offset: 1 }}>
                        <Form onSubmit={this.onSubmit}>
                            <Form.Control type="text" placeholder="Search" onChange={this.handleChange} />
                        </Form>
                    </Col>
                    <Button variant="link">+Filters</Button>
                </Row>

                <div style = {{marginTop: '20px', borderBottom: '1px solid lightgray'}}> </div>

                {/* Horizontal scrolling effect */}

                <div>
                    {(this.state.users.length > 0) ? this.createDiv() : 'No users found...'}
                </div>
            </Container>
        );
    }
} export default UsersPage;



