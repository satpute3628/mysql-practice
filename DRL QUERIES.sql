DRL QUERIES:

Fetch everything from table:
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

Fetch  specific column from table:
mysql> select sub_teacher from 1st_year;
+-------------+
| sub_teacher |
+-------------+
| rk          |
| k           |
+-------------+
2 rows in set (0.00 sec)