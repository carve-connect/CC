import React from 'react';
import Figure from 'react-bootstrap/Figure';
import {Link} from "react-router-dom";

const UserFigure = (props) => {
    return (
        <Figure >
            <Link to={props.href}>
                <Figure.Image 
                    style = {{marginTop: '30px',border: '1px solid black'}} 
                    thumbnail
                    height={400}
                    width={400}
                    src= {props.img}
                />
            </Link>

            <Figure.Caption style = {{textAlign: 'center'}}>
                <Link to={props.href}>{props.name}
                <i className="fa fa-camera fa-spin"
                   style={{color: "skyblue"}}/>
                <i className="fa fa-shield fa-spin"
                   style={{color: "skyblue"}}/>
                </Link>
            </Figure.Caption>
        </Figure>
    );
};

export default UserFigure;
