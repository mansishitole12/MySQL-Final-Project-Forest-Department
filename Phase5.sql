# 100 SQL Queries for Forest Department Database

## DDL (10 queries)
-- 1. CREATE TABLE (DDL)
CREATE TABLE ForestVehicles (
  vehicle_id INT PRIMARY KEY,
  vehicle_type VARCHAR(50),
  registration_no VARCHAR(20) UNIQUE,
  assigned_zone_id INT,
  status VARCHAR(20),
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW(),
  FOREIGN KEY (assigned_zone_id) REFERENCES ForestZones(id) ON DELETE SET NULL
);


-- 2. ALTER TABLE ADD COLUMN (DDL)
ALTER TABLE Staff
ADD COLUMN salary DECIMAL(10,2) DEFAULT 30000.00;


 -- 3. ALTER TABLE MODIFY (DDL)
ALTER TABLE WildlifeSpecies
MODIFY population_estimate INT DEFAULT 0 NOT NULL;


 -- 4. ALTER TABLE RENAME COLUMN (DDL)
ALTER TABLE PatrolRecords
RENAME COLUMN vehicle_used TO transport_mode;


-- 5. CREATE INDEX (DDL)
CREATE INDEX idx_zone_type ON ForestZones(zone_type);


-- 6. CREATE VIEW (DDL) (simple schema-level object)
CREATE VIEW ActiveZones AS
SELECT id, name, location, area_sq_km
FROM ForestZones
WHERE status = 'Active';


-- 7. CREATE SCHEMA / separate logical grouping (DDL)
CREATE SCHEMA forest_reporting;


-- 8. CREATE TABLE with FK (DDL)
CREATE TABLE ZoneStaff (
  zs_id INT PRIMARY KEY,
  zone_id INT,
  staff_id INT,
  role VARCHAR(50),
  assigned_from DATE,
  assigned_to DATE,
  FOREIGN KEY (zone_id) REFERENCES ForestZones(id) ON DELETE CASCADE,
  FOREIGN KEY (staff_id) REFERENCES Staff(id) ON DELETE CASCADE
);


-- 9. DROP INDEX (DDL)
DROP INDEX idx_conservation_status ON WildlifeSpecies;


-- 10.  DROP TABLE IF EXISTS (DDL)
DROP TABLE IF EXISTS TempPoachingReports;

## DML (10 queries)

-- 11. INSERT (DML)
INSERT INTO Staff (id, name, designation, department, location, contact, email, status, created_at, updated_at, salary)
VALUES (21, 'Kavita Rao', 'Wildlife Biologist', 'Research', 'Hyderabad', '7012345678', 'kavita.rao@forest.gov.in', 'Active', NOW(), NOW(), 42000.00);


-- 12. BULK INSERT (multiple rows) (DML)
INSERT INTO ForestVehicles (vehicle_id, vehicle_type, registration_no, assigned_zone_id, status, created_at, updated_at)
VALUES
(1,'Jeep','MH01AB1234',5,'Operational',NOW(),NOW()),
(2,'Motorbike','MH01XY9876',3,'Operational',NOW(),NOW());


-- 13.  UPDATE (DML)
UPDATE ForestZones
SET status = 'Under Maintenance', updated_at = NOW()
WHERE id = 5;

-- 14.  DELETE (DML)
DELETE FROM PatrolRecords
WHERE date < '2024-01-01' AND status = 'Completed';

-- 15.  UPSERT / INSERT ... ON DUPLICATE KEY UPDATE (MySQL) (DML)
INSERT INTO WildlifeSpecies (id, name, species_type, conservation_status, native_region, population_estimate, status, created_at, updated_at)
VALUES (21,'Striped Hyena','Mammal','Near Threatened','Central India',1200,'Active',NOW(),NOW())
ON DUPLICATE KEY UPDATE population_estimate = VALUES(population_estimate), updated_at = NOW();


-- 16.  UPDATE with JOIN (DML)
UPDATE Staff s
JOIN ZoneStaff zs ON s.id = zs.staff_id
SET s.location = 'Bhopal', s.updated_at = NOW()
WHERE zs.zone_id = 2;


