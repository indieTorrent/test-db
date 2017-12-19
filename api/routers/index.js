const router = require("express").Router();

router.use("/albums", require("./albums"));

router.get("/", (req, res) => {
    res.json({"request": "successful", "version": "0.0.1", "environment": process.env.description});
});

module.exports = router;