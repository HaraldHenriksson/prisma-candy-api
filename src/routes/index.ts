import express from "express"
import products from "./products"
import orders from "./orders"
import orderItems from "./orderItems"
import resource from './_router'

// instantiate a new router
const router = express.Router()

/**
 * GET /
 */
router.get('/', (req, res) => {
	res.send({
		message: "I AM API, BEEP BOOP",
	})
})

/**
 * [EXAMPLE] /resource
 */
// router.use('/resource', resource)


/**
 * /products
 */
router.use('/products', products)


/**
 * /orders
 */
 router.use('/orders', orders)

 /**
 * /orderItems
 */
 router.use('/orderItems', orderItems)

export default router
