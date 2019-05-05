import React from 'react';
import {Component} from 'react';
import {Link} from "react-router-dom";
import {DropdownButton, OverlayTrigger, Tooltip, Dropdown} from 'react-bootstrap';


export default class NameDropdown extends Component{
    constructor(props){
        super(props);
        this.state = {
            showDropdown: false,
        }
        this.handleDropdown = this.handleDropdown.bind(this);
    }

    handleDropdown(){
        this.setState({
            showDropdown: true
        })
    }

    render(){
        let dropdown;
            dropdown = 
                <DropdownButton size="sm" variant="link" title= {this.props.name}>
                            <Dropdown.Item >
                    
                                   <Link to={this.props.link}>View Profile</Link> 
                             

                            </Dropdown.Item>

                            <Dropdown.Item >
                          
                                    Send Message
                                
                            </Dropdown.Item>
                    </DropdownButton>


        return (
            <div>
                {dropdown}
            </div>
        );

    }
}