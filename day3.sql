use library_database_management_system; 

-- selecting data without conditions-- 
select * from author;
select * from book;
select * from member;
select * from loan;


-- selecting specific data without conditions-- 
select author_id from author;
select title,year from book;
select member_id,phone from member;
select member_id from loan;

-- filtering Data

select * from member where name = 'Kavya';
SELECT * FROM book WHERE year > 2000;

-- combining conditions using 'and' and 'or' 
select * from book where year > 2000 and copies > 2;
select * from book where publisher = 'Bloomsbury' or publisher = 'T. Egerton';

-- pattern Matching
select * from author where name like 's%';
select * from author where name like '%l';
select * from author where name like '%ah%';
select * from author where name like '_anas';
select * from author where name like 'Nikh__';

select * from author where name like 'a%' or name like 'b%' or name like 't%';  
                                  --  or-- 
select * from author where  name REGEXP '^[abt]';
									-- similarly
select * from author where  name REGEXP '^[a-z]';

select * from author where name like '%a' or name like '%s' or name like '%l'; 
                                         --  or-- 
select * from author where  name REGEXP '[asl]$';
                                        -- similarly
select * from author where  name REGEXP '[a-z]$';

select * from author where name like 't__%';
select * from author where name like '_a%';

-- using between 
select book_id from book where year between 1990 and 2000;

-- order by 
select * from book order by year;
select * from member order by join_date desc;

-- limit
select * from book limit 3;
select * from author order by name asc LIMIT 5;


-- combining everything in one query
select title, year, author_id
from book
where year between 1990 and 2025
  and (title like 'p%' or title like '%e')
order by year desc
limit 4
;






