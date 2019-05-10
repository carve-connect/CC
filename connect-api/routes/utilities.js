var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../db');
const axios = require('axios');

router.get('/darkSky/:venueId', (req, res) => {

    const venueId = req.params.venueId;
    get_venue = "call get_venue(?)";
    con.query(get_venue, [venueId], (err, venue) => {
        if (err) throw err;
        let lat = venue[0][0].lattitude;
        let long = venue[0][0].longitude;

        console.log("https://api.darksy.net/forecast/" + process.env.DS_API + "/" + lat + "/" + long);
        //https://api.darksky.net/forecast/7314cee777ad64147ff9ff3b5c0e9e47/37.8267,-122.4233
        axios.get(`https://api.darksky.net/forecast/${process.env.DS_API}/${lat},${long}`)
            .then(response => {
                //console.log(response);
                res.status(201).json(response.data).end();
            })
            .catch(error => {
                console.log(error);
            });

        //results.data.currently.temperature
        //my ds api key is  place in .env if you get your own it might be better though
        //DS_API=bbff14bd3175f4c57780384515a1ceb3
    });
});

// API call that gets our weather information
router.get('/darkSky/past/:venueId', (req, res) => {

    const venueId = req.params.venueId;
    var time = req.query.time;
    get_venue = "call get_venue(?)";
    con.query(get_venue, [venueId], (err, venue) => {
        if (err) throw err;

        let lat = venue[0][0].lattitude;
        let long = venue[0][0].longitude;
        // Go to the API site to get the information
        console.log("https://api.darksy.net/forecast/" + process.env.DS_API + "/" + lat + "/" + long + "/" + time);

        axios.get(`https://api.darksky.net/forecast/${process.env.DS_API}/${lat},${long},${time}?`)
            .then(response => {

                console.log(response);
                res.status(201).json(response.data).end();
            })
            .catch(error => {
                console.log(error);
            });
    });
});


module.exports = router;