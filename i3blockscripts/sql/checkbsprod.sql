SELECT * FROM PayType WHERE PtyProcessor!='Offline' AND PtyProcessor!='';

SELECT CfgKey, CfgValue FROM Config WHERE CfgValue != 0 AND CfgKey IN (
	'CC.AUTOPROCESS',
	'API.CC.AUTOPROCESS',
	'EmailAuthentication'
);
SELECT CfgKey, CfgValue FROM Config WHERE CfgValue != '' AND CfgValue != 'localhost' AND CfgKey IN (
	'EmailServer'
);
SELECT CfgKey, CfgValue FROM Config WHERE CfgValue != '' AND CfgKey IN (
	'EmailUsername',
	'EmailPassword',
	'EmailSecure'
);

SELECT GltName, GltEvent, GltScheduleDateField, GltScheduleDaysFromDate, GltScheduleHourOfDay  FROM GuestLetters WHERE GltEvent != 'none' AND GltEvent != '' AND GltScheduleDateField != NULL AND GltScheduleDaysFromDate != NULL AND GltScheduleHourOfDay != NULL;

SELECT UntId, UntEntryType FROM Unit WHERE UntEntryType IN ('Ritelock','PointCentral','dormakaba','Brivo','RemoteLock');

SELECT BdcReservationsActive FROM BookingDotComListings WHERE BdcReservationsActive != 0;
SELECT BdcContentActive FROM BookingDotComListings WHERE BdcContentActive != 0;
SELECT BdcActive FROM BookingDotComListings WHERE BdcActive != 0;

SELECT CfgKey, CfgValue FROM Config WHERE CfgValue != '' AND 
	CfgKey LIKE 'BookingDotComBilling%' AND
	CfgKey LIKE 'BookingDotComContact%' AND
	CfgKey LIKE 'BookingDotComMachine%' AND
	CfgKey = 'BookingDotComLegalEntityID';

SELECT * FROM ScheduledTasks WHERE task_name IN ('BookingDotCom Status Updater', 'BookingDotCom Sync');

SELECT * FROM Config WHERE CfgValue != '' AND CfgKey IN ('RevinatePassword','RevinateUsername');

SELECT * FROM ScheduledTasks WHERE task_name='Revinate Guest Upload';

SELECT * FROM Config WHERE CfgValue != '' AND CfgKey IN ('AirbnbUserId','AirbnbAccessToken','AirbnbRefreshToken');
SELECT * FROM ScheduledTasks WHERE task_name='Airbnb Sync';

SELECT * FROM Config WHERE CfgValue != '' AND CfgValue != 'DEMO_ADVERTISER' AND CfgKey = 'HomeawayAdvertiserID';

SELECT * FROM Config WHERE CfgKey = 'TurnoverBnbToken';
SELECT * FROM Config WHERE CfgKey = 'BreezewayCompanyID';
