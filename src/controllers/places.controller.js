import { db } from '../database/db.js'

export async function getAllPlaces(req, res) {
    try {
      const places = await db.query('SELECT * FROM places')
  
      res.send(places.rows)
    } catch (error) {
      res.status(500).send(error.message)
    }
  }