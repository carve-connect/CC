import React, {Component} from 'react';
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import axios from 'axios';
import ListGroup from 'react-bootstrap/ListGroup';
import Form from 'react-bootstrap/Form';
import CustomFormGroup from "./CustomFormGroup";
import FormGroup from 'react-bootstrap/FormGroup';
import Table from 'react-bootstrap/Table';
import CardColumns from 'react-bootstrap/CardColumns'
import { Container } from 'react-bootstrap';
import MediaCard from './MediaCard';



export default class MediaGroup extends Component {
    constructor(props) {
        super(props);
        this.state = {
            media_id: 0,
            poster: 0,
            carve: 0, 
            profile: 0,
            venue: 0,
            url: "",
            mediaInfo: {},
            mediaComments: {},
            description: "", 
            time: "",
            comment: "",
        };


    }


  

    componentWillMount() {
        axios.get(`http://localhost:8000/media/${this.props.type}/${this.props.content_id}/`)
            .then(res => {
                this.setState({
                    mediaInfo: res.data.results[0],
                });
            });

        axios.get(`http://localhost:8000/comments`)
            .then(res => {
                this.setState({
                    mediaComments: res.data.results[0]
                });
            });
        }

        createGrid = (media, commentList) => {
            let length = this.state.mediaInfo.length;
            let div = [];
            let row = [];

            for(let k =0 ; k < 1; k++){
                row.push(
                    <Col key={k}>
                        <MediaCard media={media} submit={this.onSubmit} changeComment={this.onSetComment} comment={this.state.comment} commentList={commentList}/>
                    </Col>
                );
            }
            div.push(
                    <Row key={Math.random(50)}>
                        {row}
                    </Row>  
            );

            return div;
        };


    render() {
        let mediaList;
        let commentList;
        
        if(this.state.mediaInfo.length > 0){
            mediaList = this.state.mediaInfo.map((media, index) => {
                
                if(this.state.mediaComments.length > 0){
                    commentList = this.state.mediaComments.map((com, index) => {
                        if(com.media === media.media_id){
                            return (
                                <tr key = {index}>
                                    <td>{com.poster}</td>
                                    <td>{com.comment}</td>
                                    <td>3 mins ago</td>
                                </tr>
                            );
                            }else{
                                return(<></>)
                            }
                    });
                }
                return (
                        <Container style={{display: 'flex', flexWrap: 'wrap'}}>
                            {this.createGrid(media, commentList)}
                        </Container>
                        
                ) //return
            });
        }
        return (
            <>
    
                <ListGroup variant="flush" defaultActiveKey="1" >
                    {mediaList}
                </ListGroup>
    
            </>
        )
    }
    
}//class