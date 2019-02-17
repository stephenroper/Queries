SELECT TOP 10 EventDate,
SubscriberKey,
JobID
FROM _Sent
WHERE
	(
	JobID = 123456
	OR EventDate >= CONVERT(date, GETDATE() - 30)
	OR TriggeredSendCustomerKey = 'Receipt'
	)
AND SubscriberKey = 'stephenroper@me.com'