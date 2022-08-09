import { Model, DataTypes, Sequelize, NOW } from 'sequelize';
import db from '../db/connection';
import { Usuario } from '../interfaces/types';

const Usuario = db.define('usuario', {
    uid: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        field: 'id',
        type: DataTypes.INTEGER
    },
    name: {
        allowNull: false,
        type: DataTypes.STRING
    },
    group_id: {
        allowNull: false,
        type: DataTypes.NUMBER
    },
    entity_id: {
        allowNull: false,
        type: DataTypes.NUMBER
    },
    email: {
        allowNull: false,
        type: DataTypes.STRING,
        unique: true
    },
    phone: {
        allowNull: false,
        type: DataTypes.NUMBER
    },
    nickname: {
        allowNull: false,
        type: DataTypes.STRING
    },
    active: {
        allowNull: false,
        type: DataTypes.BOOLEAN
    },
    password: {
        allowNull: false,
        type: DataTypes.STRING
    },
    createdAt: {
        type: DataTypes.DATE,
        field: 'created_date'
    },
    updatedAt: {
        type: DataTypes.DATE,
        field: 'update_date'
    }
});


export default Usuario;