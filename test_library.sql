create schema test_library;

-- List of users
create table if not exists test_library.users (
  user_id serial primary key,
  first_name varchar,
  last_name varchar,
  email varchar,
  username varchar
);

-- insert into test_library.users (first_name, last_name, email, username) values
-- ('Marie', 'McCarthy', 'mmcarthy@gwc.org', 'mmcarthy'),
-- ('Maryn', 'Powell', 'mpowell@gwc.org', 'mpowell');

-- List of available books
create table if not exists test_library.books (
  book_id serial primary key,
  title varchar,
  author varchar
);

-- insert into test_library.books (title, author) values
-- ('Harry Potter and the Philosophers Stone', 'J.K. Rowling')
-- ('The Great Gatsby', 'F. Scott Fitzgerald')

-- Join table for users to favorite books
create table if not exists favorite_books (
  favorite_book_id serial primary key,
  user_id int,
  book_id int
);

-- insert into favorite_books (user_id, book_id) values
-- (2, 1),
-- (2, 2)
