var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('../middleware/users/mediaFunctions');


// Grabs all medias from db
router.get('/', (req,res) => {
    userId = req.params.userId;
    functions.usersAllMediaGet(userId, res);
});


// Creates a new media
router.post('/', (req,res) => {
    const {poster,url,description,carve,venue,profile} = req.body;
    functions.usersAllMediaUpdate([poster,url,description,carve,venue,profile], res);
});


// updates all medias
router.put('/', (req,res) => {
    functions.usersAllMediaUpdate(res);

});


// updates all medias
router.patch('/', (req,res) => {
    functions.usersAllMediaUpdate(res);

});


// deletes all medias
router.delete('/', (req,res) => {
    functions.usersAllMediaDelete(res);

});


// Grab specific media by their id
router.get('/:mediaId', (req,res) => {
    const mediaId = req.params.mediaId;
    functions.userMediaGet(mediaId, res);

});


// updates media
router.put('/:mediaId', (req,res) => {
    const mediaId = req.params.mediaId;
    const {poster,url,description,carve,venue,profile} = req.body;
    functions.usersMediaUpdate(mediaId, [poster,url,description,carve,venue,profile], res);

});


// updates all medias
router.patch('/:mediaId', (req,res) => {
    const mediaId = req.params.mediaId;
    const {poster,url,description,carve,venue,profile} = req.body;
    functions.usersMediaUpdate(mediaId, [poster,url,description,carve,venue,profile], res);

});


// deletes media
router.delete('/:mediaId', (req,res) => {
    const mediaId = req.params.mediaId;
    functions.usersMediaDelete(mediaId, res);

});


module.exports = router;