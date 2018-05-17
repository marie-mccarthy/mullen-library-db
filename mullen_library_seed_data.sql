truncate table mullen_library.genres;
truncate table mullen_library.books;
truncate table mullen_library.reviews;

insert into mullen_library.genres (genre) 
values ('NonFiction'), -- 1
       ( 'Fantasy'), -- 2
       ( 'Biography'), -- 3
       ('Fiction'), -- 4
       ('Play'); -- 5
       

insert into mullen_library.books (genre_id, title, author, image_link, is_available)
values (1, 'Enrique''s Journey', 'Sonia Nazario', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/enrique.jpg', true),
       (1, 'Soldier', 'James T. Wooten', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/Soldier.jpg', true),
       (3, 'Diana', 'Andrew Morton', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/Diana.jpg', true),
       (1, 'The Book of Lies', 'Brad Meltzer', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/book-of-lies.jpg', true),
       (4, 'Garden of Beasts', 'Jeffery Deaver', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/garden-beasts.jpg', true),
       (2, 'Lord of Vengance', 'Tina St.John', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/lord-of-vengeance.jpg', true), 
       (3, 'It Does Not Take a Hero', 'Norman Schwarzkoph', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/does-not-take-hero.jpg', true), 
       (4, 'The Perks of Being a Wallflower', 'Stephen Chbosky', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/perks-wallflower.jpg', true), 
       (5, 'Macbeth', 'William Shakesphere', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/macbeth.jpg', true),
       (4, 'The Curious Incident of the Dog in the Night-time', 'Mark Haddon', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/curious-dog.jpg', true),
       (4, 'Fences', 'August Wilson', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/fences.jpg', true), 
       (4, 'A Doll''s House', 'Henrik Ibsen', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/dollhouse.jpg', true), 
       (3, 'Sein Language', 'Jerry Seinfeld', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/seinfeld.jpg', true), 
       (4, 'Thirteen Reasons Why', 'Jay Asher', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/13-reasons.jpg', true),
       (4, 'The Bear and the Dragon', 'Tom Clancy', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/bear-dragon.jpg', true), 
       (4, 'Angels and Demons', 'Dan Brown', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/angels-demons.jpg', true), 
       (4, 'Micro', 'Michael Crichton', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/micro.jpg', true), 
       (1, 'The Book of the Hopi', 'Frank Walters', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/book-of-hopi.jpg', true), 
       (4, 'The Best of Me', 'Nicholas Sparks', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/best-of-me.jpg', true), 
       (2, 'Dancing with Daemons', 'Peter Tremane', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/dancing-daemons.jpg', true), 
       (1, 'Killing Kennedy', 'Bill oreilly', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/kennedy.jpg', true), 
       (1, 'A Treasury of American Indian Herbs', 'Virginia Scully', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/treasury-herbs.jpg', true), 
       (1, 'Atlas of Anatomy', 'Unknown', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/atlas-anatomy.jpg', true), 
       (1, 'Kings and Queens of England', 'David Williamson', 'https://s3-us-west-2.amazonaws.com/sanear-mullen-gwc-images/kings-queens-england.jpg', true); 
       
       

       
       
-- Insert into mullen_library.books (genre_id, title, author, book) 
-- values (3, 'Soldier', 'James T. Wooten');

Insert into mullen_library.reviews (book_id, review)
values (1, 'Everyone read this book'),
       (2, 'I am Bob and I approve this book.'),
       (3, 'This is a great read');
       
       


Select * from mullen_library.books b
  left join mullen_library.reviews r on b.book_id = r.book_id
  join mullen_library.genres g on b.genre_id = g.genre_id;
