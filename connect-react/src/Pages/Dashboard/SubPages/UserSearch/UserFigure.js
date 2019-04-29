import React from 'react';
import Figure from 'react-bootstrap/Figure';


const UserFigure = (props) => {
    return (
        <Figure >
            <a href = {props.href}>
                <Figure.Image 
                    style = {{marginTop: '30px',border: '1px solid black'}} 
                    thumbnail
                    height={400}
                    width={400}
                    src= {props.img}
                />
            </a>

            <Figure.Caption style = {{textAlign: 'center'}}>
                <a href={props.href}>{props.name} </a>
                <i className="fa fa-camera fa-spin"
                   style={{color: "skyblue"}}/>
                <i className="fa fa-shield fa-spin"
                   style={{color: "skyblue"}}/>
            </Figure.Caption>
        </Figure>
    );
};

export default UserFigure;
