var express = require('express');
var router = express.Router();
var open = require('mac-open');

/* GET users listing. */
router.get('/', function(req, res, next) {
    open(req.query.path, { a: "Finder" }, function(error) {
        res.setHeader('Content-Type', 'application/json');
        if (error == null) {
            res.send(JSON.stringify({ message: 'Debug at: ' + req.query.path }));
        } else {
            res.send(JSON.stringify({ message: 'Oppss, The debug directory\"' + req.query.path + '\" could not be found.'}));
        }
    });
});

module.exports = router;
