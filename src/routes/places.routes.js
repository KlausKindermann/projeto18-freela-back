import { Router } from 'express'
import { getAllDates } from '../controllers/dates.controller.js'
import { getAllPlaces } from '../controllers/places.controller.js'

const  placesRouter = Router()

placesRouter.get('/places', getAllPlaces)

export default placesRouter