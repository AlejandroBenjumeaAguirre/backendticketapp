import { DataTypes } from 'sequelize';
import db from '../db/connection';

const Ticket = db.define('tickets', {
    id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: DataTypes.NUMBER
    },
    affair: {
        type: DataTypes.STRING
    },
    description: {
        type: DataTypes.STRING
    },
    createdAt: {
        type: DataTypes.DATE,
        field: 'create_date'
    },
    updatedAt: {
        type: DataTypes.DATE,
        field: 'update_date'
    },
    closing_date: {
        type: DataTypes.DATE
    },
    state_id: {
        type: DataTypes.NUMBER
    },
    user_id: {
        type: DataTypes.NUMBER
    },
    priority_id: {
        type: DataTypes.NUMBER
    },
    event1_id: {
        type: DataTypes.NUMBER
    },
    event2_id: {
        type: DataTypes.NUMBER
    },
    event3_id: {
        type: DataTypes.NUMBER
    },
    event4_id: {
        type: DataTypes.NUMBER
    }
});

export default Ticket;