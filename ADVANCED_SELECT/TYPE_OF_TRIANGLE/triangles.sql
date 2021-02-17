-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

--     Equilateral: It's a triangle with 

-- sides of equal length.
-- Isosceles: It's a triangle with
-- sides of equal length.
-- Scalene: It's a triangle with
-- sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle.

-- IF(condition,True,False)
-- IF(A+B>C AND A+C>B AND B+C>A,,'Not A Triangle')
-- IF(A=B AND B=C,'Equilateral',)
-- IF(A=B OR B=C OR A=C,'Isosceles','Scalene')
SELECT IF(A+B>C AND A+C>B AND B+C>A,IF(A=B AND B=C,'Equilateral',IF(A=B OR B=C OR A=C,'Isosceles','Scalene')),'Not A Triangle') FROM TRIANGLES;
--OR
SELECT CASE
WHEN A+B<=C OR A+C<=B OR B+C<=A THEN 'Not A Triangle'
WHEN A=B AND B=C  THEN 'Equilateral'
WHEN A=B OR B=C OR A=C THEN 'Isosceles'
ELSE 'Scalene'
end 
from Triangles;