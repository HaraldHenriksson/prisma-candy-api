import Debug from 'debug'
import { Request, Response } from 'express'
import { validationResult } from 'express-validator'
import prisma from '../prisma'

/**
 * Get all resources
 */
export const index = async (req: Request, res: Response) => {
    try {
        const products = await prisma.product.findMany()
        
        res.send({
            status: "success",
            data: products,
        })

    } catch (err) {
        res.status(500).send({ message: "Something went wrong"})
    }
}

/**
 * Get a single resource
 */
export const show = async (req: Request, res: Response) => {
    const productId = Number(req.params.productId)

    try {
        const products = await prisma.product.findUniqueOrThrow({
            where: {
                id: productId
            }
        })

        res.send({
            status: "success",
            data: products,
        })

    } catch (err) {
        res.status(500).send({ message: "Something went wrong"})
    }
}

/**
 * Create a resource
 */
export const store = async (req: Request, res: Response) => {
    const validationErrors = validationResult(req)
    if (!validationErrors.isEmpty()) {
        return res.status(400).send({
            status: "fail",
            data: validationErrors.array()
        })
    }
    try {
        const product = await prisma.product.create({
        data: {
            name: req.body.name,
            description: req.body.description,
            price: req.body.price,
            images: req.body.images,
            stock_status: req.body.stock_status,
            stock_quantity: req.body.stock_quantity,
            on_sale: req.body.on_sale,
            order_items: req.body.stock_items,    
        }
    })

    res.send({
        status: "success",
        data: product,
    })

    } catch (err) {
        return res.status(500).send({ message: "Something went wrong" })
    }
    
}