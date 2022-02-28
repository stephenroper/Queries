/*This query will pull records that have an EmailAddress record existing more than once.
Replace 'EmailAddress' with any other field to find duplicates for that field.*/

SELECT EmailAddress
FROM
[source_DE]
WHERE EmailAddress IN
  (SELECT EmailAddress
  FROM [source_DE]
  GROUP BY EmailAddress
  HAVING COUNT(*) > 1)
