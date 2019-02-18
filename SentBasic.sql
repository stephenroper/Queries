--This will pull information based on the Sent data view table.

SELECT SubscriberKey,
EventDate,
JobID
FROM _Sent
WHERE --SubscriberKey or JobID or EventDate = ''
