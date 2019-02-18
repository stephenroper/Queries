--This is meant to be used in conjunction with the Sent.txt query.
--[Sent Results DE] will be the name of the results Data Extension from the Sent.txt query.

SELECT s.SubscriberKey,
s.EventDate,
s.JobID,
j.EmailName,
j.EmailSubject
FROM [Sent Results DE] s
INNER JOIN _Job j ON s.JobID = j.JobID
