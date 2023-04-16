import * as dotenv from 'dotenv' // see https://github.com/motdotla/dotenv#how-do-i-use-dotenv-with-import
dotenv.config()

import { Sequelize } from 'sequelize';

const db = new Sequelize(process.env.DB_NAME || '', 'postgres', process.env.DB_PASSWORD, {
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
