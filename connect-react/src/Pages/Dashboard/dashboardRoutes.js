import {Route, Switch} from "react-router-dom";
import ProfilePage from "./SubPages/Profile/ProfilePage";
import VenuePage from "./SubPages/Venues/VenuePage";
import VenueListPage from "./SubPages/Venues/VenueListPage";
import MessagesPage from "./SubPages/Messages/MessagesPage";
import NotificationsPage from "./SubPages/Notifications/NotificationsPage";
import NotificationsPageInbox from "./SubPages/Notifications/NotificationsPageInbox";
import NotificationsPageOutbox from "./SubPages/Notifications/NotificationsPageOutbox";
import MessagesPageInbox from "./SubPages/Messages/MessagesPageInbox";
import MessagesPageOutbox from "./SubPages/Messages/MessagesPageOutbox";
import FeedPage from "./SubPages/Feed/FeedPage";
import UsersPage from "./SubPages/UserSearch/UsersPage";
import ListingPage from "./SubPages/ListingPage/ListingPage";
import ExplorePage from "./SubPages/Explore/explorepage";
import React from "react";

const routes = (
    <Switch>

        {/* Remember to parse integer because the number is returned a string */}
        {/* Can be accessed by props.match.params.number in Profile Page.... */}
        <Route path="/dashboard/profile/:number" component={ProfilePage}/>
        <Route path="/dashboard/venues/:number" component={VenuePage}/>
        <Route path="/dashboard/venues" component={VenueListPage}/>
        <Route path="/dashboard/messages" component={MessagesPage}/>
        <Route path="/dashboard/notifications" component={NotificationsPage}/>
        <Route path="/dashboard/notinbox" component={NotificationsPageInbox}/>
        <Route path="/dashboard/notoutbox" component={NotificationsPageOutbox}/>
        <Route path="/dashboard/inbox" component={MessagesPageInbox}/>
        <Route path="/dashboard/outbox" component={MessagesPageOutbox}/>
        <Route path="/dashboard/feed" component={FeedPage}/>
        <Route path="/dashboard/users" component={UsersPage}/>
        <Route path="/dashboard/listings" component={ListingPage}/>
        <Route path="/dashboard/explore" component={ExplorePage}/>

    </Switch>
);

export default routes;