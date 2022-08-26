import { Request, Response } from "express";
import { Group } from "../models";


export const getGroup = async(req: Request, res: Response, ) => {

    const group = await Group.findAll();

    res.json({
        group
    });
}