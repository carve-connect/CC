import React from 'react';
import Figure from 'react-bootstrap/Figure';
import {Link} from "react-router-dom";
import NameDropdown from '../../../../components/NameDropdown'

const UserFigure = (props) => {
    return (
        <Figure>
                <Figure.Image 
                    style = {{marginTop: '30px',border: '1px solid black'}} 
                    thumbnail
                    
                    height={400}
                    width={400}
                    src= {props.img}
                />


            <Figure.Caption style = {{textAlign: 'center'}}>
                <NameDropdown link={props.href} name={props.name}/>
            </Figure.Caption>
        </Figure>
    );
};

export default UserFigure;
