import { db } from '../database/db.js'

export async function getAllDates(req, res) {
    try {
      const dates = await db.query('SELECT * FROM dates ORDER BY day asc')
  
      res.send(dates.rows)
    } catch (error) {
      res.status(500).send(error.message)
    }
  }