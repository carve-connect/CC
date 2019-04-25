import React from 'react';

import PostButton from './UserContent/PostButton';
import CarvesButton from './UserContent/CarvesButton';
import MediaButton from './UserContent/MediaButton';


class UserButtonMenu extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            name: 'carves'
        };
        this.handleInfo = this.handleInfo.bind(this);
        this.handleCarves = this.handleCarves.bind(this);
        this.handleMedia = this.handleMedia.bind(this);
    }

    handleInfo() {
        this.setState({name: 'info'});
    }

    handleCarves() {
        this.setState({name: 'carves'});
    }

    handleMedia() {
        this.setState({name: 'media'});
    }

    render() {
        let component;

        if (this.state.name === 'post') {
            component = PostButton;
        } else if (this.state.name === 'carves') {
            component = CarvesButton;
        } else {
            component = MediaButton;
        }


        return (
            <>


                <div>
                    {component}
                </div>

            </>
        );
    }
}

export default UserButtonMenu;