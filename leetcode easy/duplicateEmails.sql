/**
* SQL File
* File: duplicateEmails
* Created by: imorfin
* Created on: 12/19/19 3:48 PM
* IDE: PhpStorm
* Purpose: 
*/



/*

Write a SQL query to find all duplicate emails in a table named Person.

+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+
For example, your query should return the following for the above table:

+---------+
| Email   |
+---------+
| a@b.com |
+---------+

Note: All emails are in lowercase.

 */


USE `practice_probs`;

DROP TABLE IF EXISTS person;
CREATE TABLE person (
      `id`    INT
    , `email` VARCHAR(20)
)
;

INSERT INTO `person` (`id`, `email`)
VALUES  ( 1 , 'a@b.com' )
      , ( 2 , 'c@d.com' )
      , ( 3 , 'a@b.com' )
;

# SOLUTION 1

SELECT
`email_count`.`email`
FROM
    (
    SELECT
       p.`email` as email
    , COUNT(p.`email`) as count_email
    FROM
    `person` p
    ) as email_count
WHERE 1
AND `email_count`.`count_email` > 1
;

# Solution 2

SELECT
            p.`email` as email
        FROM
            `person` p
WHERE 1
      GROUP BY p.`email`
HAVING COUNT(p.`email`) > 1