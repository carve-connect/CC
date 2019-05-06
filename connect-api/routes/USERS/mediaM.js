var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('../middleware/users/mediaFunctions');


// Grabs all medias from db
router.get('/', (req,res) => {
    userId = req.params.userId;

});


// Creates a new media
router.post('/', (req,res) => {
    const {poster,url,description,carve,venue,profile} = req.body;

});


// updates all medias
router.put('/', (req,res) => {

});


// updates all medias
router.patch('/', (req,res) => {

});


// deletes all medias
router.delete('/', (req,res) => {

});


// Grab specific media by their id
router.get('/:mediaId', (req,res) => {
    const mediaId = req.params.mediaId;

});


// updates media
router.put('/:mediaId', (req,res) => {
    const mediaId = req.params.mediaId;
    const {poster,url,description,carve,venue,profile} = req.body;

});


// updates all medias
router.patch('/:mediaId', (req,res) => {
    const mediaId = req.params.mediaId;
    const {poster,url,description,carve,venue,profile} = req.body;

});


// deletes media
router.delete('/:mediaId', (req,res) => {
    const mediaId = req.params.mediaId;

});


module.exports = router;