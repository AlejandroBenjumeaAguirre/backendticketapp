import { DataTypes } from 'sequelize';
import db from '../db/connection';

const Seguimientos = db.define('seguimientos', {
    id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: DataTypes.INTEGER
    },
    description: {
        allowNull: false,
        type: DataTypes.STRING
    },
    createdAt: {
        allowNull: false,
        type: DataTypes.DATE,
        field: 'created_date'
    },
    updatedAt: {
        type: DataTypes.DATE,
        field: 'update_date'
    },
    user_id: {
        allowNull: false,
        type: DataTypes.INTEGER
    },
    ticket_id:{
        allowNull: false,
        type: DataTypes.INTEGER
    },
    eventclosing_id: {
        type: DataTypes.INTEGER
    },
    event1_id: {
        type: DataTypes.INTEGER
    },
    event2_id: {
        type: DataTypes.INTEGER
    },
    event3_id: {
        type: DataTypes.INTEGER
    },
    event4_id: {
        type: DataTypes.INTEGER
    },
    usr_resp_id: {
        allowNull: false,
        type: DataTypes.INTEGER
    },
    public_sg: {
        type: DataTypes.INTEGER
    },
    on_hold: {
        type: DataTypes.INTEGER
    }
});

export default Seguimientos;