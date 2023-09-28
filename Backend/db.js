import mysql from "mysql2";
import dotenv from "dotenv";
dotenv.config();
var pool = mysql
  .createPool({
    connectionLimit: 8,
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: process.env.MYSQL_DATABASE,
  })
  .promise();

export async function getBooks() {
  const [rows] = await pool.query("SELECT * FROM books");
  return rows;
}

export async function getBook(id) {
  const [rows] = await pool.query(
    `SELECT *
  FROM books
  WHERE id = ?`,
    [id]
  );
  return rows[0];
}

const book = await getBook(8);

console.log("Hello WOrld");
