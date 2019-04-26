var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../db');
const axios = require('axios');

router.get('/darkSky/:venueId', (req, res) => {

    const venueId = req.params.venueId;
    get_venue = "call get_venue(?)";
    con.query(get_venue, [venueId], (err, results) => {
        if (err) throw err;

    });


    const results = await axios.get(
        `https://api.darksky.net/forecast/${process.env.DS_API}/${venue.latitude}/${venue.longitude}`
    );

    res.status(201).jsonp({results}).end;
    //results.data.currently.temperature
    //my ds api key is  place in .env if you get your own it might be better though
    //DS_API=bbff14bd3175f4c57780384515a1ceb3
});