-- 17.  DELETE with subquery (DML)
DELETE FROM Staff
WHERE id IN (SELECT staff_id FROM ZoneStaff WHERE assigned_to < '2023-01-01');

-- 18.  INSERT from SELECT (DML)
INSERT INTO TempPoachingReports (id, zone_name, report_date)
SELECT id, name, NOW()
FROM ForestZones
WHERE zone_type = 'Tiger Reserve';


-- 19.  TRUNCATE (DML)
TRUNCATE TABLE TempPoachingReports;


-- 20.  MERGE / INSERT ... WHEN MATCHED (SQL Server style) (DML)
MERGE INTO WildlifeSpecies AS target
USING (SELECT 21 AS id, 'Striped Hyena' AS name) AS source
ON target.id = source.id
WHEN MATCHED THEN
  UPDATE SET name = source.name, updated_at = GETDATE()
WHEN NOT MATCHED THEN
  INSERT (id, name, species_type, conservation_status, native_region, population_estimate, status, created_at)
  VALUES (source.id, source.name, 'Mammal', 'Near Threatened', 'Central India', 1200, 'Active', GETDATE());

## DQL — SELECT / Reporting (10 queries)

-- 21. Simple SELECT (DQL)
SELECT id, name, location, zone_type FROM ForestZones WHERE status = 'Active';


-- 22.  SELECT with WHERE and ORDER BY (DQL)
SELECT id, name, area_sq_km FROM ForestZones
WHERE area_sq_km > 500
ORDER BY area_sq_km DESC;


-- 23.  SELECT with JOIN (DQL)
SELECT p.id, p.patrol_team, z.name AS zone_name, p.date
FROM PatrolRecords p
JOIN ForestZones z ON p.area_covered LIKE CONCAT('%', z.name, '%')
ORDER BY p.date DESC;


-- 24.  Aggregation with GROUP BY (DQL)
SELECT zone_id, COUNT(*) AS staff_count
FROM ZoneStaff
GROUP BY zone_id
HAVING COUNT(*) > 2;


-- 25. COUNT and DISTINCT (DQL)
SELECT COUNT(DISTINCT location) AS distinct_zone_locations FROM ForestZones;


-- 26. TOP / LIMIT (DQL)
SELECT name, population_estimate FROM WildlifeSpecies
ORDER BY population_estimate DESC
LIMIT 5;


-- 27.  SELECT with LIKE and pattern (DQL)
SELECT id, name FROM Staff WHERE email LIKE '%@forest.gov.in';


