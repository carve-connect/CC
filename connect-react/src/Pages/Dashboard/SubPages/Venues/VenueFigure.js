import React from 'react';
import Figure from 'react-bootstrap/Figure';
import {Link} from "react-router-dom";

const VenueFigure = (props) => {
    return (
        <Figure style={{}}>
            <Link to={props.href} style={{paddingBottom: "20px"}}>
                <Figure.Caption style={{textAlign: 'center'}}>
                    <Link to={props.href}> {props.name}</Link>
                </Figure.Caption>
                <Figure.Image
                    style={{border: '1px solid black'}}
                    thumbnail
                    height={400}
                    width={400}
                    src= {props.img}
                />

            </Link>


        </Figure>
    );
};

export default VenueFigure;