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
    body('customer_email').isEmail().withMessage('Invalid email address'),
    body('order_total').isInt({ min: 1 }).withMessage('Order total must be a positive integer'),
]
