-- This is a Data Definition Language (DDL) file.
-- It provides all the commands to create a MySQL database on any MySQL server.
-- You can run a MySQL server on your own machine (see https://dev.mysql.com/downloads/mysql/),
-- or on any other computer.
-- While you're learning, it's best to run each command one at a time so you can see what it does.
-- I'll add comments on each line below to explain what these example tables that Marie, Coco, and I
-- made will do. Good luck!
-- Oh, and remember that SQL is *case-insensitive*, which means that you can
-- write, for example, 'select', 'SELECT', or even 'SelECt'. As long as you are consistent, everything
-- should be fine :).

-- This creates a "schema," which is just another name for "database". It is exactly analogous
-- to a folder on your local filesystem (which, for all intents and purposes, could be called a database).
-- The main point of schemas is to logically separate your application's data from other data on the DB.
-- They also can have different security parameters and stuff, so, for example, you might keep your
-- users and passwords and things in one database, and your more publicly available data like
-- books and reviews in another. In our case, we'll just use one schema for everything to keep it simple.
create schema if not exists test_library;

-- This is our first CREATE TABLE command. The 'if not exists' clause in this (and in the above
-- CREATE SCHEMA command) allow the command to be run more than once even after the table exists.
-- If you've run this file once before already, the second time you run it, all of the commands
-- will just be skipped and have no effect.
-- 'test_library.users' specifies that we are naming the table 'users' and placing it within the
-- schema 'test_library'.
-- The part within the parentheses specifies the columns that will be in this table - think of it
-- like an Excel spreadsheet, but with much more control over what kinds of data goes in each column.
-- I'll add comments next to each column to specify more.
create table if not exists test_library.users (
  -- This column, named 'user_id', is of type 'serial'. Serial is just an alias, or reference, to
  -- an INT (integer) column with the 'AUTO_INCREMENT' property. This means that, if an INSERT statement
  -- into this table doesn't specify a 'user_id', one will automatically be created as 1 + the previous
  -- user-id. 'primary key' means that this column *must* be unique for each row, so if you attempt
  -- to INSERT a user_id that already exists in the table, MySQL will throw an error and nothing will happen.
  user_id serial primary key,
  -- The remaining columns are the "real data" of the table - user_id just helps us reference
  -- specific rows, but this is the data we actually care about. 'VARCHAR' is just SQL's name for a
  -- string - it literally means "variable-length character data", so, rather than saying that
  -- each value in 'first_name' must be *exactly* 128 characters, it only specifies that the
  -- *maximum* length is 128. If you insert 'Andy' into this column, the data stored in the database
  -- will only be 4 characters.
  first_name varchar(128),
  last_name varchar(128),
  email varchar(128),
  username varchar(128)
);

-- That's basically it for the CREATE TABLE statements! Here's an example of how to insert values
-- into that table:

-- insert into test_library.users (first_name, last_name, email, username) values
-- ('Marie', 'McCarthy', 'mmcarthy@gwc.org', 'mmcarthy'),
-- ('Maryn', 'Powell', 'mpowell@gwc.org', 'mpowell');

-- What will Marie's and Maryn's user_ids be?

-- List of available books
create table if not exists test_library.books (
  book_id serial primary key,
  title varchar(128),
  author varchar(128)
);

-- insert into test_library.books (title, author) values
-- ('Harry Potter and the Philosophers Stone', 'J.K. Rowling'),
-- ('The Great Gatsby', 'F. Scott Fitzgerald');

-- "Join table" for users to favorite books
-- This table will be used to *relate* (SQL is what's called a "relational" system) entries in the
-- 'books' table to entries in the 'users' table. See the last comment for how that works
create table if not exists test_library.favorite_books (
  favorite_book_id serial primary key,
  user_id int,
  book_id int
);

-- insert into test_library.favorite_books (user_id, book_id) values
-- (2, 1),
-- (2, 2),
-- (1, 2);

-- What are Maryn's favorite books, now? Marie's?


-- Finally, here's an example JOIN to combine the results we've seen.
-- I'm going to leave it to you to figure out what all this syntax means :)
-- Remember - Google is your very best friend.

-- SELECT u.first_name, u.last_name, u.email, u.username
--  b.title, b.author
-- FROM test_library.users u
-- JOIN test_library.favorite_books fb ON u.user_id = fb.user_id
-- JOIN test_library.books b ON fb.book_id = b.book_id

-- How come I didn't SELECT any columns from the favorite_books table?
