
/**
 * Created by Joshua.Austill on 12/18/2017.
 */
const express = require("express");
const app = express();
const compression = require('compression');
app.use(compression());
const bodyParser = require("body-parser"),
    path = require("path");

app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

// global variable for the running directory, why isn't this a thing??
global.__appRoot = path.normalize(__dirname);

app.use(require('./routers'));

app.use((req, res) => {
    res.sendStatus(404);
});

const server = app.listen(3000, () => {
    const port = server.address().port;
    console.log("indie torrent server listening on port %s.", port);
});