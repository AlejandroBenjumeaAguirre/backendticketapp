import { Response } from "express";
import { Entity } from "../models";


export const getEntity = async(res: Response) => {

    const entitys = await Entity.findAll();

    return res.status(200).json({
        ok: true,
        entitys
    });
}