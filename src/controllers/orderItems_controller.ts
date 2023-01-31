import Debug from 'debug'
import { Request, Response } from 'express'
import { validationResult } from 'express-validator'
import prisma from '../prisma'


// FIND ALL ORDER ITEMS
    export const index = async (req: Request, res: Response) => {
        try {
            const orderItems = await prisma.orderItems.findMany()
            return orderItems
        } catch (err) {
            res.status(500).send({ message: "Something went wrong"})
        }
    }

    // FIND ONE ORDER ITEM
    export const show = async (req: Request, res: Response) => {
        const orderId = Number(req.params.orderItems)
        try {
            const order = await prisma.orderItems.findUniqueOrThrow({
                where: {
                    id: orderId,
                },
            })
            return order
        } catch (err) {
            res.status(500).send({ message: "Something went wrong"})
        }
    }