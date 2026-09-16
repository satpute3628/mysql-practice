DDL Queries

create database::

mysql> create database subjects;
Query OK, 1 row affected (0.03 sec)

use  db:;
mysql> use  subjects;
Database changed

create table::
mysql> create table 1st year(sr_no int , sub_name varchar(50), sub_teacher varchar(50), sub_marks decimal);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'year(sr_no int , sub_name varchar(50), sub_teacher varchar(50), sub_marks decima' at line 1
mysql> create table 1st year(sr_no int,sub_name varchar(50),sub_teacher varchar(50), sub_marks int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'year(sr_no int,sub_name varchar(50),sub_teacher varchar(50), sub_marks int)' at line 1
mysql> create table 1st_year(sr_no int,sub_name varchar(50),sub_teacher varchar(50), sub_marks int);
Query OK, 0 rows affected (0.13 sec)


show table:
mysql> show tables;
+--------------------+
| Tables_in_subjects |
+--------------------+
| 1st_year           |
+--------------------+
1 row in set (0.03 sec)


description of table  :
mysql> desc  1st_year;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| sr_no       | int         | YES  |     | NULL    |       |
| sub_name    | varchar(50) | YES  |     | NULL    |       |
| sub_teacher | varchar(50) | YES  |     | NULL    |       |
| sub_marks   | int         | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

ALTER commands ::
Add 
mysql> alter table 1st_year add book_publication varchar(35);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc  1st_year;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| sr_no            | int         | YES  |     | NULL    |       |
| sub_name         | varchar(50) | YES  |     | NULL    |       |
| sub_teacher      | varchar(50) | YES  |     | NULL    |       |
| sub_marks        | int         | YES  |     | NULL    |       |
| book_publication | varchar(35) | YES  |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table 1st_year add (sbook_author varchar(40), slec_time time);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc  1st_year;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| sr_no            | int         | YES  |     | NULL    |       |
| sub_name         | varchar(50) | YES  |     | NULL    |       |
| sub_teacher      | varchar(50) | YES  |     | NULL    |       |
| sub_marks        | int         | YES  |     | NULL    |       |
| book_publication | varchar(35) | YES  |     | NULL    |       |
| sbook_author     | varchar(40) | YES  |     | NULL    |       |
| slec_time        | time        | YES  |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table  1st_year add sub_no int first;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc  1st_year;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| sub_no           | int         | YES  |     | NULL    |       |
| sr_no            | int         | YES  |     | NULL    |       |
| sub_name         | varchar(50) | YES  |     | NULL    |       |
| sub_teacher      | varchar(50) | YES  |     | NULL    |       |
| sub_marks        | int         | YES  |     | NULL    |       |
| book_publication | varchar(35) | YES  |     | NULL    |       |
| sbook_author     | varchar(40) | YES  |     | NULL    |       |
| slec_time        | time        | YES  |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> alter table  1st_year add s_extra_lec datetime after  slec_time;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table  1st_year add s_extra_lec day after  slec_time;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'day after  slec_time' at line 1
mysql> desc  1st_year;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| sub_no           | int         | YES  |     | NULL    |       |
| sr_no            | int         | YES  |     | NULL    |       |
| sub_name         | varchar(50) | YES  |     | NULL    |       |
| sub_teacher      | varchar(50) | YES  |     | NULL    |       |
| sub_marks        | int         | YES  |     | NULL    |       |
| book_publication | varchar(35) | YES  |     | NULL    |       |
| sbook_author     | varchar(40) | YES  |     | NULL    |       |
| slec_time        | time        | YES  |     | NULL    |       |
| s_extra_lec      | datetime    | YES  |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
9 rows in set (0.00 sec)

Modify::
mysql> alter table 1st_year modify  s_extra_lec varchar(20);
Query OK, 0 rows affected (0.14 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc  1st_year;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| sub_no           | int         | YES  |     | NULL    |       |
| sr_no            | int         | YES  |     | NULL    |       |
| sub_name         | varchar(50) | YES  |     | NULL    |       |
| sub_teacher      | varchar(50) | YES  |     | NULL    |       |
| sub_marks        | int         | YES  |     | NULL    |       |
| book_publication | varchar(35) | YES  |     | NULL    |       |
| sbook_author     | varchar(40) | YES  |     | NULL    |       |
| slec_time        | time        | YES  |     | NULL    |       |
| s_extra_lec      | varchar(20) | YES  |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
9 rows in set (0.00 sec)

mysql> alter table  1st_year modify (sr_no int primary key);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(sr_no int primary key)' at line 1
mysql> alter table  1st_year modify sr_no primary key;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primary key' at line 1
mysql> alter table  1st_year rename sr_no to sub_name primary key;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to sub_name primary key' at line 1
mysql> alter table  1st_year add primary key(sr_no);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc  1st_year;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| sub_no           | int         | YES  |     | NULL    |       |
| sr_no            | int         | NO   | PRI | NULL    |       |
| sub_name         | varchar(50) | YES  |     | NULL    |       |
| sub_teacher      | varchar(50) | YES  |     | NULL    |       |
| sub_marks        | int         | YES  |     | NULL    |       |
| book_publication | varchar(35) | YES  |     | NULL    |       |
| sbook_author     | varchar(40) | YES  |     | NULL    |       |
| slec_time        | time        | YES  |     | NULL    |       |
| s_extra_lec      | varchar(20) | YES  |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
9 rows in set (0.00 sec)

mysql> alter table  1st_year modify sr_no int auto increment;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'auto increment' at line 1
mysql> alter table  1st_year modify sr_no int auto_increment;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table  1st_year modify sub_no varchar, sr_no decimal;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ', sr_no decimal' at line 1
mysql> alter table  1st_year modify (sub_no varchar,sr_no decimal);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(sub_no varchar,sr_no decimal)' at line 1
mysql> alter table  1st_year modify sub_no varchar,modify sr_no decimal;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',modify sr_no decimal' at line 1
mysql> alter table  1st_year modify sub_no varchar,modify slec_time decimal;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',modify slec_time decimal' at line 1
mysql> alter table  1st_year modify sub_no varchar(60), modify sr_no decimal;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc  1st_year;
+------------------+---------------+------+-----+---------+-------+
| Field            | Type          | Null | Key | Default | Extra |
+------------------+---------------+------+-----+---------+-------+
| sub_no           | varchar(60)   | YES  |     | NULL    |       |
| sr_no            | decimal(10,0) | NO   | PRI | NULL    |       |
| sub_name         | varchar(50)   | YES  |     | NULL    |       |
| sub_teacher      | varchar(50)   | YES  |     | NULL    |       |
| sub_marks        | int           | YES  |     | NULL    |       |
| book_publication | varchar(35)   | YES  |     | NULL    |       |
| sbook_author     | varchar(40)   | YES  |     | NULL    |       |
| slec_time        | time          | YES  |     | NULL    |       |
| s_extra_lec      | varchar(20)   | YES  |     | NULL    |       |
+------------------+---------------+------+-----+---------+-------+
9 rows in set (0.00 sec)

Rename
mysql> alter table  sub_no rename sr_no to serial_no;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to serial_no' at line 1
mysql> alter table 1st_year sub_no rename sr_no to serial_no;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'sub_no rename sr_no to serial_no' at line 1
mysql> alter table 1st_year rename sr_no to serial_no;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to serial_no' at line 1
mysql> alter table 1st_year rename column sr_no to serial_no;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table  1st_year rename column  book_publication to s_book_publication, rename column s_extra_lec to  s_extra_lec_day;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

Drop
mysql> alter table  1st_year drop  sub_no;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0
