/**
*  Validation Rules for order
*/

import { body } from 'express-validator'

export const orderProductRules = [
    body('customer_first_name').isString().withMessage('has to be a string').bail(),
    body('customer_last_name').isString().withMessage('has to be a string').bail(),
    body('customer_address').isString().withMessage('has to be a string').bail(),
    body('customer_postcode').isString().isLength({ min: 4, max: 6 }).withMessage('Has to be 4-6 chars long').bail(),
    body('customer_city').isString().withMessage('has to be a string').bail(),
    body('customer_email').isEmail(),
    body('order_total').isInt({ min: 1 }),
]