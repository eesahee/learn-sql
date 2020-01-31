/**
* SQL File
* File: combineTwoFiles
* Created by: isai
* Created on: 1/30/2020 8:58 PM
* IDE: PhpStorm
* Purpose: 
*/


/*

Table: persons

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| PersonId    | int     |
| FirstName   | varchar |
| LastName    | varchar |
+-------------+---------+
PersonId is the primary key column for this table.

Table: Address

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| AddressId   | int     |
| PersonId    | int     |
| City        | varchar |
| State       | varchar |
+-------------+---------+
AddressId is the primary key column for this table.


Write a SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people:

FirstName, LastName, City, State

 */


USE `practice_probs`;

CREATE TABLE persons
(
   person_id  INT PRIMARY KEY,
   first_name VARCHAR(50),
   last_name  VARCHAR(50)
);

CREATE TABLE address
(
    address_id INT PRIMARY KEY,
    person_id INT,
    city      VARCHAR(50),
    state     VARCHAR(50)
);

SELECT
    `p`.`first_name`,
    `p`.`last_name`,
    `a`.`city`,
     `a`.`state`
FROM `persons` `p`
LEFT JOIN address `a`
    ON `p`.person_id = `a`.person_id




