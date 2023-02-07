/**
*  Validation Rules for order
*/

import { body } from 'express-validator'

export const orderProductRules = [
    body('customer_first_name').isString(),
    body('customer_last_name').isString(),
    body('customer_address').isString(),
    body('customer_postcode').isString().isLength({ min: 4, max: 6 }).withMessage('Has to be 4-6 chars long'),
    body('customer_city').isString(),
    body('customer_email').isEmail(),
    body('order_total').isInt({ min: 1 }),
]
