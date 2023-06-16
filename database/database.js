const Sequelize = require('sequelize');

const connection = new Sequelize('ScriptJurassico', 'admin', 'admin@123', {
    host: 'localhost',
    dialect: 'mysql',
    timezone: '-03:00',
    directory: './models'
});

module.exports = connection;