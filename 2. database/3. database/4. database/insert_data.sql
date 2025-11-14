-- Members
INSERT INTO members (name, email, phone) VALUES
('Alice Brown', 'alice@mail.com', '123-456-7890'),
('John Smith', 'john@mail.com', '234-567-8901'),
('Mary Lee', 'mary@mail.com', '345-678-9012');

-- Books
INSERT INTO books (title, author, publisher, stock) VALUES
('Atomic Habits', 'James Clear', 'Penguin', 5),
('Clean Code', 'Robert Martin', 'Prentice Hall', 3),
('Deep Work', 'Cal Newport', 'Grand Central', 4);

-- Borrow History
INSERT INTO borrow_history (member_id, book_id, borrow_date, return_date) VALUES
(1, 1, '2025-11-01', '2025-11-10'),
(1, 3, '2025-11-05', NULL),
(2, 2, '2025-11-02', '2025-11-12');
