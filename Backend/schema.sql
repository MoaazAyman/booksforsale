CREATE DATABASE books_app;
USE books_app;


CREATE TABLE books (
id INT PRIMARY KEY AUTO_INCREMENT,
book_name VARCHAR(150) NOT NULL,
book_description TEXT NOT NULL,
author VARCHAR(150) NOT NULL
);
Query OK, 0 rows affected (0.06 sec)

INSERT INTO books (book_name, book_description, author)

VALUES

("CSS Secrets: Better Solutions to Everyday Web Design Problems by Lea Verou", "CSS Secrets: Better Solutions to Everyday Web Design Problems by Lea Verou is a practical guide for intermediate-to-advanced CSS developers. The book was inspired by Verou’s presentations at over 60 international web development conferences. Topics covered include

typography, user experience, structure, and layout. Verou is a researcher at the Massachusetts Institute of Technology and a member of the W3C CSS Working Group, the committee that designed the CSS language." ,"Michailia Verou" ),

("Dont Make Me Think, Revisited: A Common Sense Approach to Web Usability, 3rd Edition by Steve Krug", "Usability is the focus of Steve Krug’s Don’t Make Me Think, Revisited: A Common Sense Approach to Web Usability. This practical and popular book made its debut in 2000, and this edition contains fresh examples and a new chapter on mobile usability. It’s written for anyone looking for best practices in web design when it comes to intuitive navigation and user experience. Krug is an author, speaker, and usability consultant who has worked with Apple, AOL, Lexus, and other companies.", "Steve Krug"),

( "Eloquent JavaScript, 3rd Edition: A Modern Introduction to Programming by Marijn Haverbeke", "Writing real applications is Marijn Haverbeke’s focus in Eloquent JavaScript . This tutorial-style book is written for anyone who works with JavaScript, especially for programmers working with modern web application frameworks. Topics covered include asynchronous programming, error handling, and bug fixing. The book also walks you through projects, including writing a simple programming language. Haverbeke is an independent programmer and tech writer from Berlin.", "Marijn Haverbeke"),

("HTML and CSS: Design and Build Websites, 1st Edition by Jon Duckett", "Our top pick for web development books is the acclaimed HTML and CSS: Design and Build Websites by bestselling author Jon Duckett. This instructional web development book is different from many others on the market in that it’s printed in full color and designed to look like a magazine. The book is appropriate for both beginners and professionals alike. It will appeal to anyone looking for common sense and winning, established approaches to web development. Duckett has designed and delivered web and mobile projects for brands like Nike and Xerox.", "Jon Duckett"),

("Secrets of the JavaScript Ninja, 2nd Edition by John Resig, Bear Bibeault, and Josip Maras", "Secrets of the JavaScript Ninja by John Resig, Bear Bibeault, and Josip Maras is for current JavaScript users who wish to take their skills to the next level. The book is rich with practical examples that illustrate each core concept and technique, such as managing asynchronous code with promises. It also includes a free eBook in PDF, Kindle, and ePub formats. Resig is head of JavaScript development at Khan Academy, Bibeault is a web developer, and Maras is a researcher and faculty member at the University of Split in Croatia.", "John Resig"),

("JavaScript: The Definitive Guide: Master the World’s Most-Used Programming Language, 7th Edition by David Flanagan", "JavaScript: The Definitive Guide by David Flanagan was written for a large audience that includes computer science students and seasoned software developers. It’s a comprehensive and definitive book that explains all aspects of JavaScript, including values, data structures, components, and language extensions. The new seventh edition contains chapters and updates that cover the most recent version of JavaScript. Flanagan is a computer programmer and author who works at Mozilla.", "David Flanagan"),

("Node Cookbook by Bethany Griggs", "Bethany Griggs’ Node Cookbook is a thorough overview of everything you need to know about Node JavaScript, an open source server environment. The book is written for anyone who wants to learn NodeJS or improve their skill. It’s particularly beneficial for beginners because it offers comprehensive examples that cover many practical situations. Topics of discussion include streams, working with web frameworks, debugging Node, and using web protocols. Griggs is a software engineer and scrum master with the IBM Runtime Technologies Node.js team.", "Bethany Griggs"),
    
("Learning PHP, MySQL & JavaScript: With jQuery, CSS & HTML5 by Robin Nixon", "Robin Nixon’s Learning PHP, MySQL & JavaScript introduces readers to several crucial web developer languages. This hands-on book is written for an audience that has a basic understanding of HTML and can create simple websites. At the book’s conclusion, Nixon promises readers they’ll be able to build a fully functional, dynamic social networking site. Nixon is a software developer from England who has written over 30 books.", "Robin Nixon");