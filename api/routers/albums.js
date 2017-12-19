/**
 * Created by Joshua.Austill on 12/18/2017.
 */
const router = require("express").Router();

router.route("/artist")
    .get((req, res) => {
        const id = req.query.id;
        res.json({ "Requested albums by artist id": id});
    });

module.exports = router;