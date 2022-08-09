import { DataTypes } from 'sequelize';
import db from '../db/connection';

const Priority = db.define('grupos', {
    id: {
        type: DataTypes.NUMBER,
        primaryKey: true
    },
    name: {
        type: DataTypes.STRING,
    }
});

export default Priority;