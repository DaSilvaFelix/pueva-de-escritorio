const mysql = require('mysql2/promise');

const conetion = async ()=>{
    return await mysql.createConnection({
        host:'localhost',
        user:'root',
        password:'',
        database:'creadores'
    })
}

module.exports = {
    conetion
}