-- Lab 1: Analytical Queries
-- Author: Muhammad Yaman
-- Date: February 5, 2026

-- Query 1: View all books
SELECT * FROM books_read;

-- Query 2: Books rated 4.5 or higher
SELECT title, author, rating 
FROM books_read 
WHERE rating >= 4.5
ORDER BY rating DESC;

-- Query 3: Average pages by category
SELECT category, AVG(pages) AS avg_pages, COUNT(*) AS book_count
FROM books_read
GROUP BY category
ORDER BY avg_pages DESC;

-- Query 4: Total pages read
SELECT SUM(pages) AS total_pages_read FROM books_read;

-- Query 5: Books finished in 2024
SELECT title, author, date_finished
FROM books_read
WHERE date_finished >= '2024-01-01' AND date_finished <= '2024-12-31'
ORDER BY date_finished;

-- Query 6: Count books by category
SELECT category, COUNT(*) AS total_books
FROM books_read
GROUP BY category
ORDER BY total_books DESC;

-- Query 7: Find longest book
SELECT title, author, pages
FROM books_read
ORDER BY pages DESC
LIMIT 1;
