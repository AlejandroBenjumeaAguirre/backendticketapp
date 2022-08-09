

import { DataTypes } from 'sequelize';
import db from '../db/connection';

const Group = db.define('grupos', {
    id: {
        type: DataTypes.NUMBER,
        primaryKey: true
    },
    name: {
        type: DataTypes.STRING,
    }
});

export default Group;