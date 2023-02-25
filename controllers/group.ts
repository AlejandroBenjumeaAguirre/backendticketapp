import { Response } from "express";
import { Group } from "../models";


export const getGroup = async(res: Response, ) => {

    const group = await Group.findAll();

    return res.status(200).json({
        ok: true,
        group
    });
}