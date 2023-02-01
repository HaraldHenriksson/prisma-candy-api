import express from 'express'
import { index, show, store } from '../controllers/order_controller'
import { orderProductRules } from "../validations/order_rules"
const router = express.Router()

/**
 * GET /orders
 */
router.get('/', index)

/**
 * GET /orders/:orderId
 */
router.get('/:orderId', show)

/**
 * POST /order
 */
router.post('/', orderProductRules, store)

export default router
