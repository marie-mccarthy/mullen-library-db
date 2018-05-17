create schema if not exists mullen_library;

drop table mullen_library.books;
create table if not exists mullen_library.books (
  book_id serial primary key,
  genre_id int not null,

  title varchar(256) not null,
  author varchar(256) not null,
  image_link varchar(256),
  is_available boolean not null default false
);

drop table mullen_library.reviews;
create table if not exists mullen_library.reviews (
  review_id serial primary key,
  book_id int not null, 
  review varchar(2048) null
);

drop table mullen_library.genres;
create table if not exists mullen_library.genres (
  genre_id serial primary key,
  genre varchar(256) not null
);
