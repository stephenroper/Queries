--This query will pull the COUNT for domains from the Source Data Extension.
--Counts will only be shown if more than 1 block occurred to that domain.

SELECT COUNT (Domain) AS TotalCounts,
Domain
FROM [Source DE]
WHERE BounceCategory = 'Block bounce'
GROUP BY Domain
HAVING COUNT (*) > 1