import Debug from 'debug'
import { Request, Response } from 'express'
import { validationResult } from 'express-validator'
import prisma from '../prisma'


const debug = Debug('prisma-candy-api:order_controller')

// GET ALL ORDERS
export const index = async (req: Request, res: Response) => {
    try {
        const orders = await prisma.order.findMany()
        return orders
    } catch (err) {
        res.status(500).send({ message: "Something went wrong"})
    }
}

// GET A SINGLE ORDER AND IT'S ORDER ITEMS
export const show = async (req: Request, res: Response) => {
    const orderId = Number(req.params.bookId)
    try {
        const order = await prisma.order.findUniqueOrThrow({
            where: {
                id: orderId,
            },
            include: {
                items: true
            },
        })
        return order
    } catch (err) {
        res.status(500).send({ message: "Something went wrong"})
    }
}