import { Request, Response } from "express";
import { Entity } from "../models";


export const getEntity = async(req: Request, res: Response) => {

    const entitys = await Entity.findAll();

    res.json({
        entitys
    });
}