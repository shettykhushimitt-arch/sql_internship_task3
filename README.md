1)select condition : used to select data (*)


select * from author;
select * from book;
select * from member;
select * from loan;



2)selectind data without conditions


select author_id from author;
select title,year from book;
select member_id,phone from member;
select member_id from loan;



3)using where conditions 


select * from member where name = 'Kavya';
SELECT * FROM book WHERE year > 2000;



4)combining conditions using 'and' and 'or' 


select * from book where year > 2000 and copies > 2;
select * from book where publisher = 'Bloomsbury' or publisher = 'T. Egerton';



5)pattern Matching


->selecting * from author table , author name begining with the letter s
select * from author where name like 's%';



->selecting  * from author table , author name ending with the letter l
select * from author where name like '%l';



->selecting  * from author table , author name that contains letters ah
select * from author where name like '%ah%';



->selecting  * from author table , author name with any letter,followed by anas
select * from author where name like '_anas';



->selecting  * from author table , author name starting with the letters Nikh and ending with any 2 letters
select * from author where name like 'Nikh__';



->selecting  * from author table , author name starting with the letter a or b or t
select * from author where name like 'a%' or name like 'b%' or name like 't%';  


                                  --  or-- 
                                  --recommended method below -- 

								  
select  * from author table , author name where  name REGEXP '^[abt]';


									-- similarly

									
->selecting * from author table , author name starting with a,,b,c,d,e,f...................x,y,,z.
select * from author where  name REGEXP '^[a-z]';


->selecting * from author table , ending with the letter a or s or l
select * from author where name like '%a' or name like '%s' or name like '%l'; 


                                         --  or-- 
                                          --recommended method below -- 

										  
select * from author where  name REGEXP '[asl]$';


                                        -- similarly

										
->selecting * from author table , ending with a,,b,c,d,e,f...................x,y,,z.
select * from author where  name REGEXP '[a-z]$';

->selecting * from author table ,where author name starts with t and are atleast 3 characters in length
select * from author where name like 't__%';

->selecting the rows from author table ,where author name have a in second position
select * from author where name like '_a%';
