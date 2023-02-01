import express from "express"
import products from "./products"
import orders from "./orders"
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
router.use('/product', products)


/**
 * /orders
 */
 router.use('/orders', orders)

export default router
