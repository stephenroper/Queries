SELECT x.SubscriberKey
, x.EventDate
, x.JobID
, x.EmailName
FROM
	(
	SELECT s.SubscriberKey
	, s.EventDate
	, s.JobID
	, j.EmailName
	, Row_Number() over (Partition By s.SubscriberKey, s.JobID ORDER BY s.EventDate DESC) rank
	FROM _Sent s
	INNER JOIN _Job j ON s.JobID = j.JobID
	WHERE NOT EXISTS
		(
			SELECT o.JobID
			FROM _Open o
			WHERE o.JobID = s.JobID
		)
	) x
WHERE x.rank = 1