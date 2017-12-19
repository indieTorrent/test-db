/**
 * Created by joshua on 12/18/17.
 */
console.log(process.env.environment);
if (!process.env.environment) {
    console.log("Environment not defined, assuming local.");
    process.env.environment = "local";
}

var environment = require("./environment.json");
module.exports = environment[process.env.environment];