/*
SELECT * FROM Employers;
SELECT * FROM Sectors;

SELECT *, 'JOIN' FROM Employers e
JOIN Sectors s 
ON s.Id = e.SectorId;

SELECT *, 'LEFT JOIN' FROM Employers e
LEFT JOIN Sectors s 
ON s.Id = e.SectorId;

SELECT *, 'RIGHT JOIN' FROM Employers e
RIGHT JOIN Sectors s 
ON s.Id = e.SectorId;

SELECT *, 'FULL JOIN' FROM Employers e
FULL JOIN Sectors s 
ON s.Id = e.SectorId;
*/