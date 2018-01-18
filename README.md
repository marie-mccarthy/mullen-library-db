# Mullen Social Library DB

Initial DDL is in PostgreSQL and contains three test tables:

    -- Contains users of the system
    users (user_id, first_name, last_name, email, username);
    -- Contains books known by the system
    books (book_id, title, author);
    -- Maps users to their favorite books
    favorite_books (favorite_book_id, user_id, book_id);

Example queries are included as comments in the DDL.
