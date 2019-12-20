/**
* SQL File
* File: notBoringMovies
* Created by: imorfin
* Created on: 12/19/19 3:13 PM
* IDE: PhpStorm
* Purpose: 
*/


/*

X city opened a new cinema, many people would like to go to this cinema. The cinema also gives out a poster indicating the movies’ ratings and descriptions.
Please write a SQL query to output movies with an odd numbered ID and a description that is not 'boring'. Order the result by rating.


For example, table cinema:

+---------+-----------+--------------+-----------+
|   id    | movie     |  description |  rating   |
+---------+-----------+--------------+-----------+
|   1     | War       |   Great 3D   |   8.9     |
|   2     | Science   |   Fiction    |   8.5     |
|   3     | Irish     |   Boring     |   6.2     |
|   4     | Ice song  |   Fantasy    |   8.6     |
|   5     | House Card|   Interesting|   9.1     |
+---------+-----------+--------------+-----------+

For the example above, the output should be:
+---------+-----------+--------------+-----------+
|   id    | movie     |  description |  rating   |
+---------+-----------+--------------+-----------+
|   5     | House Card|   Interesting|   9.1     |
|   1     | War       |   Great 3D   |   8.9     |
+---------+-----------+--------------+-----------+




 */




USE `practice_probs`;

DROP TABLE IF EXISTS cinema;
CREATE TABLE cinema
(
    id          INT
  , movie       VARCHAR(50)
  , description VARCHAR(50)
  , rating      FLOAT(3,1)
)
;

INSERT INTO `cinema` (id, movie, description , rating)
VALUES   ( 1 , 'War'        , 'Great 3D'    , 8.9 )
       , ( 2 , 'Science'    , 'Fiction'     , 8.5 )
       , ( 3 , 'Irish'      , 'Boring'      , 6.2 )
       , ( 4 , 'Ice Song'   , 'Fantasy'     , 8.6 )
       , ( 5 , 'House Card' , 'Interesting' , 9.1 )
;


# Solution

SELECT
*
FROM `cinema` c
WHERE 1
# If divisible by 2 and 0 then even, if 1 then odd
AND c.`id` % 2 = 1
# mod(c.id,2) = 1  this also works and is generic SQL
AND c.`description` <> 'Boring'
ORDER BY `rating` DESC
;









