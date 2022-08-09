import { DataTypes } from 'sequelize';
import db from '../db/connection';

const EventClosing = db.define('suceso_cierre', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true
    },
    description: {
        type: DataTypes.STRING,
    }
},{
    timestamps: false
}
);

export default EventClosing;