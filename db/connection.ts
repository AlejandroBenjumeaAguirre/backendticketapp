import { Sequelize } from 'sequelize';
require('dotenv').config();



const db = new Sequelize(process.env.DB, 'postgres', process.env.PASSWORDDB, {
    host: process.env.HOST,
    dialect: 'postgres',
    // logging: false
    /* define:{
        freezeTableName: true,
        timestamps: false
    }, */
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    },
});

export default db;
