/**
 * Created by Joshua.Austill on 12/18/2017.
 */
const pgp = require('pg-promise')();
const environment = require("../config/environment");

const cn = {
    host: environment.server,
    database: environment.database,
    user: environment.username,
    password: environment.password
};

const db = pgp(cn);

module.exports = {
    getAlbumsByArtistId: (id) => {
        return new Promise(async (resolve, reject) => {
            try {
                const albums = await db.func("albums_by_artist_id", [id]);
                resolve({ "albums": albums});
            } catch (e) {
                reject(e);
            }
        });
    } // getAlbumsByArtistId
}; // module.exports