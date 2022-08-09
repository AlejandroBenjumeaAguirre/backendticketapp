import { DataTypes } from 'sequelize';
import db from '../db/connection';

const Event1 = db.define('grupos', {
    id: {
        type: DataTypes.NUMBER,
        primaryKey: true
    },
    name: {
        type: DataTypes.STRING,
    }
});

export default Event1;