import { Request, Response } from 'express';
import { Op, Sequelize } from 'sequelize';
import Ticket from '../models/ticket';



export const getTickets = async( req: Request, res: Response ) => {

    const tickets = await Ticket.findAll();

    res.json(tickets);

}

export const getTicketsPorUser = async( req: Request, res: Response ) => {

    const { id } = req.params;

    const tickets = await Ticket.findAll({
        where:{
            user_id: id,
            state_id: 1
        }
    });

    res.json(tickets);

}

export const getTicketsPorGroup = async( req: Request, res: Response ) => {

    const { uid } = req.params;

    const tickets = await Ticket.findAll({
        where: {
            user_id: {
                [Op.in]: Sequelize.literal(`(
                    SELECT id FROM usuarios WHERE group_id = ${uid}
                )`)
            }
        }
    })

    res.json(tickets);

}


export const getTicket = async ( req: Request, res: Response ) => {

    const { id } = req.params;

    const ticket = await Ticket.findByPk( id );

    if(ticket){
        res.json(ticket);
    }else{
        res.status(404).json({
            msg: `No existe ticket con el id: ${id}`
        });
    }

}

export const postTicket = async ( req: Request, res: Response ) => {

    const { body } = req;

    try {

        const ticket = Ticket.build(body);
        await ticket.save();

        res.json(ticket);

    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Hable con el administrador'
        })
    }

}

export const putTicket = async ( req: Request, res: Response ) => {

    const { id } = req.params;

    try {

        const ticket = await Ticket.findByPk( id );

        if(!ticket){
            return res.status(404).json({
                msg: 'No existe ticket con el id ' + id
            });
        }

        await ticket.update({ state_id: 3 });

        res.json({
            msg: `Ticket ${id} en espera`,
        })

    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'Hable con el administrador'
        })
    }

}

export const deleteTicket = async( req: Request, res: Response ) => {

    const { id } = req.params;

    const ticket = await Ticket.findByPk( id );

    if(!ticket){
        return res.status(404).json({
            msg: 'No existe un usuario con el id: ' + id
        });
    }

    const fecha = new Date();

    await ticket.update({ closing_date: fecha, state_id: 2 } );

    res.json(ticket);

}