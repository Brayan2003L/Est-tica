const mysql = require('mysql');
const db = mysql.createConnection({
    host: 'localhost', //URL del servidor
    user: 'root', //El nombre del dueño de la BD
    password: '0000', //La contraseña utilizada al crear la BD
    database: 'estetica' //nombre de base de datos

});

db.connect(function(err) {
if (err) throw err;
console.log('Base de datos conectada');
});
module.exports = db;