BACKUP DATABASE MyDatabase
TO DISK = 'E:\MyDatabase_Full.bak'
WITH INIT,STATS = 10;


BACKUP DATABASE MyDatabase
TO DISK = 'E:\MyDatabase_Diff.bak'
WITH DIFFERENTIAL, INIT, STATS = 10;

BACKUP DATABASE MyDatabase
TO
DISK = 'E:\MyDatabase_Part1.bak', 
DISK = 'E:\MyDatabase_Part2.bak'
WITH INIT, STATS = 10;

