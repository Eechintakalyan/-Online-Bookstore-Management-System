-- Current borrowed books
SELECT 
    m.name AS member_name,
    b.title AS book_title,
    bh.borrow_date
FROM borrow_history bh
JOIN members m ON bh.member_id = m.member_id
JOIN books b ON bh.book_id = b.book_id
WHERE bh.return_date IS NULL;

-- Borrowing history of a member
CALL get_member_borrowed_books(1);

-- Books with low stock
SELECT * FROM books
WHERE stock < 3;
