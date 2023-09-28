import express from "express";
import { getBooks, getBook } from "./db.js";

import cors from "cors";

const app = express();
app.use(cors());

app.get("/books", async (req, res) => {
  const books = await getBooks();
  res.send(books);
});

app.get("/books/:id", async (req, res) => {
  const id = req.params.id;
  const book = await getBook(id);
  res.send(book);
});
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send("Something broke!");
});

app.listen(8080, () => console.log("Server is running on port 8080"));