-- 28.  SELECT using BETWEEN (DQL
SELECT id, name FROM WildlifeSpecies WHERE population_estimate BETWEEN 1000 AND 10000;


-- 29.  SELECT with subquery in SELECT list (DQL)
SELECT z.id, z.name,
  (SELECT COUNT(*) FROM PatrolRecords p WHERE p.area_covered LIKE CONCAT('%', z.name, '%')) AS patrol_count
FROM ForestZones z;


-- 30.  SELECT with CASE expression (DQL)
SELECT name, area_sq_km,
  CASE WHEN area_sq_km > 1000 THEN 'Large' WHEN area_sq_km BETWEEN 500 AND 1000 THEN 'Medium' ELSE 'Small' END AS size_category
FROM ForestZones;

## Clauses & Operators (10 queries)

-- 31.  WHERE with AND/OR/NOT (Clauses)
SELECT * FROM Incidents
WHERE (incident_type = 'Poaching' OR incident_type = 'Illegal Logging')
AND status != 'Resolved';


-- 32.  IN operator (Clauses)
SELECT id, name FROM ForestZones WHERE zone_type IN ('National Park', 'Tiger Reserve');


-- 33.  EXISTS (Clauses)
SELECT s.id, s.name FROM Staff s
WHERE EXISTS (SELECT 1 FROM ZoneStaff zs WHERE zs.staff_id = s.id AND zs.role = 'Ranger');


-- 34.  ANY / ALL (Clauses)
SELECT name FROM WildlifeSpecies
WHERE population_estimate > ALL (SELECT AVG(population_estimate) FROM WildlifeSpecies GROUP BY species_type);


-- 35.  LIKE with wildcard (Clauses)
SELECT * FROM PatrolRecords WHERE area_covered LIKE '%Simlipal%';


-- 36.  IS NULL / IS NOT NULL (Clauses)
SELECT id, name FROM ForestZones WHERE established_date IS NULL;


-- 37.  BETWEEN for dates (Clauses)
SELECT * FROM PatrolRecords WHERE date BETWEEN '2025-06-01' AND '2025-06-30';


-- 38.  REGEXP (MySQL) / ~ (Postgres) (Clauses)
SELECT name FROM Staff WHERE name REGEXP '^(A|S)';


-- 39.  ORDER BY multiple columns (Clauses)
SELECT id, name FROM WildlifeSpecies ORDER BY conservation_status ASC, population_estimate DESC;


-- 40.  GROUP BY with ROLLUP (Clauses)
SELECT zone_type, COUNT(*) AS zones, SUM(area_sq_km) AS total_area
FROM ForestZones
GROUP BY zone_type WITH ROLLUP;

## Constraints & Cascades (8 queries)

-- 41.  Add UNIQUE constraint (Constraints)
ALTER TABLE Staff ADD CONSTRAINT uq_staff_email UNIQUE (email);


-- 42.  Add CHECK constraint (Constraints)
ALTER TABLE WildlifeSpecies ADD CONSTRAINT chk_population_nonneg CHECK (population_estimate >= 0);


 -- 43.  Add FOREIGN KEY with ON DELETE CASCADE (Constraints)
ALTER TABLE ZoneStaff
ADD CONSTRAINT fk_zone FOREIGN KEY (zone_id) REFERENCES ForestZones(id) ON DELETE CASCADE ON UPDATE CASCADE;


-- 44.  Create composite primary key (Constraints)
CREATE TABLE ZonePatrol (
  zone_id INT,
  patrol_id INT,
  PRIMARY KEY (zone_id, patrol_id),
  FOREIGN KEY (zone_id) REFERENCES ForestZones(id),
  FOREIGN KEY (patrol_id) REFERENCES PatrolRecords(id)
);


-- 45.  Drop a foreign key constraint (Constraints)
ALTER TABLE ZoneStaff DROP FOREIGN KEY fk_zone;


-- 46.  Rename constraint (syntax varies; example for SQL Server) (Constraints)
EXEC sp_rename 'dbo.Staff.uq_staff_email', 'uq_staff_email_new';


-- 47.  Enable / Disable constraint (Constraints)
ALTER TABLE WildlifeSpecies NOCHECK CONSTRAINT chk_population_nonneg;


-- 48.  Add DEFAULT constraint (Constraints)
ALTER TABLE Incidents ADD CONSTRAINT df_incident_status DEFAULT 'Reported' FOR status;

## Joins (8 queries)

-- 49.  INNER JOIN (Joins)
SELECT p.id, p.patrol_team, s.name AS supervisor
FROM PatrolRecords p
INNER JOIN Staff s ON p.supervisor_id = s.id;

-- 50.  LEFT JOIN (Joins)

SELECT z.name AS zone_name, s.name AS head_name
FROM ForestZones z
LEFT JOIN ZoneStaff zs ON z.id = zs.zone_id AND zs.role = 'Zone Head'
LEFT JOIN Staff s ON zs.staff_id = s.id;

-- 51.  RIGHT JOIN (Joins)
SELECT s.name, zs.role, z.name FROM ZoneStaff zs
RIGHT JOIN Staff s ON zs.staff_id = s.id
LEFT JOIN ForestZones z ON zs.zone_id = z.id;


-- 52. FULL OUTER JOIN (Joins)
-- Example for PostgreSQL or SQL Server
SELECT z.id AS zone_id, z.name AS zone_name, zs.role
FROM ForestZones z
FULL OUTER JOIN ZoneStaff zs ON z.id = zs.zone_id;


-- 53.  SELF JOIN (Joins)
SELECT a.id AS staff_a, b.id AS staff_b, a.name, b.name
FROM Staff a
JOIN Staff b ON a.location = b.location AND a.id <> b.id
WHERE a.designation = 'Forest Officer';


-- 54.  CROSS JOIN (Joins)
SELECT s.name, z.name FROM Staff s CROSS JOIN ForestZones z LIMIT 10;


-- 55.  JOIN with USING (Joins)
-- Using shared column name zone_id example
SELECT zs.zone_id, z.name, COUNT(zs.staff_id) FROM ZoneStaff zs
JOIN ForestZones z USING (zone_id)
GROUP BY zs.zone_id, z.name;


-- 56.  MULTI-TABLE JOIN with filters (Joins)
SELECT p.id, p.date, p.incidents_reported, s.name AS patrol_leader, z.name AS zone
FROM PatrolRecords p
JOIN ZoneStaff zs ON p.patrol_team = zs.role
JOIN Staff s ON zs.staff_id = s.id
JOIN ForestZones z ON zs.zone_id = z.id
WHERE p.status = 'Action Taken';

## Subqueries (10 queries)

-- 57.  Correlated subquery (Subqueries)
SELECT ws.id, ws.name, ws.population_estimate
FROM WildlifeSpecies ws
WHERE ws.population_estimate > (
  SELECT AVG(population_estimate) FROM WildlifeSpecies WHERE species_type = ws.species_type
);


-- 58.  Subquery in FROM (derived table) (Subqueries)
SELECT zone_name, max_patrols FROM (
  SELECT z.name AS zone_name, COUNT(p.id) AS max_patrols
  FROM ForestZones z
  JOIN PatrolRecords p ON p.area_covered LIKE CONCAT('%', z.name, '%')
  GROUP BY z.name
) AS t WHERE max_patrols > 5;


-- 59.  EXISTS correlated (Subqueries)
SELECT name FROM Staff s WHERE EXISTS (SELECT 1 FROM ZoneStaff zs WHERE zs.staff_id = s.id AND zs.zone_id = 1);


-- 60.  IN with subquery (Subqueries)
SELECT * FROM Incidents WHERE reported_by IN (SELECT name FROM Staff WHERE department = 'Surveillance');


-- 61.  ANY in subquery (Subqueries)
SELECT name FROM ForestZones WHERE area_sq_km > ANY (SELECT AVG(area_sq_km) FROM ForestZones GROUP BY zone_type);


-- 62.  Subquery returning scalar (Subqueries)
SELECT name, (SELECT COUNT(*) FROM PatrolRecords p WHERE p.area_covered LIKE CONCAT('%', ForestZones.name, '%')) AS patrols
FROM ForestZones;


-- 63.  NOT EXISTS subquery (Subqueries)
SELECT name FROM WildlifeSpecies ws WHERE NOT EXISTS (SELECT 1 FROM Incidents i WHERE i.location LIKE CONCAT('%', ws.native_region, '%'));


-- 64.  Multiple nested subqueries (Subqueries)
SELECT name FROM ForestZones WHERE id = (
  SELECT zone_id FROM ZoneStaff WHERE staff_id = (
    SELECT id FROM Staff WHERE email = 'rajesh.verma@forest.gov.in'
  ) LIMIT 1
);


-- 65.  Subquery with aggregation (Subqueries)
SELECT id, name FROM WildlifeSpecies WHERE population_estimate = (SELECT MAX(population_estimate) FROM WildlifeSpecies);


-- 66.  EXISTS with correlated DELETE (Subqueries)
DELETE FROM PatrolRecords p WHERE EXISTS (SELECT 1 FROM Incidents i WHERE i.date = p.date AND i.location LIKE CONCAT('%', p.area_covered, '%'));

## Functions (10 queries)

-- 67.  Aggregate SUM / AVG / COUNT (Functions)
SELECT zone_type, COUNT(*) AS num_zones, AVG(area_sq_km) AS avg_area
FROM ForestZones GROUP BY zone_type;


-- 68.  String functions (UPPER, LOWER, CONCAT) (Functions)
SELECT UPPER(name) AS upper_name, CONCAT(name, ' - ', location) AS label FROM ForestZones;


-- 69.  Date functions (DATEDIFF, DATE_ADD) (Functions)
SELECT id, name, DATEDIFF(NOW(), established_date) AS days_since_established FROM ForestZones;


-- 70. COALESCE / NULLIF (Functions)
SELECT name, COALESCE(description, 'No description') AS desc_summary FROM ForestZones;


-- 71.  User-defined scalar function (pseudo example) (Functions)
-- Example (syntax varies by DB): create a function to flag endangered species
CREATE FUNCTION is_endangered(cs VARCHAR(50)) RETURNS BOOLEAN
RETURN (cs IN ('Endangered','Critically Endangered'));


-- 72.  Using function in SELECT (Functions)
SELECT name FROM WildlifeSpecies WHERE is_endangered(conservation_status) = TRUE;


-- 73.  ROUND, FLOOR numeric (Functions)
SELECT name, ROUND(area_sq_km,0) AS area_rounded FROM ForestZones;


-- 74.  JSON functions (if supported) (Functions)
-- Example: store sensor readings as JSON and extract value (MySQL JSON_EXTRACT)
SELECT JSON_EXTRACT(sensor_data, '$.temp') AS temp FROM ZoneSensors WHERE zone_id = 1;


-- 75.  Mathematical aggregate (SUM) (Functions)
SELECT SUM(population_estimate) AS total_wildlife FROM WildlifeSpecies WHERE status = 'Active';


-- 76.  Window-like scalar function usage (Functions)
SELECT id, name, population_estimate, CONCAT(name, ' (', population_estimate, ')') AS label FROM WildlifeSpecies;

## Views & CTEs (8 queries)

-- 77.  CREATE VIEW (Views)
CREATE OR REPLACE VIEW ZoneSummary AS
SELECT z.id, z.name, z.zone_type, COUNT(zs.staff_id) AS staff_count
FROM ForestZones z
LEFT JOIN ZoneStaff zs ON z.id = zs.zone_id
GROUP BY z.id, z.name, z.zone_type;


-- 78.  USE VIEW (Views)
SELECT * FROM ZoneSummary WHERE staff_count > 3;


-- 79.  Simple CTE (WITH) (CTE)
WITH RecentPatrols AS (
  SELECT * FROM PatrolRecords WHERE date > '2025-01-01'
)
SELECT rp.*, z.name AS zone_name FROM RecentPatrols rp
JOIN ForestZones z ON rp.area_covered LIKE CONCAT('%', z.name, '%');

-- 80.  Recursive CTE (CTE)
-- Example: hierarchical staff reporting chain (assumes manager_id column exists in Staff)
WITH RECURSIVE ManagerChain AS (
  SELECT id, name, manager_id, 1 AS lvl FROM Staff WHERE id = 13
  UNION ALL
  SELECT s.id, s.name, s.manager_id, mc.lvl + 1
  FROM Staff s JOIN ManagerChain mc ON s.manager_id = mc.id
)
SELECT * FROM ManagerChain;

-- 81.  CTE with aggregates (CTE)
WITH ZonePatrolCounts AS (
  SELECT z.id, z.name, COUNT(p.id) AS patrols
  FROM ForestZones z
  LEFT JOIN PatrolRecords p ON p.area_covered LIKE CONCAT('%', z.name, '%')
  GROUP BY z.id, z.name
)
SELECT * FROM ZonePatrolCounts WHERE patrols > 2;


-- 82.  MATERIALIZED VIEW (if supported) (Views)
-- PostgreSQL example
CREATE MATERIALIZED VIEW mv_zone_stats AS
SELECT zone_type, COUNT(*) AS cnt, SUM(area_sq_km) AS total_area
FROM ForestZones GROUP BY zone_type;


-- 83.  DROP VIEW (Views)
DROP VIEW IF EXISTS ZoneSummary;


-- 84.  ALTER VIEW (Views)
CREATE OR REPLACE VIEW ZoneSummary AS
SELECT z.id, z.name, z.zone_type, COALESCE(COUNT(zs.staff_id),0) AS staff_count
FROM ForestZones z
LEFT JOIN ZoneStaff zs ON z.id = zs.zone_id
GROUP BY z.id, z.name, z.zone_type;

## Stored Procedures (5 queries)

-- 85.  CREATE PROCEDURE (Stored Procedure)
CREATE PROCEDURE GetZonePatrolCount(IN zid INT)
BEGIN
  SELECT z.name, COUNT(p.id) AS patrol_count
  FROM ForestZones z
  LEFT JOIN PatrolRecords p ON p.area_covered LIKE CONCAT('%', z.name, '%')
  WHERE z.id = zid
  GROUP BY z.name;
END;


-- 86.  CALL PROCEDURE (Stored Procedure)
CALL GetZonePatrolCount(3);


-- 87.  Procedure to insert incident (Stored Procedure)
CREATE PROCEDURE AddIncident(IN itype VARCHAR(50), IN lloc VARCHAR(100), IN rby VARCHAR(100), IN idesc TEXT)
BEGIN
  INSERT INTO Incidents (incident_type, location, date, reported_by, description, status, created_at, updated_at)
  VALUES (itype, lloc, CURDATE(), rby, idesc, 'Reported', NOW(), NOW());
END;

--  88. Procedure with transaction control (Stored Procedure)
CREATE PROCEDURE TransferStaff(IN sid INT, IN new_location VARCHAR(100))
BEGIN
  START TRANSACTION;
    UPDATE Staff SET location = new_location, updated_at = NOW() WHERE id = sid;
    INSERT INTO StaffTransfers (staff_id, to_location, transfer_date) VALUES (sid, new_location, NOW());
  COMMIT;
END;


-- 89.  DROP PROCEDURE (Stored Procedure)
DROP PROCEDURE IF EXISTS GetZonePatrolCount;

## Window Functions (5 queries)
-- 90.  ROW_NUMBER() OVER (Window)
SELECT id, name, population_estimate,
  ROW_NUMBER() OVER (ORDER BY population_estimate DESC) AS rn
FROM WildlifeSpecies;


-- 91. -- RANK() OVER (Window)
SELECT id, name, population_estimate,
  RANK() OVER (PARTITION BY species_type ORDER BY population_estimate DESC) AS rk
FROM WildlifeSpecies;

-- 92. -- LEAD() / LAG() (Window)
SELECT id, name, population_estimate,
  LAG(population_estimate) OVER (ORDER BY population_estimate) AS prev_pop,
  LEAD(population_estimate) OVER (ORDER BY population_estimate) AS next_pop
FROM WildlifeSpecies;


-- 93. -- SUM() OVER partition (Window)
SELECT species_type, name, population_estimate,
  SUM(population_estimate) OVER (PARTITION BY species_type) AS total_by_type
FROM WildlifeSpecies;


-- 94. -- AVG() OVER with frame specification (Window)
SELECT id, name, population_estimate,
  AVG(population_estimate) OVER (ORDER BY population_estimate ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS rolling_avg
FROM WildlifeSpecies;

## Transactions (5 queries)

-- 95. -- BEGIN / COMMIT (Transactions)
START TRANSACTION;
  UPDATE Staff SET salary = salary * 1.05 WHERE department = 'Surveillance';
  INSERT INTO AuditLogs (event, event_time) VALUES ('Salary increase applied', NOW());
COMMIT;

-- 96. -- ROLLBACK example (Transactions)
START TRANSACTION;
  UPDATE ForestZones SET status = 'Closed' WHERE id = 2;
  -- OOPS condition check fails
ROLLBACK;


-- 97. -- SAVEPOINT and ROLLBACK TO SAVEPOINT (Transactions)
START TRANSACTION;
  UPDATE Staff SET salary = salary + 1000 WHERE id = 1;
  SAVEPOINT sp1;
  UPDATE Staff SET salary = salary + 2000 WHERE id = 2;
  ROLLBACK TO sp1;
COMMIT;


-- 98. -- SET TRANSACTION ISOLATION LEVEL (Transactions)
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
START TRANSACTION;
  SELECT * FROM WildlifeSpecies WHERE id = 1 FOR UPDATE;
COMMIT;


-- 99. Two-phase commit pseudo (Transactions)
-- Outline: prepare and commit across multiple DBs (implementation varies by platform)
-- PREPARE TRANSACTION 'tx1';
-- COMMIT PREPARED 'tx1';

## Triggers (5 queries)

-- 100. AFTER INSERT TRIGGER (Triggers)
CREATE TRIGGER trg_after_incident_insert
AFTER INSERT ON Incidents
FOR EACH ROW
BEGIN
  INSERT INTO IncidentLogs (incident_id, logged_at, summary) VALUES (NEW.id, NOW(), CONCAT('New incident: ', NEW.incident_type));
END;
