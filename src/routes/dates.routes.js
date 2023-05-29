import { Router } from 'express'
import { getAllDates } from '../controllers/dates.controller.js'

const datesRouter = Router()

datesRouter.get('/dates', getAllDates)

export default datesRouter