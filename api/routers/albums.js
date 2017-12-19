/**
 * Created by Joshua.Austill on 12/18/2017.
 */
const router = require("express").Router();
const albumContext = require(`${__appRoot}/contexts/albumContext.js`);

router.route("/artist")
    .get(async (req, res) => {
        const id = req.query.id;
        try {
            const albums = await albumContext.getAlbumsByArtistId(id);
            res.json(albums);
        } catch (e) {
            res.json({ "Error": e });
        }
    });

module.exports = router;