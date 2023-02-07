/**
*  Validation Rules for Products
*/

import { body } from 'express-validator'

export const postProductRules = [
    body('name').isString(),
    body('description').isString(),
    body('price').isInt(),
    body('images').isObject(),
    body('stock_status').isString(),
    body('stock_quantity').isInt({ min: 0 }),
    body('on_sale').optional().isBoolean(),
]