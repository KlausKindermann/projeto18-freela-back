import { Router } from 'express'
import { getAllTimes } from '../controllers/times.controller.js'

const timesRouter = Router()

timesRouter.get('/times', getAllTimes)

export default timesRouter