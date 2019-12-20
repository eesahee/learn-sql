/**
* SQL File
* File: swapSalary
* Created by: imorfin
* Created on: 12/20/19 12:37 AM
* IDE: PhpStorm
* Purpose: 
*/

/*

SQL Schema
Given a table salary, such as the one below, that has m=male and f=female values. Swap all f and m values (i.e., change all f values to m and vice versa) with a single update statement and no intermediate temp table.

Note that you must write a single update statement, DO NOT write any select statement for this problem.


Example:

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | m   | 2500   |
| 2  | B    | f   | 1500   |
| 3  | C    | m   | 5500   |
| 4  | D    | f   | 500    |


After running your update statement, the above salary table should have the following rows:


| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | f   | 2500   |
| 2  | B    | m   | 1500   |
| 3  | C    | f   | 5500   |
| 4  | D    | m   | 500    |


 */


USE `practice_probs`;

DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
      `id`     INT
    , `name`   VARCHAR(1)
    , `sex`    VARCHAR(1)
    , `salary` INT
)
;

INSERT INTO `salary` (`id`, `name`, `sex`, `salary`)
VALUES    ( 1 , 'A' , 'm' , 2500 )
        , ( 2 , 'B' , 'f' , 1500 )
        , ( 3 , 'C' , 'm' , 5500 )
        , ( 4 , 'D' , 'f' , 500  )
;



# Solution
UPDATE salary
SET sex = CASE
    WHEN sex = 'f' THEN 'm'
    ELSE 'f'
    END
;

# select to see if update worked
SELECT
    *
FROM `salary`;