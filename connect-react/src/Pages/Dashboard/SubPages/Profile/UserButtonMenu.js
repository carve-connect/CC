import React from 'react';

import InfoButton from './UserContent/InfoButton';
import CarvesButton from './UserContent/CarvesButton';
import MediaButton from './UserContent/MediaButton';

class VenueButtonMenu extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            name: 'info'
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
        const state = this.sel.state;
        let component;

        if (state === 'info') {
            component = InfoButton;
        } else if (state === 'carves') {
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

export default VenueButtonMenu;