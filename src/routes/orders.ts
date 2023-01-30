import express from 'express'
import { index, show, store } from '../controllers/order_controller'
const router = express.Router()

/**
 * GET /orders
 */
router.get('/', index)

/**
 * GET /orders/:orderId
 */
router.get('/:bookId', show)

/**
 * POST /order
 */
router.post('/', store)

export default router
