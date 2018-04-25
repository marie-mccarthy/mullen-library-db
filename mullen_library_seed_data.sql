truncate table mullen_library.genres;
truncate table mullen_library.books;
truncate table mullen_library.reviews;

Insert into mullen_library.genres ( genre) 
values ('NonFiction'), -- 1
       ( 'Fantasy'), -- 2
       ( 'Biography'), -- 3
       ('Fiction'), -- 4
       ('Play'); -- 5
       

Insert into mullen_library.books ( genre_id, title, author) 
values ( 1,'Enrique\'s Journey', 'Sonia Nazario'),
       ( 2,  'Bob\'s Great Book', 'Bob'),
       ( 1, 'Soldier', 'James T. Wooten'),
       ( 3, 'Diana', 'Andrew Morton'),
       ( 1, 'The Book of Lies', 'Brad Meltzer'),
       (4, 'Garden of Beasts', 'Jeffery Deaver'),
       (2, 'Lord of Vengance', 'Tina St.John'), 
       (3, 'It does not take a hero', 'Norman Schwarzkoph'), 
       (4, 'The Perks of of being a wallflower', 'stephen chbosky'), 
       (5, 'Macbeth', 'william shakesphere'),
       (4, 'The Curious incident of the Dog in the night-time', 'Mark Haddon'),
       (4, 'Fences', 'August Wilson'), 
       (4, 'A Dolls House', 'Henrik Ibsen'), 
       (3, 'Jerry Seinfeild', 'Sein Lang'), 
       (4, 'Thirteen Reasons Why', 'Jay Asher'),
       (4, 'The Bear and the Dragon', 'Tom Clancy'), 
       (4, 'Angels and Deamons', 'Dan Brown'), 
       (4, 'Micro', 'Michael Crichton'), 
       (1, 'The book of the hopi', 'Frank Walters'), 
       (4, 'The best of me', 'Nicholas Sparks'), 
       (2, 'Dancing with Deamons', 'Peter Tremane'), 
       (1, 'Killing Kennedy', 'Bill oreilly'), 
       (1, 'A Treasury of American Indian Herbs', 'Virginia Scully'), 
       (1, 'Atlas of Anatomy', 'no author avalible'), 
       (1, 'Kings and Queens of England', 'David Williamson'); 
       
       

       
       
-- Insert into mullen_library.books (genre_id, title, author, book) 
-- values (3, 'Soldier', 'James T. Wooten');

Insert into mullen_library.reviews (book_id, review)
values (1, 'Everyone read this book'),
       (2, 'I am Bob and I approve this book.'),
       (3, 'This is a great read');
       
       


Select * from mullen_library.books b
--  join mullen_library.reviews r on b.book_id = r.book_id
  join mullen_library.genres g on b.genre_id = g.genre_id;