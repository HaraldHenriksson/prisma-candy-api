import Debug from 'debug'
import { Request, Response } from 'express'
import { validationResult } from 'express-validator'
import prisma from '../prisma'


const debug = Debug('prisma-candy-api:order_controller')

// GET ALL ORDERS
export const index = async (req: Request, res: Response) => {
    try {
        const orders = await prisma.order.findMany()
        res.send({
			status: "success",
			data: orders,
		})
    } catch (err) {
        res.status(500).send({ message: "Something went wrong"})
    }
}

// GET A SINGLE ORDER AND IT'S ORDER ITEMS
export const show = async (req: Request, res: Response) => {
    const orderId = Number(req.params.orderId)
    try {
        const order = await prisma.order.findUniqueOrThrow({
            where: {
                id: orderId,
            },
            include: {
                items: true
            },
        })
        res.send(order)
    } catch (err) {
        res.status(500).send({ message: "Something went wrong"})
    }
}

// CREATE A ORDER
export const store = async (req: Request, res: Response) => {
    try {
        const order = await prisma.order.create({
            data: {
                customer_first_name: req.body.customer_first_name,
                customer_last_name: req.body.customer_last_name,
                customer_address: req.body.customer_address,
                customer_postcode: req.body.customer_postcode,
                customer_city: req.body.customer_city,
                customer_email: req.body.customer_email,
                customer_phone: req.body.customer_phone,
                order_total: req.body.order_total,
                // order_date: req.body.order_date,
                // created_at: new Date(),
                // updated_at: new
            }
        })

        res.send({
			status: "success",
			data: order,
		})

    } catch (err) {
        res.status(500).send({status: "error", message: "Something went wrong" })
    }
}

// UPDATE A ORDER??
export const update = async (req: Request, res: Response) => {
}

// DELETE AN ORDER??
export const destroy = async (req: Request, res: Response) => {
}