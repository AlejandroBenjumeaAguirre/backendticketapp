import { DataTypes } from 'sequelize';
import db from '../db/connection';

const State = db.define('entidades', {
    id: {
        type: DataTypes.NUMBER,
        primaryKey: true
    },
    name: {
        type: DataTypes.STRING,
    }
});

export default State;