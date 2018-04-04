truncate table mullen_library.genres;
truncate table mullen_library.books;
truncate table mullen_library.reviews;

Insert into mullen_library.genres (genre) 
values ('Science Fiction'),
       ('Fantasy');

Insert into mullen_library.books (genre_id, title, author) 
values (1,'Enrique\'s Journey', 'Sonia Nazario'),
       (2, 'Bob\'s Great Book', 'Bob');

Insert into mullen_library.reviews (book_id, review)
values (1, 'Everyone read this book'),
       (2, 'I am Bob and I approve this book.');

Select * from mullen_library.books b
  join mullen_library.reviews r on b.book_id = r.book_id
  join mullen_library.genres g on b.genre_id = g.genre_id;