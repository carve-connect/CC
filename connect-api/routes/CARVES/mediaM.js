var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('./middleware/carves/mediaFunctions');



// Grabs all medias from db
router.get('/', (req,res) => {
    carveId = req.params.carveId;
    functions.carveAllMediaGet(carveId, res);

});


// Creates a new media
router.post('/', (req,res) => {
    const {poster,url,description,carve,venue,profile} = req.body;
    functions.carveMediaPost([poster,url,description,carve,venue,profile], res);
});

// updates all medias
router.put('/', (req,res) => {
    functions.carveAllMediaPut(res);
});

// updates all medias
router.patch('/', (req,res) => {
    functions.carveAllMediaPatch(res);
});

// deletes all medias
router.delete('/', (req,res) => {
    functions.carveAllMediaDelete(res);
});

// Grab specific media by their id
router.get('/:mediaId', (req,res) => {
    const mediaId = req.params.mediaId;
    functions.carveMediaGet(mediaId, res);
});

// updates a specific media resource
router.put('/:mediaId', (req,res) => {
    const mediaId = req.params.mediaId;
    const {poster,url,description,carve,venue,profile} = req.body;
    functions.carveMediaPut(mediaId,  [poster,url,description,carve,venue,profile], res);
});

// updates a specific media resource
router.patch('/:mediaId', (req,res) => {
    const mediaId = req.params.mediaId;
    const {poster,url,description,carve,venue,profile} = req.body;
    functions.carveMediaPatch(mediaId, [poster,url,description,carve,venue,profile], res);
});

// deletes a media specific media resource
router.delete('/:mediaId', (req,res) => {
    const mediaId = req.params.mediaId;
    functions.carveMediaDelete(mediaId, res);
});


module.exports = router;