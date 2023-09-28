import "./App.css";
import { useEffect, useState } from "react";
import axios from "axios";

export default function App() {
  const [books, setBooks] = useState([]);
  const [currentBook, setCurrentBook] = useState({
    book_name: "Sample Book",
    book_description: "Sample Author",
    author: "author",
  });

  useEffect(() => {
    async function getBooks() {
      const randomBook = Math.random() * 10 - 2;
      const response = await axios.get(
        `http://localhost:8080/books/${randomBook}`
      );
      setBooks(response.data);
    }
    getBooks();
  }, []);

  return (
    <div>
      {books.map((book) => (
        <Book key={book.id} book={book} />
      ))}
    </div>
  );
}

function Book({ book }) {
  return (
    <div className="App">
      <img src="/photoes/pics.png" alt="" />
      <h3>{book.book_name}</h3>
      <p>{book.book_description}</p>
      <p>{book.author}</p>
      <button>Buy Now</button>
    </div>
  );
}
