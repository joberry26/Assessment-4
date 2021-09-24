INSERT INTO artist (name)
VALUES('Gary'),
('Juliette'),
('Humphreys');

SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT employee_id FROM employee -- finding Nancy Edwards employee ID
WHERE first_name = 'Nancy' AND last_name = 'Edwards'; 
SELECT * FROM employee -- selecting all employees that report to Nancy Edwards
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee 
WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice 
WHERE billing_country = 'USA';

SELECT total FROM invoice 
ORDER BY total DESC LIMIT 1;

SELECT total FROM invoice 
ORDER BY total ASC LIMIT 1;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice 
WHERE total < 5;

SELECT COUNT(total) FROM invoice;

SELECT * FROM invoice
JOIN invoice_line i
ON i.invoice_id = invoice.invoice_id
WHERE i.unit_price > 0.99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

SELECT c.first_name AS customer_first, c.last_name AS last, e.first_name AS support_rep_first, e.last_name AS last
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

SELECT album.title AS album, artist.name AS artist
FROM album
JOIN artist
ON album.artist_id = artist.artist_id;

-- extra credit

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

SELECT * FROM employee
ORDER BY birth_date DESC LIMIT 1;

SELECT * FROM employee
ORDER BY birth_date ASC LIMIT 1;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT p.track_id 
FROM playlist
JOIN playlist_track p
ON playlist.playlist_id = p.playlist_id
WHERE playlist.name = 'Music';

SELECT track.name AS track, playlist.name AS playlist
FROM playlist_track
JOIN track
ON track.track_id = playlist_track.track_id
JOIN playlist
ON playlist.playlist_id = playlist_track.playlist_id;

SELECT track.name AS track, album.title
FROM track
JOIN album
ON track.album_id = album.album_id
JOIN genre
ON genre.genre_id = track.genre_id
WHERE genre.name = 'Alternative & Punk';