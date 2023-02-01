import express from 'express'
import { body } from 'express-validator'
import { index, show, store, update, destroy } from '../controllers/_controller'
const router = express.Router()

router.get('/', index)

/**
 * GET /resource/:resourceId
 */
router.get('/:orderItemsId', show)

export default router