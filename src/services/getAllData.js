const { Firestore } = require('@google-cloud/firestore');
const accessSecret = require ('../server/handler/accessSecret');

async function getAllData() {
    const db = new Firestore();
    const predictCollection = db.collection('predictions');
    
    const allData = await predictCollection.get();
    return allData;
}

module.exports = getAllData;