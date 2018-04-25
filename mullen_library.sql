create schema if not exists mullen_library;
create table if not exists mullen_library.books (
  book_id serial primary key,
  genre_id int not null,
 
  title varchar(256) not null,
  author varchar(256) not null
  
);

create table if not exists mullen_library.reviews (
  review_id serial primary key,
   review_id int null, 
  book_id int not null, 
  review varchar(2048) null
  
);

create table if not exists mullen_library.genres (
  genre_id serial primary key,
  genre varchar(256) not null
);
