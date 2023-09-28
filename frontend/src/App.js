import "./App.css";
import { useEffect, useState } from "react";
import axios from "axios";

export default function App() {
  const [books, setBooks] = useState([]);

  useEffect(() => {
    async function getBooks() {
      const response = await axios.get(`http://localhost:8080/books`);
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
