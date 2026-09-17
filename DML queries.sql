DML queries:

Insert:
mysql> insert into 1st_year values(1, 'java', 'miss sr', 20, 'nirali', 'sk', 10, 'monday');
Query OK, 1 row affected (0.01 sec)

mysql> insert into 1st_year values(2, 'python', 'mister rk', 30, 'nirali','ss', 11, NULL);
Query OK, 1 row affected (0.01 sec)

mysql> insert into 1st_year values(3, 'math', 'mister kishore', 30, 'nirali','ss', 12, NULL),(4, 'c)
    '> ^C
mysql> insert into 1st_year values(3, 'math', 'mister kishore', 30, 'nirali','ss', 12, NULL),(4, 'c', 'miss ss', 20,
    -> 'nirali', 'jj', 1, 'friday');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into 1st_year(serial_no, sub_name, sub_teacher, sub_marks, s_book_publication, sbook_author, slec_time, s_extra_lec_day) values(4, 'c++', 'dk', 10, 'nirali', 'ds', 3, 'saturday');
ERROR 1062 (23000): Duplicate entry '4' for key '1st_year.PRIMARY'
mysql> insert into 1st_year(serial_no, sub_name, sub_teacher, sub_marks, s_book_publication, sbook_author, slec_time, s_extra_lec_day) values(5, 'c++', 'dk', 10, 'nirali', 'ds', 3, 'saturday');
Query OK, 1 row affected (0.01 sec)

mysql> desc 1st_year;
+--------------------+---------------+------+-----+---------+-------+
| Field              | Type          | Null | Key | Default | Extra |
+--------------------+---------------+------+-----+---------+-------+
| serial_no          | decimal(10,0) | NO   | PRI | NULL    |       |
| sub_name           | varchar(50)   | YES  |     | NULL    |       |
| sub_teacher        | varchar(50)   | YES  |     | NULL    |       |
| sub_marks          | int           | YES  |     | NULL    |       |
| s_book_publication | varchar(35)   | YES  |     | NULL    |       |
| sbook_author       | varchar(40)   | YES  |     | NULL    |       |
| slec_time          | varchar(80)   | YES  |     | NULL    |       |
| s_extra_lec_day    | varchar(20)   | YES  |     | NULL    |       |
+--------------------+---------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> select * from 1st_year;
+-----------+----------+----------------+-----------+--------------------+--------------+-----------+-----------------+
| serial_no | sub_name | sub_teacher    | sub_marks | s_book_publication | sbook_author | slec_time | s_extra_lec_day |
+-----------+----------+----------------+-----------+--------------------+--------------+-----------+-----------------+
|         1 | java     | miss sr        |        20 | nirali             | sk           | 10        | monday          |
|         2 | python   | mister rk      |        30 | nirali             | ss           | 11        | NULL            |
|         3 | math     | mister kishore |        30 | nirali             | ss           | 12        | NULL            |
|         4 | c        | miss ss        |        20 | nirali             | jj           | 1         | friday          |
|         5 | c++      | dk             |        10 | nirali             | ds           | 3         | saturday        |
+-----------+----------+----------------+-----------+--------------------+--------------+-----------+-----------------+
5 rows in set (0.01 sec)

Update:
mysql> update 1st_year set sub_teacher="miss ak" where serial_no = 4;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update 1st_year set sub_marks = 30 where serial_no in (1,2);
Query OK, 1 row affected (0.01 sec)
Rows matched: 2  Changed: 1  Warnings: 0

mysql> update 1st_year set sub_marks=50  where serial_no in (1,2,3,4,5);
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0


mysql> desc 1st_year;
+--------------------+---------------+------+-----+---------+-------+
| Field              | Type          | Null | Key | Default | Extra |
+--------------------+---------------+------+-----+---------+-------+
| serial_no          | decimal(10,0) | NO   | PRI | NULL    |       |
| sub_name           | varchar(50)   | YES  |     | NULL    |       |
| sub_teacher        | varchar(50)   | YES  |     | NULL    |       |
| sub_marks          | int           | YES  |     | NULL    |       |
| s_book_publication | varchar(35)   | YES  |     | NULL    |       |
| sbook_author       | varchar(40)   | YES  |     | NULL    |       |
| slec_time          | varchar(80)   | YES  |     | NULL    |       |
| s_extra_lec_day    | varchar(20)   | YES  |     | NULL    |       |
+--------------------+---------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

Delete:
mysql> delete from 1st_year where serial_no= 5;
Query OK, 1 row affected (0.02 sec)
