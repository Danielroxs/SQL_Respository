const mysql = require('mysql2');

// Configuración de la conexión para servidor local
const connection = mysql.createConnection({
    host: '127.0.0.1',  // Servidor local
    port: '3306',  // Puerto predeterminado de MySQL
    user: 'root',  // Usuario root de MySQL
    password: 'root1234',  // Contraseña del usuario root (ajusta si es diferente)
    database: 'hello_mysql'  // Nombre de la base de datos
});

// Conectar a la base de datos
connection.connect((err) => {
    if (err) {
        console.error('Error connecting to the database:', err.message);
        return;
    }
    console.log('Connected to the MySQL server.');
});

// Ejecutar la consulta para la tabla `users`
connection.query('SELECT * FROM users', (error, rows) => {
    if (error) {
        console.error('Error executing query:', error.message);
        return;
    }

    // Procesar los resultados de la consulta
    let results = Object.values(JSON.parse(JSON.stringify(rows)));
    results.forEach(user => {
        // Ahora se usan los nombres correctos de las columnas
        console.log(user.user_id, user.name, user.surname, user.age, user.init_date, user.email, user.company_id);
    });
});

// Cerrar la conexión
connection.end((err) => {
    if (err) {
        console.error('Error closing the connection:', err.message);
        return;
    }
    console.log('Connection closed.');
});
