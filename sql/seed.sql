-- Minimal demo data (adapt table/column names to your schema)

-- Branches
INSERT INTO branch (branch_id, name, city) VALUES
  (1, 'Central Library', 'Berlin'),
  (2, 'East Branch',     'Berlin');

-- Members
INSERT INTO member (member_id, full_name, joined_on) VALUES
  (101, 'Alice Novak',  '2024-03-12'),
  (102, 'Ben Krüger',   '2024-05-22');

-- Authors
INSERT INTO author (author_id, full_name) VALUES
  (201, 'Haruki Murakami'),
  (202, 'Ursula K. Le Guin');

-- Books
INSERT INTO book (isbn, title, pub_year, category) VALUES
  ('9780099448822', 'Kafka on the Shore', 2002, 'Fiction'),
  ('9780143111597', 'The Dispossessed',   1974, 'Sci-Fi');

-- Book–Author mapping (M:N)
INSERT INTO book_author (isbn, author_id) VALUES
  ('9780099448822', 201),
  ('9780143111597', 202);

-- Physical copies in branches
INSERT INTO copy (copy_id, isbn, branch_id, status) VALUES
  (5001, '9780099448822', 1, 'available'),
  (5002, '9780143111597', 2, 'available');

-- Loans (one open, one returned)
INSERT INTO loan (loan_id, copy_id, member_id, loan_date, due_date, return_date) VALUES
  (9001, 5001, 101, '2025-09-01', '2025-09-21', NULL),
  (9002, 5002, 102, '2025-08-01', '2025-08-21', '2025-08-18');
