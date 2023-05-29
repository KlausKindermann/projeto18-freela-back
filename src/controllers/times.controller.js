import { db } from '../database/db.js'

export async function getAllTimes(req, res) {
    try {
      const times = await db.query('SELECT * FROM times')
  
      res.send(times.rows)
    } catch (error) {
      res.status(500).send(error.message)
    }
  }