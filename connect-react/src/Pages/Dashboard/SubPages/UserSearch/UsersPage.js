import React, {Component} from 'react';
import Col from "react-bootstrap/Col";
import Mount_Snow_BG from "../../../../images/mount_snow_bg.png";

import Form from 'react-bootstrap/Form';
import Button from 'react-bootstrap/Button';
import Row from 'react-bootstrap/Row';
import Container from 'react-bootstrap/Container';

import UserFigure from "./UserFigure";
import UserApi from '../../../../api/UserApi';
import queryString from 'query-string';


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
            row.push(
                <Col key={k}>
                    <UserFigure name={users[k].username} img={Mount_Snow_BG} href={'/dashboard/profile/' + users[k].user_id}/>
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



