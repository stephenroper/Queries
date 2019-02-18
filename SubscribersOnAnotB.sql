--This query pulls all subscribers from Data Extension A who do not exist on Data Extension B.
--[Data Extension A] - [Data Extension B] = [Data Extension C]

SELECT a.EmailAddress
FROM [Data Extension A] a
WHERE NOT EXISTS
  (SELECT b.EmailAddress
  FROM [Data Extension B] b
  WHERE a.EmailAddress = b.EmailAddress)
