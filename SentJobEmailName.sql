/*Pulls Sent and Job data.
Pulls email name and subject.
Alter data after where clause.*/

SELECT s.SubscriberKey
, s.JobID
, s.EventDate
, j.EmailName
, j.EmailSubject
FROM _Sent s
INNER JOIN _Job j
ON s.JobID = j.JobID
WHERE s.SubscriberKey = 'sroper@degdigital.com'
AND s.JobID = '12345'
OR s.EventDate >= CONVERT(date, GetDate() - 10)
OR s.TriggeredSendCustomerKey = 'ReceiptTrigger'