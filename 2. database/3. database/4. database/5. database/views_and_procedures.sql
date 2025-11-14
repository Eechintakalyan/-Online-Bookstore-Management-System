-- Create View: Member Borrow Summary
CREATE VIEW member_borrow_summary AS
SELECT 
    m.name AS member_name,
    COUNT(bh.borrow_id) AS total_borrowed,
    SUM(CASE WHEN bh.return_date IS NULL THEN 1 ELSE 0 END) AS currently_borrowed
FROM members m
LEFT JOIN borrow_history bh ON m.member_id = bh.member_id
GROUP BY m.member_id;

-- Stored Procedure: Get all books borrowed by a member
DELIMITER $$
CREATE PROCEDURE get_member_borrowed_books(IN mem_id INT)
BEGIN
    SELECT 
        b.title AS book_title,
        bh.borrow_date,
        bh.return_date
    FROM borrow_history bh
    JOIN books b ON bh.book_id = b.book_id
    WHERE bh.member_id = mem_id;
END $$
DELIMITER ;
