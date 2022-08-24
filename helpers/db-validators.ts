import {Group, Entity, Usuario, State, Priority, Event1, Event2, Event3, Event4, Ticket, EventClosing} from '../models/index';

export const esGrupoValido = async(id = 3) => {
    const existeGrupo = await Group.findByPk(id);
    if(!existeGrupo){
        throw new Error(`El Grupo no esta registrado en la base de datos`)
    }
}

export const esEntidadValida = async(id='') => {
    const existeEntidad = await Entity.findByPk(id);
    if(!existeEntidad){
        throw new Error(`La entitdad no esta registrada en la base de datos`)
    }
}

export const emailExiste = async(email = '') => {

    const existeEmail = await Usuario.findOne({
        where: {
            email
        }
    });

    if(existeEmail){
        throw new Error("Ya existe un usuario con el Email " + email);
    }
}

export const esStateValid = async(id='') => {
    const existeState = await State.findByPk(id);
    if(!existeState){
        throw new Error(`El estado con codigo ${id} no existe`);
    }
}

export const esUserValid = async(id='') => {
    const existeUser = await Usuario.findByPk(id);
    if(!existeUser){
        throw new Error(`El usuario con id ${id} no existe`);
    }
}

export const esPriorityValid = async(id='') => {
    const existePriority = await Priority.findByPk(id);
    if(!existePriority){
        throw new Error(`La prioridad con codigo ${id} no existe`);
    }
}

export const esEvent1Valid = async(id='') => {
    const existeEvent1 = await Event1.findByPk(id);
    if(!existeEvent1){
        throw new Error(`El event1 con codigo ${id} no existe`);
    }
}

export const esEvent2Valid = async(id='') => {
    const existeEvent2 = await Event2.findByPk(id);
    if(!existeEvent2){
        throw new Error(`El event2 con codigo ${id} no existe`);
    }
}

export const esEvent3Valid = async(id='') => {
    const existeEvent3 = await Event3.findByPk(id);
    if(!existeEvent3){
        throw new Error(`El event3 con codigo ${id} no existe`);
    }
}

export const esEvent4Valid = async(id='') => {
    const existeEvent4 = await Event4.findByPk(id);
    if(!existeEvent4){
        throw new Error(`El event4 con codigo ${id} no existe`);
    }
}

export const esTicketValid = async(id='') => {
    const existeTicket = await Ticket.findByPk(id);
    if(!existeTicket){
        throw new Error(`El ticket con codigo ${id} no existe`);
    }
}

export const esSucesoCierreValid = async(id='') => {
    const existeSucesoCierre = await EventClosing.findByPk(id);
    if(!existeSucesoCierre){
        throw new Error(`El evento de cierre con codigo ${id} no existe`);
    }
}

export const nicknameYaExiste = async(nickname = '') => {
    const nicknameExist = await Usuario.findOne({
        where: {
            nickname
        }
    });

    if(nicknameExist){
        throw new Error("Ya existe un usuario con el nickname " + nickname);
    }
}