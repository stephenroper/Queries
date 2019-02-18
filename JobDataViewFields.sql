--This query will pull many (but not all) fields from the Job data view table.
--Remove any fields you do not need to query for.
--Enter JobIDs in parentheses, separated by a comma.

SELECT JobID,
EmailID,
EmailName,
EmailSubject,
DynamicEmailSubject,
SuppressTracking,
SendClassification,
EmailSendDefinition,
SalesForceTotalSubscriberCount,
SalesForceErrorSubscriberCount,
IPAddress,
FromName,
FromEmail,
IsWrapped
FROM _Job
WHERE JobID IN ()
