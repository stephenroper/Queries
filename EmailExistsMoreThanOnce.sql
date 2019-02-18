/*Subscriber count - exists more than once on DE*/
Select EmailAddress
Count (EmailAddress) as INSTANCES
FROM [DE]
Group By EmailAddress
Having Count (*) > 1