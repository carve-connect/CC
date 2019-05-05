var express = require('express');
var router = express.Router({mergeParams: true});
const con = require('../../db');
var functions = require('../middleware/carves/commentFunctions');



// Grabs all comments from db
router.get('/', (req,res) => {
    carveId = req.params.carveId;
    functions.carveCommentsGet(carveId, res);

});

// Creates a new comment
router.post('/', (req,res) => {
    const {poster,carve,media,profile,comment} = req.body;
    functions.carveCommentsPost([poster,carve,media,profile,comment],res);
});

// updates all comments
router.put('/', (req,res) => {
    functions.carveCommentsPut(res);
});

// updates all comments
router.patch('/', (req,res) => {
    functions.carveCommentsPatch(res);
});

// deletes all comments
router.delete('/', (req,res) => {
    functions.carveCommentsDelete(res);
});

// Grab specific comment by their id
router.get('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    functions.carveCommentGet(commentId, res);
});

// updates comment
router.put('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    const {poster,carve,media,profile,comment} = req.body;
    functions.carveCommentPut(commentId,[poster,carve,media,profile,comment], res);
});

// updates all comments
router.patch('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    const {poster,carve,media,profile,comment} = req.body;
    functions.carveCommentPatch(commentId,[poster,carve,media,profile,comment], res);
});

// deletes comment
router.delete('/:commentId', (req,res) => {
    const commentId = req.params.commentId;
    functions.carveCommentDelete(commentId, res);
});

module.exports = router;