const tf = require('@tensorflow/tfjs-node');
const accessSecret = require ('../server/handler/access_secret');
async function loadModel() {
    return tf.loadGraphModel(process.env.MODEL_URL);
}
module.exports = loadModel;