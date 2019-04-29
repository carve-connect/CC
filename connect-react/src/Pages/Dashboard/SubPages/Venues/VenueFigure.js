import React from 'react';
import Figure from 'react-bootstrap/Figure';


const VenueFigure = (props) => {
    return (
        <Figure style={{}}>
            <a href={props.href} style={{paddingBottom: "20px"}}>
                <Figure.Caption style={{textAlign: 'center'}}>
                    <a href={props.href}>{props.name}</a>
                </Figure.Caption>
                <Figure.Image
                    style={{border: '1px solid black'}}
                    thumbnail
                    height={400}
                    width={400}
                    src= {props.img}
                />

            </a>


        </Figure>
    );
};

export default VenueFigure;