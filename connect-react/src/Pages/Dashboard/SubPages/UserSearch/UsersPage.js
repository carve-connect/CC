import React, {Component} from 'react';
import axios from "axios";
import Col from "../Venues/VenueListPage";
import Form from 'react-bootstrap/Form';
import Button from 'react-bootstrap/Button';
import Row from 'react-bootstrap/Row';
import Container from 'react-bootstrap/Container';


class UsersPage extends Component {



    //I think i'll need the state information based on the future filtering options
    constructor(props){
        super(props);
        this.state = {
            users: {},
            isUserLoggedIn: props.match.params.number === localStorage.getItem('userId'),
            usersLength: 0
        }
    }

    componentWillMount() {
        // Getting the user id from the url param
        axios.get(`http://localhost:8000/users`)
            .then(res => {
                this.setState({
                    venues: res.data.users[0],
                    venuesLength: res.data.users[0].length
                });
            })
    }



    render(){
        if(this.state.usersLength > 0){
            return (
                <>
                    <h1>User's Page</h1>
                    <Container>
                        <Row style = {{marginTop: '40px'}}>
                            <h1>Users</h1>
                        </Row>
                        <Row style = {{marginTop: '45px'}}>
                            <Col md={{ span: 6, offset: 1 }}>
                                <Form.Control type="text" placeholder="Search" />
                            </Col>
                            <Button variant="link">+Filters</Button>
                        </Row>

                        <div style = {{marginTop: '20px', borderBottom: '1px solid lightgray'}}> </div>
                    </Container>
                </>
            );
        } else {
            return (
                <div>
                    <h1 className="fa fa-spinner fa-spin" style={{position: 'absolute', left: '50%', top: '50%'}}>Loading! </h1>
                </div>
            );
        }
    }
}export default UsersPage;



