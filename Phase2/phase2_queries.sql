-- --------------------------------------------------- Analysis of Database ------------------------------------------------
/*
Database Name --> ForestDepartment

Tables -->

1.ForestZones (id, name, location, area_sq_km, zone_type, established_date, status, description, created_at, updated_at) 
2.Staff (id, name, designation, department, location, contact, email, status, created_at, updated_at) 
3.WildlifeSpecies (id, name, species_type, conservation_status, native_region, population_estimate, description, status, created_at, updated_at) 
4.PatrolRecords (id, patrol_team, date, area_covered, incidents_reported, status, vehicle_used, notes, created_at, updated_at) 
5.Incidents (id, incident_type, location, date, reported_by, description, status, action_taken, created_at, updated_at) 
6.ConservationProjects (id, name, objective, start_date, end_date, budget, status, lead_scientist, created_at, updated_at) 
7.ResearchActivities (id, title, lead_researcher, start_date, end_date, focus_area, status, findings, created_at, updated_at) 
8.VisitorLogs (id, visitor_name, contact, visit_date, zone_visited, purpose, guide_name, feedback, created_at, updated_at) 
9.PermitsIssued (id, permit_type, issued_to, issue_date, expiry_date, purpose, status, issuing_officer, created_at, updated_at) 
10.FireReports (id, report_date, location, cause, area_affected, action_taken, status, reported_by, created_at, updated_at) 
11.WaterBodies (id, name, type, location, area, depth, water_quality, status, created_at, updated_at) 
12.TreeSpecies (id, name, scientific_name, common_uses, native_region, conservation_status, growth_rate, status, created_at, updated_at) 
13.Nurseries (id, name, location, capacity, established_date, manager, status, description, created_at, updated_at) 
14.RangerAssignments (id, ranger_name, zone_assigned, start_date, end_date, shift, duty_type, status, created_at, updated_at) 
15.TrainingPrograms (id, title, trainer, start_date, end_date, department, description, status, created_at, updated_at) 
16.EcoTourismSpots (id, name, location, description, activities, entry_fee, contact, status, created_at, updated_at) 
17.CheckPosts (id, location, post_type, staff_count, equipment_available, contact, status, created_at, updated_at, supervisor_name) 
18.EquipmentInventory (id, item_name, category, quantity, purchase_date, cost, supplier, condition, created_at, updated_at) 
19.AnimalTracking (id, animal_id, species, tracker_id, last_location, last_seen, health_status, movement_pattern, created_at, updated_at) 
20.WeatherStations (id, name, location, sensor_types, installed_date, status, temperature, humidity, created_at, updated_at) 
21.SatelliteImagery (id, image_date, area_covered, resolution, file_path, analysis_report, status, captured_by, created_at, updated_at) 
22.IllegalLoggingReports (id, report_date, location, reporter_name, description, action_taken, status, authority_contacted, created_at, updated_at) 
23.ForestBoundaries (id, name, area_sq_km, boundary_type, established_date, location, map_reference, status, created_at, updated_at) 
24.CommunityOutreach (id, program_name, target_group, event_date, location, activities, feedback, status, created_at, updated_at) 
25.BudgetAllocations (id, department, allocation_amount, fiscal_year, spent_amount, purpose, remarks, status, created_at, updated_at) 

*/

-- ---------------------------------------- Database queries ---------------------------------------------------------
-- create a database ForestDepartment
create database ForestDepartment;

-- to work on database, you need to use it first
use ForestDepartment;

-- --------------------------------------------------------- Table Queries ----------------------------------------------

-- Table 1: ForestZones
CREATE TABLE ForestZones (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    area_sq_km FLOAT,
    zone_type VARCHAR(50),
    established_date DATE,
    status VARCHAR(20),
    description TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records 
INSERT INTO ForestZones (id, name, location, area_sq_km, zone_type, established_date, status, description, created_at, updated_at) VALUES
(1, 'Sundarbans Reserve', 'West Bengal', 4260.0, 'Biosphere Reserve', '1989-03-01', 'Active', 'Largest mangrove forest and tiger habitat.', NOW(), NOW()),
(2, 'Gir Forest', 'Gujarat', 1412.0, 'Wildlife Sanctuary', '1965-05-01', 'Active', 'Last home of the Asiatic lions.', NOW(), NOW()),
(3, 'Kanha Zone', 'Madhya Pradesh', 940.0, 'National Park', '1955-06-01', 'Active', 'Famous for barasingha conservation.', NOW(), NOW()),
(4, 'Silent Valley', 'Kerala', 237.5, 'National Park', '1984-11-15', 'Active', 'Pristine evergreen tropical forest.', NOW(), NOW()),
(5, 'Jim Corbett Zone', 'Uttarakhand', 520.8, 'Tiger Reserve', '1936-08-08', 'Active', 'India’s oldest national park.', NOW(), NOW()),
(6, 'Kaziranga Zone', 'Assam', 430.0, 'Wildlife Sanctuary', '1974-02-01', 'Active', 'Known for one-horned rhinoceroses.', NOW(), NOW()),
(7, 'Periyar Forest', 'Kerala', 925.0, 'Tiger Reserve', '1982-01-15', 'Active', 'Major elephant habitat.', NOW(), NOW()),
(8, 'Bandipur Reserve', 'Karnataka', 874.2, 'National Park', '1974-03-10', 'Active', 'Part of Nilgiri Biosphere Reserve.', NOW(), NOW()),
(9, 'Nagarhole Zone', 'Karnataka', 643.4, 'National Park', '1988-07-01', 'Active', 'Rich in flora and fauna diversity.', NOW(), NOW()),
(10, 'Sariska Zone', 'Rajasthan', 881.0, 'Tiger Reserve', '1978-04-01', 'Active', 'Dry deciduous forest and tiger habitat.', NOW(), NOW()),
(11, 'Bhadra Forest', 'Karnataka', 492.5, 'Wildlife Sanctuary', '1998-09-15', 'Active', 'Tiger and elephant corridor area.', NOW(), NOW()),
(12, 'Palamau Forest', 'Jharkhand', 1129.0, 'Tiger Reserve', '1973-10-02', 'Inactive', 'One of the earliest tiger reserves, now under revival.', NOW(), NOW()),
(13, 'Namdapha Zone', 'Arunachal Pradesh', 1985.0, 'National Park', '1983-05-12', 'Active', 'Eastern Himalayas biodiversity hotspot.', NOW(), NOW()),
(14, 'Anamalai Hills', 'Tamil Nadu', 958.6, 'Biosphere Reserve', '2003-06-05', 'Active', 'Part of Western Ghats ecosystem.', NOW(), NOW()),
(15, 'Melghat Zone', 'Maharashtra', 1676.0, 'Tiger Reserve', '1973-02-01', 'Active', 'One of the first nine tiger reserves in India.', NOW(), NOW()),
(16, 'Dudhwa National Park', 'Uttar Pradesh', 490.3, 'National Park', '1977-03-01', 'Active', 'Important swamp deer and tiger habitat.', NOW(), NOW()),
(17, 'Simlipal Forest', 'Odisha', 2750.0, 'Biosphere Reserve', '1986-06-01', 'Active', 'Tiger reserve with rich medicinal flora.', NOW(), NOW()),
(18, 'Satpura Range Forest', 'Madhya Pradesh', 1427.0, 'Tiger Reserve', '2000-10-01', 'Active', 'Hilly terrain and dense forest cover.', NOW(), NOW()),
(19, 'Bhitar Kanika', 'Odisha', 672.0, 'Mangrove Forest', '1975-01-15', 'Active', 'Second largest mangrove ecosystem after Sundarbans.', NOW(), NOW()),
(20, 'Koundinya Wildlife Sanctuary', 'Andhra Pradesh', 357.6, 'Wildlife Sanctuary', '1990-09-01', 'Active', 'Known for elephants and dry deciduous forests.', NOW(), NOW());

-- to display table data
select * from ForestZones;

-- to remove complete records from table
truncate table ForestZones;

-- to remove complete records and attributes from table
drop table ForestZones;

-- 1. Add visitor_count column
ALTER TABLE ForestZones ADD COLUMN visitor_count INT DEFAULT 0;

-- 2. Change area type for precision
ALTER TABLE ForestZones MODIFY COLUMN area_sq_km DECIMAL(9,2);

-- 3. Rename description
ALTER TABLE ForestZones RENAME COLUMN description TO zone_description;

-- 4. Add parent_zone_id for hierarchical zones
ALTER TABLE ForestZones ADD COLUMN parent_zone_id INT;

-- 5. Create ZoneVisitors child table
CREATE TABLE ZoneVisitors (
  visitor_id INT PRIMARY KEY,
  zone_id INT,
  visit_date DATE,
  FOREIGN KEY(zone_id) REFERENCES ForestZones(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 6. Drop parent_zone_id
ALTER TABLE ForestZones DROP COLUMN parent_zone_id;

-- 7. Create wildlife_species table
CREATE TABLE WildlifeSpecies (
  species_id INT PRIMARY KEY,
  zone_id INT,
  species_name VARCHAR(100),
  count_est INT,
  FOREIGN KEY(zone_id) REFERENCES ForestZones(id)
    ON DELETE CASCADE
);

-- 8. Add index on location and zone_type
CREATE INDEX idx_loc_type ON ForestZones(location, zone_type);

-- 9. Drop the index
DROP INDEX idx_loc_type ON ForestZones;

-- 10. Rename table
RENAME TABLE ForestZones TO ProtectedZones;

-- 11. Insert new tiger reserve
INSERT INTO ProtectedZones (zone_id, zone_name, created_at) VALUES (1, 'Zone A', NOW());

-- 12. Bulk insert two zones
INSERT INTO ProtectedZones (zone_id, zone_name)
VALUES
  (1, 'Zone A'),
  (2, 'Zone B');

-- 13. Update status of old zones
UPDATE ProtectedZones SET status='Review'
WHERE established_date<'1970-01-01';

-- 14. Delete small zones
DELETE FROM ProtectedZones WHERE area_sq_km<300;

-- 15. Increment visitor count
UPDATE ProtectedZones
SET visitor_count=visitor_count+100
WHERE location='Kerala';

-- 16. Reset visitor count yearly
UPDATE ProtectedZones
SET visitor_count=0
WHERE YEAR(created_at)=YEAR(CURDATE());

-- 17. Remove zones set inactive over 10 years ago
DELETE FROM ProtectedZones
WHERE status='Inactive'
  AND DATEDIFF(CURDATE(), updated_at)>3650;

-- 18. Upsert with MySQL syntax
INSERT INTO ProtectedZones (id, col2, col3)
VALUES (1, 'value2', 'value3')
ON DUPLICATE KEY UPDATE
  col2 = VALUES(col2),
  col3 = VALUES(col3);


-- 19. Batch delete by list
DELETE FROM ProtectedZones
WHERE id IN (21,22,23);

-- 20. Copy data from old table
INSERT INTO ProtectedZones (col1, col2, col3)
SELECT colA, colB, colC
FROM OldZones
WHERE some_condition;

-- 21. List all zones ordered
SELECT * FROM ProtectedZones ORDER BY area_sq_km DESC;

-- 22. Filter multiple conditions
SELECT name, location FROM ProtectedZones
WHERE zone_type='Tiger Reserve' AND area_sq_km>500;

-- 23. Use BETWEEN
SELECT name FROM ProtectedZones
WHERE established_date BETWEEN '1980-01-01' AND '2000-12-31';

-- 24. Pattern search
SELECT name FROM ProtectedZones WHERE name LIKE '%Forest%';

-- 25. IN operator
SELECT * FROM ProtectedZones WHERE location IN ('Kerala','Assam');

-- 26. Aggregates
SELECT COUNT(*), AVG(area_sq_km) FROM ProtectedZones;

-- 27. Group and filter
SELECT location, COUNT(*) AS cnt
FROM ProtectedZones
GROUP BY location
HAVING cnt>2;

-- 28. Date functions
SELECT name
FROM ProtectedZones
WHERE YEAR(established_date)=2003;

-- 29. Aliases
SELECT name AS zone, location AS state FROM ProtectedZones;

-- 30. NULL check
SELECT name FROM ProtectedZones WHERE parent_zone_id IS NULL;

-- 31. Inner join species
SELECT p.name, w.species_name
FROM ProtectedZones p
JOIN WildlifeSpecies w ON p.id=w.zone_id;

-- 32. Left join zones without species
SELECT p.name FROM ProtectedZones p
LEFT JOIN WildlifeSpecies w ON p.id=w.zone_id
WHERE w.zone_id IS NULL;

-- 33. Subquery in WHERE
SELECT name FROM ProtectedZones
WHERE area_sq_km > (
  SELECT AVG(area_sq_km) FROM ProtectedZones
);

-- 34. Correlated subquery
SELECT name FROM ProtectedZones p1
WHERE area_sq_km > (
  SELECT AVG(area_sq_km) FROM ProtectedZones p2
  WHERE p1.zone_type=p2.zone_type
);

-- 35. Exists
SELECT name FROM ProtectedZones p
WHERE EXISTS (
  SELECT 1 FROM WildlifeSpecies w WHERE w.zone_id=p.id
);

-- 36. NOT EXISTS
SELECT name FROM ProtectedZones p
WHERE NOT EXISTS (
  SELECT 1 FROM WildlifeSpecies w WHERE w.zone_id=p.id
);

-- 37. IN subquery
SELECT name FROM ProtectedZones
WHERE location IN (
  SELECT location FROM ProtectedZones
  GROUP BY location
  HAVING COUNT(*)>1
);

-- 38. Subquery in UPDATE
UPDATE ProtectedZones SET status='Major'
WHERE area_sq_km > (
  SELECT AVG(area_sq_km) FROM ProtectedZones
);

-- 39. Join with summed counts
SELECT p.name, SUM(w.count_est) AS total_animals
FROM ProtectedZones p
JOIN WildlifeSpecies w ON p.id=w.zone_id
GROUP BY p.name;

-- 40. Multi-table join (with hypothetical ZoneVisitors)
SELECT p.name, COUNT(v.visitor_id) AS visits
FROM ProtectedZones p
JOIN ZoneVisitors v ON p.id=v.zone_id
GROUP BY p.name;

-- 41. CTE for avg area per type
WITH AvgZone AS (
  SELECT zone_type, AVG(area_sq_km) AS avg_a
  FROM ProtectedZones GROUP BY zone_type
)
SELECT p.name, p.area_sq_km, a.avg_a
FROM ProtectedZones p
JOIN AvgZone a USING (zone_type);

-- 42. Recursive zones hierarchy
WITH RECURSIVE ZoneTree AS (
  SELECT id, name, parent_zone_id, 0 AS lvl
  FROM ProtectedZones WHERE parent_zone_id IS NULL
  UNION ALL
  SELECT p.id, p.name, p.parent_zone_id, z.lvl+1
  FROM ProtectedZones p
  JOIN ZoneTree z ON p.parent_zone_id=z.id
)
SELECT * FROM ZoneTree;

-- 43. Window: rank by size
SELECT name, area_sq_km,
  RANK() OVER (ORDER BY area_sq_km DESC) AS size_rank
FROM ProtectedZones;

-- 44. Window: partitioned avg
SELECT name, zone_type, area_sq_km,
  AVG(area_sq_km) OVER (PARTITION BY zone_type) AS type_avg
FROM ProtectedZones;

-- 45. Moving sum over time (visitors)
SELECT visit_date, SUM(visitor_count)
OVER (ORDER BY visit_date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW)
AS week_visits
FROM ZoneVisitors;

-- 46. CTE with JOIN and filter
WITH BigZones AS (
  SELECT * FROM ProtectedZones WHERE area_sq_km>1000
)
SELECT b.name, w.species_name
FROM BigZones b
LEFT JOIN WildlifeSpecies w ON b.id=w.zone_id;

-- 47. Upsert via CTE
INSERT INTO ProtectedZones (id, status)
VALUES (5, 'Protected')
ON DUPLICATE KEY UPDATE
  status = VALUES(status);


-- 48. CTE + EXISTS
WITH LocCounts AS (
  SELECT location, COUNT(*) AS cnt
  FROM ProtectedZones GROUP BY location
)
SELECT p.*
FROM ProtectedZones p JOIN LocCounts l
  ON p.location=l.location AND l.cnt>2;

-- 49. CTE + window
WITH Ranked AS (
  SELECT id, name, area_sq_km,
    ROW_NUMBER() OVER (PARTITION BY location
                       ORDER BY area_sq_km DESC) AS rn
  FROM ProtectedZones
)
SELECT * FROM Ranked WHERE rn<=2;

-- 50. Combine values via CASE
SELECT name,
 CASE
   WHEN status='Active' AND area_sq_km>1000 THEN 'Major Active'
   WHEN status='Active' THEN 'Active'
   ELSE 'Other'
 END AS zone_label
FROM ProtectedZones;




-- Table 2: Staff
CREATE TABLE Staff (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    designation VARCHAR(50),
    department VARCHAR(50),
    location VARCHAR(100),
    contact VARCHAR(20),
    email VARCHAR(100),
    status VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records 
INSERT INTO Staff (id, name, designation, department, location, contact, email, status, created_at, updated_at) VALUES
(1, 'Rajesh Verma', 'Forest Officer', 'Surveillance', 'Nagpur', '9876543210', 'rajesh.verma@forest.gov.in', 'Active', NOW(), NOW()),
(2, 'Sneha Patil', 'Botanist', 'Research', 'Pune', '8765432109', 'sneha.patil@forest.gov.in', 'Active', NOW(), NOW()),
(3, 'Amit Kale', 'Guard', 'Protection', 'Gadchiroli', '7654321098', 'amit.kale@forest.gov.in', 'Active', NOW(), NOW()),
(4, 'Priya Joshi', 'Wildlife Expert', 'Conservation', 'Nashik', '6543210987', 'priya.joshi@forest.gov.in', 'Active', NOW(), NOW()),
(5, 'Kiran Deshmukh', 'Range Officer', 'Management', 'Chandrapur', '5432109876', 'kiran.deshmukh@forest.gov.in', 'Active', NOW(), NOW()),
(6, 'Ravi Sharma', 'Veterinary Officer', 'Wildlife', 'Nagpur', '4321098765', 'ravi.sharma@forest.gov.in', 'Active', NOW(), NOW()),
(7, 'Anjali Nair', 'Zoologist', 'Research', 'Mumbai', '3210987654', 'anjali.nair@forest.gov.in', 'Active', NOW(), NOW()),
(8, 'Manish Tiwari', 'GIS Analyst', 'Survey', 'Bhopal', '2109876543', 'manish.tiwari@forest.gov.in', 'Active', NOW(), NOW()),
(9, 'Neha Kulkarni', 'Accountant', 'Finance', 'Pune', '1098765432', 'neha.kulkarni@forest.gov.in', 'Active', NOW(), NOW()),
(10, 'Arjun Singh', 'Clerk', 'Administration', 'Indore', '9988776655', 'arjun.singh@forest.gov.in', 'Active', NOW(), NOW()),
(11, 'Divya Mishra', 'Legal Advisor', 'Compliance', 'Mumbai', '8877665544', 'divya.mishra@forest.gov.in', 'Active', NOW(), NOW()),
(12, 'Suresh Pawar', 'Field Officer', 'Surveillance', 'Nagpur', '7766554433', 'suresh.pawar@forest.gov.in', 'Inactive', NOW(), NOW()),
(13, 'Meena Rane', 'Deputy Director', 'Planning', 'Mumbai', '6655443322', 'meena.rane@forest.gov.in', 'Active', NOW(), NOW()),
(14, 'Tushar Jadhav', 'Forest Surveyor', 'Mapping', 'Aurangabad', '5544332211', 'tushar.jadhav@forest.gov.in', 'Active', NOW(), NOW()),
(15, 'Jyoti Salunke', 'Office Assistant', 'Admin', 'Kolhapur', '4433221100', 'jyoti.salunke@forest.gov.in', 'Active', NOW(), NOW()),
(16, 'Nikhil Bhosale', 'HR Manager', 'Human Resources', 'Pune', '3322110099', 'nikhil.bhosale@forest.gov.in', 'Active', NOW(), NOW()),
(17, 'Pooja Gokhale', 'Data Analyst', 'Monitoring', 'Nagpur', '2211009988', 'pooja.gokhale@forest.gov.in', 'Active', NOW(), NOW()),
(18, 'Shubham Patil', 'Technician', 'Maintenance', 'Thane', '1100998877', 'shubham.patil@forest.gov.in', 'Inactive', NOW(), NOW()),
(19, 'Swati Shinde', 'Environment Officer', 'Sustainability', 'Satara', '9099888776', 'swati.shinde@forest.gov.in', 'Active', NOW(), NOW()),
(20, 'Rohan Sawant', 'Communication Officer', 'PR & Outreach', 'Ratnagiri', '8088777665', 'rohan.sawant@forest.gov.in', 'Active', NOW(), NOW());

-- to display table data
select * from Staff ;

-- to remove complete records from table
truncate table Staff ;

-- to remove complete records and attributes from table
drop table Staff ;

-- 1. Add dept_id with FK constraint
ALTER TABLE Staff ADD dept_id INT;

-- 2. Create Departments table
CREATE TABLE Departments (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(50),
  location VARCHAR(100)
);

-- 3. Add foreign key with cascading updates/deletes
ALTER TABLE Staff
ADD CONSTRAINT fk_staff_dept
FOREIGN KEY(dept_id) REFERENCES Departments(dept_id)
  ON DELETE SET NULL
  ON UPDATE CASCADE;

-- 4. Remove contact column
ALTER TABLE Staff DROP COLUMN contact;

-- 5. Change status to ENUM
ALTER TABLE Staff MODIFY status ENUM('Active','Inactive','Suspended') NOT NULL;

-- 6. Rename table to Employees
ALTER TABLE Staff RENAME TO Employees;

-- 7. Add index on department and location
CREATE INDEX idx_dept_loc ON Employees(department, location);

-- 8. Drop the index
DROP INDEX idx_dept_loc ON Employees;

-- 9. Bulk update status
UPDATE Employees
SET status='Inactive', updated_at=NOW()
WHERE status='Active' AND location='Nagpur';

-- 10. Delete inactive employees older than one year
DELETE FROM Employees
WHERE status='Inactive'
  AND DATEDIFF(CURDATE(), updated_at)>365;

-- 11. Add new staff record
INSERT INTO Employees (id,name,designation,department,location,email,status,created_at,updated_at,dept_id)
VALUES (21,'Aditi Patil','Forest Officer','Surveillance','Mumbai','aditi.patil@forest.gov.in','Active',NOW(),NOW(),1);

-- 12. Upsert sample: insert or update
INSERT INTO Employees (id, name, updated_at, colX, colY)
VALUES (22, 'X', NOW(), valX, valY)
ON DUPLICATE KEY UPDATE
  name = VALUES(name),
  updated_at = NOW(),
  colX = VALUES(colX),
  colY = VALUES(colY);


-- 13. Batch reset status
UPDATE Employees
SET status='Active', updated_at=NOW()
WHERE id IN (12,18);

-- 14. Change email domain
UPDATE Employees
SET email=REPLACE(email,'@forest.gov.in','@gov.in'), updated_at=NOW();

-- 15. Delete by location
DELETE FROM Employees WHERE location='Thane';

-- 16. Copy records from temporary archive
INSERT INTO Employees (id, name, col3, col4, ...)
SELECT id, name, col3, col4, ...
FROM TempStaffArchive
[WHERE condition];


-- 17. Increment dept_id where null
UPDATE Employees SET dept_id=3 WHERE dept_id IS NULL;

-- 18. Clear email for suspended
UPDATE Employees SET email=NULL WHERE status='Suspended';

-- 19. Remove stale records
DELETE FROM Employees WHERE created_at<DATE_SUB(NOW(), INTERVAL 5 YEAR);

-- 20. Change department for a person
UPDATE Employees SET department='Compliance', updated_at=NOW()
WHERE name='Divya Mishra';

-- 21. List all employees sorted
SELECT * FROM Employees ORDER BY department, name;

-- 22. Filter by location + pattern
SELECT id,name,email
FROM Employees
WHERE location='Pune' AND name LIKE 'S%';

-- 23. Count per department
SELECT department,COUNT(*) AS cnt
FROM Employees
GROUP BY department;

-- 24. Departments active >3
SELECT department,COUNT(*) AS cnt
FROM Employees
GROUP BY department
HAVING cnt>3;

-- 25. Top 5 newest staff
SELECT name,created_at
FROM Employees
ORDER BY created_at DESC
LIMIT 5;

-- 26. Departments in list
SELECT * FROM Employees
WHERE department IN ('Research','Finance');

-- 27. Use BETWEEN on created_at
SELECT name,created_at FROM Employees
WHERE created_at BETWEEN '2025-01-01' AND NOW();

-- 28. Use IS NULL
SELECT name FROM Employees WHERE dept_id IS NULL;

-- 29. Aliases for clarity
SELECT e.name AS StaffName, e.location AS City, d.dept_name AS Dept
FROM Employees e JOIN Departments d USING(dept_id);

-- 30. Aggregates
SELECT COUNT(*) AS total_staff, AVG(TIMESTAMPDIFF(YEAR,created_at,NOW())) AS avg_tenure
FROM Employees;

-- 31. Inner join staff with department details
SELECT s.name, d.dept_name, d.location
FROM Employees s
JOIN Departments d ON s.dept_id=d.dept_id;

-- 32. Left join: all staff with dept info
SELECT s.name, d.dept_name
FROM Employees s
LEFT JOIN Departments d USING(dept_id);

-- 33. Staff without a department
SELECT name FROM Employees
WHERE dept_id NOT IN (SELECT dept_id FROM Departments);

-- 34. Filter by dept size with subquery
SELECT name FROM Employees
WHERE dept_id IN (
  SELECT dept_id FROM Employees GROUP BY dept_id HAVING COUNT(*)>5
);

-- 35. Correlated subquery: names longer than dept avg
SELECT name, department
FROM Employees e1
WHERE CHAR_LENGTH(name) > (
  SELECT AVG(CHAR_LENGTH(name))
  FROM Employees e2
  WHERE e2.department=e1.department
);

-- 36. EXISTS subquery
SELECT name FROM Employees e
WHERE EXISTS (
  SELECT 1 FROM Employees x WHERE x.dept_id=e.dept_id AND x.status='Active'
);

-- 37. NOT EXISTS
SELECT name FROM Employees e
WHERE NOT EXISTS (
  SELECT 1 FROM Employees x WHERE x.dept_id=e.dept_id AND x.status='Active'
);

-- 38. Derived table for recent hires
SELECT name, dept_name FROM (
  SELECT id,name,dept_id,created_at FROM Employees WHERE created_at>DATE_SUB(NOW(),INTERVAL 6 MONTH)
) AS recent
JOIN Departments d USING(dept_id);

-- 39. Join staff count per dept
SELECT d.dept_name, COUNT(s.id) AS staff_count
FROM Departments d
LEFT JOIN Employees s USING(dept_id)
GROUP BY d.dept_name;

-- 40. Remove duplicates via UNION
SELECT name,department FROM Employees
UNION
SELECT name,department FROM FormerStaff;

-- 41. CTE for dept sizes
WITH DeptCount AS (
  SELECT dept_id, COUNT(*) AS cnt
  FROM Employees GROUP BY dept_id
)
SELECT e.name, dc.cnt
FROM Employees e
JOIN DeptCount dc USING(dept_id);

-- 42. Recursive CTE for hierarchical departments
WITH RECURSIVE DeptTree AS (
  SELECT dept_id,dept_name,location,0 AS level FROM Departments WHERE dept_id=1
  UNION ALL
  SELECT d.dept_id,d.dept_name,d.location,dt.level+1
  FROM Departments d
  JOIN DeptTree dt ON d.location=dt.location
)
SELECT * FROM DeptTree;

-- 43. Window function for rank by hire date
SELECT name, department, RANK() OVER (PARTITION BY department ORDER BY created_at) AS hire_rank
FROM Employees;

-- 44. Cumulative hires per month
SELECT
  DATE_FORMAT(created_at,'%Y-%m') AS month,
  COUNT(*) AS hires,
  SUM(COUNT(*)) OVER (ORDER BY DATE_FORMAT(created_at,'%Y-%m')) AS cumulative_hires
FROM Employees
GROUP BY MONTH(created_at);

-- 45. Top two per department
WITH Ranked AS (
  SELECT id,name,department,
    ROW_NUMBER() OVER (PARTITION BY department ORDER BY created_at DESC) AS rn
  FROM Employees
)
SELECT name,department FROM Ranked WHERE rn<=2;

-- 46. CASE label by status and tenure
SELECT name, status,
  CASE
    WHEN status='Active' AND created_at>DATE_SUB(NOW(),INTERVAL 1 YEAR) THEN 'New'
    WHEN status='Active' THEN 'Experienced'
    ELSE 'Former'
  END AS custom_status
FROM Employees;

-- 47. Update dept name via join
UPDATE Employees e
JOIN Departments d USING(dept_id)
SET e.location=d.location, e.updated_at=NOW()
WHERE e.status='Active';

-- 48. Delete staff with no department
DELETE e FROM Employees e
LEFT JOIN Departments d USING(dept_id)
WHERE d.dept_id IS NULL;

-- 49. View for active employees
CREATE VIEW ActiveStaff AS
SELECT name,department,location FROM Employees WHERE status='Active';

-- 50. Drop the view
DROP VIEW ActiveStaff;

-- Table 3: WildlifeSpecies
CREATE TABLE WildlifeSpecies (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    species_type VARCHAR(50),
    conservation_status VARCHAR(50),
    native_region VARCHAR(100),
    population_estimate INT,
    description TEXT,
    status VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records 
INSERT INTO WildlifeSpecies (id, name, species_type, conservation_status, native_region, population_estimate, description, status, created_at, updated_at) VALUES
(1, 'Bengal Tiger', 'Mammal', 'Endangered', 'Sundarbans', 2967, 'The national animal of India, primarily found in mangrove and deciduous forests.', 'Active', NOW(), NOW()),
(2, 'Indian Elephant', 'Mammal', 'Endangered', 'Western Ghats', 27000, 'Large herbivore critical to forest ecology.', 'Active', NOW(), NOW()),
(3, 'Indian Peacock', 'Bird', 'Least Concern', 'Across India', 100000, 'The national bird of India, known for its colorful plumage.', 'Active', NOW(), NOW()),
(4, 'Snow Leopard', 'Mammal', 'Vulnerable', 'Himalayas', 500, 'Elusive predator found in high altitudes.', 'Active', NOW(), NOW()),
(5, 'Great Indian Bustard', 'Bird', 'Critically Endangered', 'Rajasthan, Gujarat', 150, 'One of the heaviest flying birds, at risk due to habitat loss.', 'Active', NOW(), NOW()),
(6, 'Gharial', 'Reptile', 'Critically Endangered', 'Ganges River Basin', 900, 'Fish-eating crocodilian with a long snout.', 'Active', NOW(), NOW()),
(7, 'Indian Pangolin', 'Mammal', 'Endangered', 'Central India', 3000, 'Nocturnal, scaly anteater threatened by illegal trade.', 'Active', NOW(), NOW()),
(8, 'Asiatic Lion', 'Mammal', 'Endangered', 'Gir Forest, Gujarat', 674, 'Only wild population of lions outside Africa.', 'Active', NOW(), NOW()),
(9, 'Indian Cobra', 'Reptile', 'Least Concern', 'Pan India', 50000, 'Venomous snake revered in Indian culture.', 'Active', NOW(), NOW()),
(10, 'Olive Ridley Turtle', 'Reptile', 'Vulnerable', 'Odisha Coast', 100000, 'Known for mass nesting at Gahirmatha Beach.', 'Active', NOW(), NOW()),
(11, 'Sloth Bear', 'Mammal', 'Vulnerable', 'Central & South India', 7000, 'Shaggy bear with long claws and insect diet.', 'Active', NOW(), NOW()),
(12, 'Nilgiri Tahr', 'Mammal', 'Endangered', 'Western Ghats', 3200, 'Mountain goat endemic to Southern India.', 'Active', NOW(), NOW()),
(13, 'Indian Star Tortoise', 'Reptile', 'Vulnerable', 'South India & Sri Lanka', 10000, 'Distinctive shell pattern, threatened by pet trade.', 'Active', NOW(), NOW()),
(14, 'Lion-tailed Macaque', 'Mammal', 'Endangered', 'Western Ghats', 3000, 'Arboreal primate with a lion-like tail tuft.', 'Active', NOW(), NOW()),
(15, 'Barasingha', 'Mammal', 'Vulnerable', 'Kanha National Park', 450, 'Also called swamp deer, lives in grasslands and wetlands.', 'Active', NOW(), NOW()),
(16, 'Blackbuck', 'Mammal', 'Near Threatened', 'Rajasthan, Gujarat', 25000, 'Fastest land animal in India, known for twisting horns.', 'Active', NOW(), NOW()),
(17, 'Indian Wolf', 'Mammal', 'Endangered', 'Central India', 2000, 'Subspecies of the gray wolf with fewer coat markings.', 'Active', NOW(), NOW()),
(18, 'Indian Bison (Gaur)', 'Mammal', 'Vulnerable', 'Western & Central Ghats', 12000, 'Largest extant bovine species.', 'Active', NOW(), NOW()),
(19, 'Hoolock Gibbon', 'Mammal', 'Endangered', 'North-East India', 2600, 'India’s only ape, known for loud calls.', 'Active', NOW(), NOW()),
(20, 'Sarus Crane', 'Bird', 'Vulnerable', 'North India', 15000, 'Tallest flying bird, revered in Indian mythology.', 'Active', NOW(), NOW());

-- to display table data
select * from WildlifeSpecies;

-- to remove complete records from table
truncate table WildlifeSpecies;

-- to remove complete records and attributes from table
drop table WildlifeSpecies;

-- 1. Add genus column to enrich species
ALTER TABLE WildlifeSpecies ADD COLUMN genus VARCHAR(50);

-- 2. Create Regions parent table
CREATE TABLE Regions (
  region_id INT PRIMARY KEY,
  region_name VARCHAR(100) NOT NULL
);

-- 3. Add region_id foreign key with cascade rules
ALTER TABLE WildlifeSpecies
  ADD region_id INT,
  ADD CONSTRAINT fk_species_region
    FOREIGN KEY(region_id) REFERENCES Regions(region_id)
    ON DELETE SET NULL ON UPDATE CASCADE;

-- 4. Remove description column
ALTER TABLE WildlifeSpecies DROP COLUMN description;

-- 5. Convert status to ENUM for stricter control (MySQL)
ALTER TABLE WildlifeSpecies MODIFY status ENUM('Active','Inactive') NOT NULL;

-- 6. Rename table to SpeciesCatalog
ALTER TABLE WildlifeSpecies RENAME TO SpeciesCatalog;

-- 7. Add index on species_type and conservation_status
CREATE INDEX idx_type_status ON SpeciesCatalog(species_type, conservation_status);

-- 8. Drop the index
DROP INDEX idx_type_status ON SpeciesCatalog;

-- 9. Bulk update status for inactive species
UPDATE SpeciesCatalog
SET status='Inactive', updated_at=NOW()
WHERE population_estimate<500;

-- 10. Delete extinct/inactive entries older than 2 years
DELETE FROM SpeciesCatalog
WHERE status='Inactive'
  AND DATEDIFF(CURDATE(), updated_at)>730;

-- 11. Insert a new species
INSERT INTO SpeciesCatalog (id,name,species_type,conservation_status,
  native_region,population_estimate,status,created_at,updated_at,region_id)
VALUES (21,'Black Panther','Mammal','Endangered','Western Ghats',250,'Active',NOW(),NOW(),1);

-- 12. Upsert example in MySQL
INSERT INTO SpeciesCatalog (id, name, …)
VALUES (22, 'Red Panda', …)
ON DUPLICATE KEY UPDATE
  population_estimate = VALUES(population_estimate),
  updated_at = NOW();

-- 13. Batch update genus where missing
UPDATE SpeciesCatalog
SET genus='Panthera'
WHERE name LIKE '%Tiger';

-- 14. Normalize region names
UPDATE SpeciesCatalog
SET native_region=TRIM(native_region), updated_at=NOW();

-- 15. Delete least concern species (for certain scenario)
DELETE FROM SpeciesCatalog WHERE conservation_status='Least Concern';

-- 16. Copy entries to an archive
INSERT INTO OldSpecies SELECT * FROM SpeciesCatalog WHERE status='Inactive';

-- 17. Set region_id to default for nulls
UPDATE SpeciesCatalog SET region_id=2 WHERE region_id IS NULL;

-- 18. Mask names of inactive species
UPDATE SpeciesCatalog SET name=CONCAT('X_',id), updated_at=NOW()
WHERE status='Inactive';

-- 19. Remove long-missing species
DELETE sc FROM SpeciesCatalog sc
LEFT JOIN Surveys s ON s.species_id=sc.id
WHERE s.survey_id IS NULL AND sc.status='Inactive';

-- 20. Change conservation status for a specific species
UPDATE SpeciesCatalog
SET conservation_status='Extinct in Wild', updated_at=NOW()
WHERE name='Great Indian Bustard';

-- 21. List all mammal and critically endangered species
SELECT id,name,conservation_status
FROM SpeciesCatalog
WHERE species_type='Mammal' AND conservation_status='Critically Endangered'
ORDER BY name;

-- 22. Count species by conservation status
SELECT conservation_status,COUNT(*) AS cnt
FROM SpeciesCatalog
GROUP BY conservation_status;

-- 23. Status groups with more than 3 entries
SELECT conservation_status,COUNT(*) AS cnt
FROM SpeciesCatalog
GROUP BY conservation_status
HAVING COUNT(*)>3;

-- 24. Highest population estimates top 5
SELECT name,population_estimate
FROM SpeciesCatalog
ORDER BY population_estimate DESC
LIMIT 5;

-- 25. Species with names containing 'Indian'
SELECT name FROM SpeciesCatalog WHERE name LIKE '%Indian%';

-- 26. Use BETWEEN for population range
SELECT name,population_estimate
FROM SpeciesCatalog
WHERE population_estimate BETWEEN 1000 AND 10000;

-- 27. Identify missing genus values
SELECT name FROM SpeciesCatalog WHERE genus IS NULL;

-- 28. Use subquery to get average population by type
SELECT species_type, AVG(population_estimate) AS avg_pop
FROM SpeciesCatalog
GROUP BY species_type;

-- 29. Alias for readability
SELECT id AS species_id, name AS species_name, genus AS GenusName
FROM SpeciesCatalog;

-- 30. Combine several functions
SELECT name, native_region, YEAR(created_at) AS year_added,
ROUND(population_estimate/1000,1) AS pop_k
FROM SpeciesCatalog;

-- 31. Join with Regions to get region names
SELECT sc.name, r.region_name
FROM SpeciesCatalog sc
LEFT JOIN Regions r USING(region_id);

-- 32. Species without a defined region
SELECT name FROM SpeciesCatalog WHERE region_id IS NULL;

-- 33. Species with above-average population in their type
SELECT name FROM SpeciesCatalog sc1
WHERE population_estimate > (
  SELECT AVG(population_estimate)
  FROM SpeciesCatalog sc2
  WHERE sc1.species_type=sc2.species_type
);

-- 34. Correlated subquery: find small populations by type
SELECT name,species_type FROM SpeciesCatalog sc1
WHERE population_estimate < (
  SELECT MIN(population_estimate)
  FROM SpeciesCatalog sc2
  WHERE sc2.species_type=sc1.species_type AND sc2.id<>sc1.id
);

-- 35. EXISTS checking endangered species
SELECT name FROM SpeciesCatalog sc
WHERE EXISTS (
  SELECT 1 FROM ConservationPrograms cp
  WHERE cp.species_id=sc.id
);

-- 36. NOT EXISTS to find unmonitored species
SELECT name FROM SpeciesCatalog sc
WHERE NOT EXISTS (
  SELECT 1 FROM Surveys s WHERE s.species_id=sc.id
);

-- 37. IN with subquery for native region group
SELECT name FROM SpeciesCatalog
WHERE native_region IN (
  SELECT native_region FROM SpeciesCatalog
  GROUP BY native_region HAVING COUNT(*)>2
);

-- 38. Derived table of top species, then join
SELECT dt.name, dt.ps
FROM (
  SELECT name, population_estimate AS ps
  FROM SpeciesCatalog ORDER BY population_estimate DESC LIMIT 3
) dt;

-- 39. Combine species counts with regions
SELECT r.region_name, COUNT(sc.id) AS species_count
FROM Regions r
LEFT JOIN SpeciesCatalog sc USING(region_id)
GROUP BY r.region_name;

-- 40. UNION example across tables
SELECT name, species_type, 'Current' AS src FROM SpeciesCatalog
UNION
SELECT name, species_type, 'Archived' AS src FROM OldSpecies;

-- 41. CTE: count species per type
WITH TypeCount AS (
  SELECT species_type, COUNT(*) AS cnt
  FROM SpeciesCatalog GROUP BY species_type
)
SELECT sc.name, tc.cnt
FROM SpeciesCatalog sc
JOIN TypeCount tc USING(species_type);

-- 42. Recursive CTE placeholder (if hierarchy existed)
WITH RECURSIVE SubspeciesTree AS (
  SELECT id,name,0 AS lvl FROM SpeciesCatalog WHERE id=1
  UNION ALL
  SELECT sc.id, sc.name, st.lvl+1
  FROM SpeciesCatalog sc
  JOIN SubspeciesTree st ON sc.related_id=st.id
)
SELECT * FROM SubspeciesTree;

-- 43. Rank species by population within type
SELECT name,species_type,
  RANK() OVER (PARTITION BY species_type ORDER BY population_estimate DESC) AS pop_rank
FROM SpeciesCatalog;

-- 44. Cumulative population over time added
SELECT YEAR(created_at) AS yr,
  SUM(population_estimate) AS total_pop,
  SUM(SUM(population_estimate)) OVER (ORDER BY YEAR(created_at)) AS cum_pop
FROM SpeciesCatalog
GROUP BY yr
ORDER BY yr;

-- 45. Top two by population per type
WITH Ranked AS (
  SELECT id,name,species_type,population_estimate,
    ROW_NUMBER() OVER (PARTITION BY species_type ORDER BY population_estimate DESC) AS rn
  FROM SpeciesCatalog
)
SELECT name,species_type FROM Ranked WHERE rn<=2;

-- 46. CASE-based categorization
SELECT name,population_estimate,
  CASE
    WHEN population_estimate<500 THEN 'Critical'
    WHEN population_estimate<5000 THEN 'Low'
    ELSE 'Stable'
  END AS pop_category
FROM SpeciesCatalog;

-- 47. Update region names via join
UPDATE SpeciesCatalog sc
JOIN Regions r USING(region_id)
SET sc.native_region=r.region_name, sc.updated_at=NOW()
WHERE sc.native_region IS NULL;

-- 48. Delete species with no related surveys
DELETE sc FROM SpeciesCatalog sc
LEFT JOIN Surveys s USING(id)
WHERE s.species_id IS NULL AND sc.status='Inactive';

-- 49. View for endangered species summary
CREATE VIEW EndangeredSummary AS
SELECT species_type, COUNT(*) AS endangered_count
FROM SpeciesCatalog
WHERE conservation_status IN ('Endangered','Critically Endangered')
GROUP BY species_type;

-- 50. Drop the view
DROP VIEW EndangeredSummary;


-- Table 4: PatrolRecords
CREATE TABLE PatrolRecords(
    id INT PRIMARY KEY,
    patrol_team VARCHAR(100),
    date DATE,
    area_covered VARCHAR(100),
    incidents_reported TEXT,
    status VARCHAR(20),
    vehicle_used VARCHAR(50),
    notes TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records 
INSERT INTO PatrolRecords (id, patrol_team, date, area_covered, incidents_reported, status, vehicle_used, notes, created_at, updated_at) VALUES
(1, 'Team Alpha', '2025-06-01', 'Zone A1 - Sundarbans', 'No incidents reported.', 'Completed', 'Jeep', 'Routine night patrol.', NOW(), NOW()),
(2, 'Team Bravo', '2025-06-02', 'Zone B2 - Gir Forest', 'One illegal entry spotted.', 'Completed', 'Motorbike', 'Reported to HQ.', NOW(), NOW()),
(3, 'Team Charlie', '2025-06-03', 'Zone C3 - Kanha', 'Evidence of poaching traps found.', 'Action Taken', 'Foot Patrol', 'Traps removed immediately.', NOW(), NOW()),
(4, 'Team Delta', '2025-06-04', 'Zone D4 - Kaziranga', 'Rhino sighted near buffer zone.', 'Completed', 'Jeep', 'Animal movement logged.', NOW(), NOW()),
(5, 'Team Echo', '2025-06-05', 'Zone E5 - Periyar', 'Signs of forest fire.', 'Investigated', 'Truck', 'Alert sent to fire team.', NOW(), NOW()),
(6, 'Team Falcon', '2025-06-06', 'Zone F1 - Nagarhole', 'Illegal logging activity.', 'Action Taken', 'Jeep', 'Timber confiscated, FIR lodged.', NOW(), NOW()),
(7, 'Team Gamma', '2025-06-07', 'Zone G2 - Bandipur', 'Elephant herd sighted.', 'Completed', 'Motorbike', 'Tracked for safety.', NOW(), NOW()),
(8, 'Team Hawk', '2025-06-08', 'Zone H3 - Dudhwa', 'Suspicious campfire found.', 'Under Investigation', 'Foot Patrol', 'Sample collected for investigation.', NOW(), NOW()),
(9, 'Team Iron', '2025-06-09', 'Zone I4 - Simlipal', 'Leopard movement near village.', 'Resolved', 'Jeep', 'Alert issued to village guards.', NOW(), NOW()),
(10, 'Team Jaguar', '2025-06-10', 'Zone J5 - Melghat', 'No incidents.', 'Completed', 'Motorbike', 'Monsoon route cleared.', NOW(), NOW()),
(11, 'Team Kilo', '2025-06-11', 'Zone K6 - Palamau', 'Road blocked by tree fall.', 'Cleared', 'Truck', 'Tree removed from path.', NOW(), NOW()),
(12, 'Team Lima', '2025-06-12', 'Zone L7 - Bhadra', 'Signs of illegal fishing.', 'Reported', 'Boat', 'Details submitted to HQ.', NOW(), NOW()),
(13, 'Team Mike', '2025-06-13', 'Zone M8 - Satpura', 'Animal carcass found.', 'Investigated', 'Foot Patrol', 'Possible natural death.', NOW(), NOW()),
(14, 'Team Nova', '2025-06-14', 'Zone N9 - Anamalai', 'Damaged fencing observed.', 'Reported', 'Jeep', 'Maintenance team notified.', NOW(), NOW()),
(15, 'Team Oscar', '2025-06-15', 'Zone O10 - Silent Valley', 'No activity.', 'Completed', 'Motorbike', 'Clear visibility during patrol.', NOW(), NOW()),
(16, 'Team Panther', '2025-06-16', 'Zone P11 - Bhitar Kanika', 'Crocodile near human zone.', 'Resolved', 'Boat', 'Animal guided back to river.', NOW(), NOW()),
(17, 'Team Quasar', '2025-06-17', 'Zone Q12 - Nilgiri Hills', 'New animal tracks.', 'Investigated', 'Jeep', 'Possible tiger movement.', NOW(), NOW()),
(18, 'Team Ranger', '2025-06-18', 'Zone R13 - Koundinya', 'Fence breach.', 'Fixed', 'Foot Patrol', 'Temporary fix done.', NOW(), NOW()),
(19, 'Team Sierra', '2025-06-19', 'Zone S14 - Namdapha', 'Bird nest disturbance.', 'Noted', 'Jeep', 'Awareness raised in nearby areas.', NOW(), NOW()),
(20, 'Team Titan', '2025-06-20', 'Zone T15 - Sariska', 'Drone activity detected.', 'Reported', 'Jeep', 'Forwarded to cyber cell.', NOW(), NOW());

-- to display table data
select * from PatrolRecords;

-- to remove complete records from table
truncate table PatrolRecords;

-- to remove complete records and attributes from table
drop table PatrolRecords;

-- 1. Create the PatrolRecords table (already done)
-- See your provided CREATE TABLE code

-- 2. Add a foreign key reference table: Vehicles
CREATE TABLE Vehicles (
    vehicle_id INT PRIMARY KEY,
    vehicle_name VARCHAR(50) UNIQUE
);

-- 3. Alter PatrolRecords to include vehicle_id as foreign key
ALTER TABLE PatrolRecords
ADD vehicle_id INT,
ADD CONSTRAINT fk_vehicle
FOREIGN KEY (vehicle_id) REFERENCES Vehicles(vehicle_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- 4. Drop the old vehicle_used column
ALTER TABLE PatrolRecords
DROP COLUMN vehicle_used;

-- 5. Add a unique constraint on (patrol_team, date)
ALTER TABLE PatrolRecords
ADD CONSTRAINT uq_patrol_date UNIQUE (patrol_team, date);

-- 6. Insert into Vehicles table
INSERT INTO Vehicles (vehicle_id, vehicle_name) VALUES
(1, 'Jeep'),
(2, 'Motorbike'),
(3, 'Foot Patrol'),
(4, 'Truck'),
(5, 'Boat');

-- 7. Update vehicle_id in PatrolRecords using vehicle names
UPDATE PatrolRecords SET vehicle_id = 1 WHERE vehicle_used = 'Jeep';
UPDATE PatrolRecords SET vehicle_id = 2 WHERE vehicle_used = 'Motorbike';
UPDATE PatrolRecords SET vehicle_id = 3 WHERE vehicle_used = 'Foot Patrol';
UPDATE PatrolRecords SET vehicle_id = 4 WHERE vehicle_used = 'Truck';
UPDATE PatrolRecords SET vehicle_id = 5 WHERE vehicle_used = 'Boat';

-- 8. Delete records marked as "No incidents" and status 'Completed'
DELETE FROM PatrolRecords
WHERE incidents_reported LIKE '%No incidents%' AND status = 'Completed';

-- 9. Update notes to include "(Reviewed)" for all reports after 2025-06-10
UPDATE PatrolRecords
SET notes = CONCAT(notes, ' (Reviewed)')
WHERE date > '2025-06-10';

-- 10. Select all patrols with status not equal to 'Completed'
SELECT * FROM PatrolRecords
WHERE status <> 'Completed';

-- 11. Get patrols in June 2025
SELECT * FROM PatrolRecords
WHERE MONTH(date) = 6 AND YEAR(date) = 2025;

-- 12. Count how many incidents were reported by each team
SELECT patrol_team, COUNT(*) AS total_reports
FROM PatrolRecords
GROUP BY patrol_team;

-- 13. Find patrols where "fire" was mentioned
SELECT * FROM PatrolRecords
WHERE incidents_reported LIKE '%fire%';

-- 14. List top 5 most recent patrols
SELECT * FROM PatrolRecords
ORDER BY date DESC
LIMIT 5;

-- 15. Use alias for better readability
SELECT id AS record_id, patrol_team AS team, area_covered AS zone
FROM PatrolRecords;

-- 16. Get number of completed vs others
SELECT status, COUNT(*) AS count
FROM PatrolRecords
GROUP BY status;

-- 17. Get patrols with notes longer than 30 characters
SELECT * FROM PatrolRecords
WHERE CHAR_LENGTH(notes) > 30;

-- 18. Use CASE to flag critical incidents
SELECT id, incidents_reported,
  CASE
    WHEN incidents_reported LIKE '%poaching%' OR incidents_reported LIKE '%fire%' THEN 'Critical'
    ELSE 'Normal'
  END AS severity
FROM PatrolRecords;

-- 19. Patrols that occurred on weekends
SELECT * FROM PatrolRecords
WHERE DAYOFWEEK(date) IN (1, 7); -- Sunday = 1, Saturday = 7

-- 20. Count of patrols per vehicle type
SELECT V.vehicle_name, COUNT(*) AS patrol_count
FROM PatrolRecords PR
JOIN Vehicles V ON PR.vehicle_id = V.vehicle_id
GROUP BY V.vehicle_name;

-- 21. Get patrol records along with vehicle name (JOIN)
SELECT PR.id, PR.patrol_team, V.vehicle_name, PR.date
FROM PatrolRecords PR
JOIN Vehicles V ON PR.vehicle_id = V.vehicle_id;

-- 22. Find teams that used 'Boat' for patrol (JOIN + WHERE)
SELECT PR.patrol_team, PR.area_covered
FROM PatrolRecords PR
JOIN Vehicles V ON PR.vehicle_id = V.vehicle_id
WHERE V.vehicle_name = 'Boat';

-- 23. Subquery: Teams with more than 1 patrol
SELECT patrol_team FROM PatrolRecords
GROUP BY patrol_team
HAVING COUNT(*) > 1;

-- 24. Subquery: Most recent patrol entry
SELECT * FROM PatrolRecords
WHERE date = (SELECT MAX(date) FROM PatrolRecords);

-- 25. Subquery: Patrols with the same date as the earliest patrol
SELECT * FROM PatrolRecords
WHERE date = (SELECT MIN(date) FROM PatrolRecords);

-- 26. Subquery: Patrols that used the most common vehicle type
SELECT * FROM PatrolRecords
WHERE vehicle_id = (
  SELECT vehicle_id
  FROM PatrolRecords
  GROUP BY vehicle_id
  ORDER BY COUNT(*) DESC
  LIMIT 1
);

-- 27. List patrols with status in a list
SELECT * FROM PatrolRecords
WHERE status IN ('Reported', 'Investigated', 'Action Taken');

-- 28. Total patrols per day (aggregate)
SELECT date, COUNT(*) AS patrol_count
FROM PatrolRecords
GROUP BY date;

-- 29. Average patrols per team
SELECT patrol_team, COUNT(*) AS patrols
FROM PatrolRecords
GROUP BY patrol_team;

-- 30. Find patrols with null or missing notes
SELECT * FROM PatrolRecords
WHERE notes IS NULL OR notes = '';

-- 31. Add 10 days to created_at
SELECT id, DATE_ADD(created_at, INTERVAL 10 DAY) AS review_due
FROM PatrolRecords;

-- 32. Extract year and month of patrol
SELECT id, YEAR(date) AS patrol_year, MONTH(date) AS patrol_month
FROM PatrolRecords;

-- 33. Find patrols where notes mention 'HQ'
SELECT * FROM PatrolRecords
WHERE notes LIKE '%HQ%';

-- 34. Find all patrols with word count > 4 in incidents_reported
SELECT * FROM PatrolRecords
WHERE LENGTH(incidents_reported) - LENGTH(REPLACE(incidents_reported, ' ', '')) + 1 > 4;

-- 35. Show only patrols between 10th and 15th June
SELECT * FROM PatrolRecords
WHERE date BETWEEN '2025-06-10' AND '2025-06-15';

-- 36. Get patrols with same area_covered as any 'Team Alpha' patrol
SELECT * FROM PatrolRecords
WHERE area_covered IN (
  SELECT area_covered FROM PatrolRecords WHERE patrol_team = 'Team Alpha'
);

-- 37. Inner Join with Vehicles for all records
SELECT PR.*, V.vehicle_name
FROM PatrolRecords PR
INNER JOIN Vehicles V ON PR.vehicle_id = V.vehicle_id;

-- 38. Left Join to show all patrols even if vehicle info is missing
SELECT PR.*, V.vehicle_name
FROM PatrolRecords PR
LEFT JOIN Vehicles V ON PR.vehicle_id = V.vehicle_id;

-- 39. Delete a vehicle and see cascade effect
-- DELETE FROM Vehicles WHERE vehicle_id = 5;

-- 40. Update vehicle name and see cascade effect
-- UPDATE Vehicles SET vehicle_name = 'All-Terrain Boat' WHERE vehicle_id = 5;

-- 41. Count patrols mentioning "elephant"
SELECT COUNT(*) AS elephant_patrols
FROM PatrolRecords
WHERE incidents_reported LIKE '%elephant%';

-- 42. Group patrols by status and month
SELECT status, MONTH(date) AS month, COUNT(*) AS count
FROM PatrolRecords
GROUP BY status, MONTH(date);

-- 43. Patrols with very short notes (< 10 chars)
SELECT * FROM PatrolRecords
WHERE CHAR_LENGTH(notes) < 10;

-- 44. Patrols where patrol_team name ends with 'a'
SELECT * FROM PatrolRecords
WHERE patrol_team LIKE '%a';

-- 45. Patrols with similar area_covered (wildcard)
SELECT * FROM PatrolRecords
WHERE area_covered LIKE 'Zone_%';

-- 46. Days without any patrol (using a calendar table is ideal, skipped here)

-- 47. Rank patrols by recency using window function
SELECT *, RANK() OVER (ORDER BY date DESC) AS recency_rank
FROM PatrolRecords;

-- 48. Cumulative patrol count by date
SELECT date, COUNT(*) OVER (ORDER BY date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
FROM PatrolRecords;

-- 49. Convert status to UPPERCASE
SELECT id, UPPER(status) AS status_caps
FROM PatrolRecords;

-- 50. Patrols grouped by vehicle and sorted by total
SELECT V.vehicle_name, COUNT(*) AS patrols
FROM PatrolRecords PR
JOIN Vehicles V ON PR.vehicle_id = V.vehicle_id
GROUP BY V.vehicle_name
ORDER BY patrols DESC;


-- Table 5: Incidents
CREATE TABLE Incidents (
    id INT PRIMARY KEY,
    incident_type VARCHAR(50),
    location VARCHAR(100),
    date DATE,
    reported_by VARCHAR(100),
    description TEXT,
    status VARCHAR(20),
    action_taken TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records 
INSERT INTO Incidents (id, incident_type, location, date, reported_by, description, status, action_taken, created_at, updated_at) VALUES
(1, 'Poaching', 'Sundarbans Zone A1', '2025-06-01', 'Ravi Sharma', 'Dead deer found with bullet wound.', 'Investigated', 'FIR lodged, traps removed.', NOW(), NOW()),
(2, 'Illegal Logging', 'Gir Forest Zone B2', '2025-06-03', 'Sneha Patil', 'Freshly cut teak logs discovered.', 'Action Taken', 'Logs seized, suspects questioned.', NOW(), NOW()),
(3, 'Forest Fire', 'Kanha Zone C3', '2025-05-28', 'Rajesh Verma', 'Dry leaves caught fire in core area.', 'Resolved', 'Fire extinguished, firebreaks created.', NOW(), NOW()),
(4, 'Wild Animal Sighting', 'Kaziranga Zone D4', '2025-06-05', 'Amit Kale', 'Tiger seen near buffer zone village.', 'Monitored', 'Alert issued to villagers.', NOW(), NOW()),
(5, 'Fence Breach', 'Periyar Zone E5', '2025-06-07', 'Priya Joshi', 'Elephant damaged electric fence.', 'Fixed', 'Temporary fencing installed.', NOW(), NOW()),
(6, 'Suspicious Activity', 'Nagarhole Zone F1', '2025-06-06', 'Kiran Deshmukh', 'Unidentified person seen with bags.', 'Under Investigation', 'Patrol team alerted.', NOW(), NOW()),
(7, 'Injury to Animal', 'Bandipur Zone G2', '2025-06-04', 'Neha Kulkarni', 'Sambar deer limping in open area.', 'Treated', 'Veterinary team attended.', NOW(), NOW()),
(8, 'Encroachment', 'Dudhwa Zone H3', '2025-06-02', 'Suresh Pawar', 'Farmer extended farm into forest.', 'Resolved', 'Boundary markers reinstalled.', NOW(), NOW()),
(9, 'Dead Animal Found', 'Simlipal Zone I4', '2025-05-30', 'Anjali Nair', 'Carcass of leopard discovered.', 'Investigated', 'Sample sent for analysis.', NOW(), NOW()),
(10, 'Drone Sighting', 'Melghat Zone J5', '2025-06-10', 'Rohan Sawant', 'Unauthorized drone flying over canopy.', 'Reported', 'Reported to cyber cell.', NOW(), NOW()),
(11, 'Landslide', 'Palamau Zone K6', '2025-06-09', 'Tushar Jadhav', 'Trail blocked after heavy rain.', 'Cleared', 'Debris removed manually.', NOW(), NOW()),
(12, 'Water Shortage', 'Bhadra Zone L7', '2025-06-08', 'Swati Shinde', 'Waterholes dried up in summer.', 'In Progress', 'Tankers deployed.', NOW(), NOW()),
(13, 'Nest Disturbance', 'Satpura Zone M8', '2025-06-11', 'Pooja Gokhale', 'Bird nests found destroyed.', 'Monitored', 'Community educated on protection.', NOW(), NOW()),
(14, 'Trapping Attempt', 'Anamalai Zone N9', '2025-06-12', 'Shubham Patil', 'Snares discovered on forest path.', 'Resolved', 'Traps confiscated, area patrolled.', NOW(), NOW()),
(15, 'Tree Fall', 'Silent Valley Zone O10', '2025-06-13', 'Divya Mishra', 'Large tree collapsed on road.', 'Resolved', 'Cleared by forest maintenance team.', NOW(), NOW()),
(16, 'Chemical Spill', 'Bhitar Kanika Zone P11', '2025-06-14', 'Manish Tiwari', 'Oily residue seen in river.', 'Investigated', 'Samples collected for testing.', NOW(), NOW()),
(17, 'Animal Rescue', 'Nilgiri Hills Zone Q12', '2025-06-15', 'Arjun Singh', 'Porcupine trapped in fence.', 'Completed', 'Released safely to wild.', NOW(), NOW()),
(18, 'Noise Disturbance', 'Koundinya Zone R13', '2025-06-16', 'Meena Rane', 'Loud music from nearby tourist camp.', 'Resolved', 'Warning issued to resort.', NOW(), NOW()),
(19, 'Illegal Grazing', 'Namdapha Zone S14', '2025-06-17', 'Jyoti Salunke', 'Cattle found deep in forest area.', 'Warned', 'Herders fined and warned.', NOW(), NOW()),
(20, 'Unauthorized Construction', 'Sariska Zone T15', '2025-06-18', 'Nikhil Bhosale', 'Concrete base found in protected zone.', 'Reported', 'Legal notice sent to offender.', NOW(), NOW());

-- to display table data
select * from Incidents;

-- to remove complete records from table
truncate table Incidents;

-- to remove complete records and attributes from table
drop table Incidents;

-- 1. Create the 'Incidents' table
CREATE TABLE Incidents (
    id INT PRIMARY KEY,
    incident_type VARCHAR(50),
    location VARCHAR(100),
    date DATE,
    reported_by VARCHAR(100),
    description TEXT,
    status VARCHAR(20),
    action_taken TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

-- 2. Add a new column 'severity' to the 'Incidents' table
ALTER TABLE Incidents
ADD severity VARCHAR(10);

-- 3. Modify the 'status' column to have a default value
ALTER TABLE Incidents
MODIFY status VARCHAR(20) DEFAULT 'Pending';

-- 4. Drop the 'severity' column from the 'Incidents' table
ALTER TABLE Incidents
DROP COLUMN severity;

-- 5. Rename the 'Incidents' table to 'Forest_Incidents'
ALTER TABLE Incidents
RENAME TO Forest_Incidents;

-- 6. Insert a new incident record
INSERT INTO Incidents (id, incident_type, location, date, reported_by, description, status, action_taken, created_at, updated_at)
VALUES (21, 'Illegal Mining', 'Sundarbans Zone A2', '2025-06-19', 'Anita Desai', 'Unauthorized mining activity detected.', 'Under Investigation', 'Notified authorities.', NOW(), NOW());

-- 7. Update the status of an incident
UPDATE Incidents
SET status = 'Resolved', updated_at = NOW()
WHERE id = 21;

-- 8. Delete an incident record
DELETE FROM Incidents
WHERE id = 21;

-- 9. Insert multiple incident records
INSERT INTO Incidents (id, incident_type, location, date, reported_by, description, status, action_taken, created_at, updated_at)
VALUES
(22, 'Poaching', 'Kaziranga Zone D5', '2025-06-20', 'Rahul Mehta', 'Evidence of poaching found.', 'Investigated', 'FIR lodged.', NOW(), NOW()),
(23, 'Illegal Logging', 'Periyar Zone E6', '2025-06-21', 'Sunita Rao', 'Freshly cut logs discovered.', 'Action Taken', 'Logs seized.', NOW(), NOW());

-- 10. Update multiple records' status to 'Closed'
UPDATE Incidents
SET status = 'Closed', updated_at = NOW()
WHERE status = 'Resolved';

-- 11. Retrieve all incidents
SELECT * FROM Incidents;

-- 12. Retrieve incidents reported in June 2025
SELECT * FROM Incidents
WHERE MONTH(date) = 6 AND YEAR(date) = 2025;

-- 13. Retrieve incidents with status 'Investigated'
SELECT * FROM Incidents
WHERE status = 'Investigated';

-- 14. Retrieve incidents reported by 'Ravi Sharma'
SELECT * FROM Incidents
WHERE reported_by = 'Ravi Sharma';

-- 15. Retrieve distinct incident types
SELECT DISTINCT incident_type FROM Incidents;

-- 16. Count the number of incidents per status
SELECT status, COUNT(*) AS incident_count
FROM Incidents
GROUP BY status;

-- 17. Retrieve incidents with 'Fire' in the description
SELECT * FROM Incidents
WHERE description LIKE '%Fire%';

-- 18. Retrieve incidents ordered by date descending
SELECT * FROM Incidents
ORDER BY date DESC;

-- 19. Retrieve the most recent incident
SELECT * FROM Incidents
ORDER BY date DESC
LIMIT 1;

-- 20. Retrieve incidents between two dates
SELECT * FROM Incidents
WHERE date BETWEEN '2025-06-01' AND '2025-06-15';

-- 21. Create the 'Reporters' table
CREATE TABLE Reporters (
    reporter_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_info VARCHAR(100)
);

-- 22. Retrieve incidents along with reporter contact info using INNER JOIN
SELECT i.*, r.contact_info
FROM Incidents i
INNER JOIN Reporters r ON i.reported_by = r.name;

-- 23. Retrieve all reporters and their incidents using LEFT JOIN
SELECT r.name, i.incident_type
FROM Reporters r
LEFT JOIN Incidents i ON r.name = i.reported_by;

-- 24. Retrieve reporters with no incidents using LEFT JOIN and WHERE clause
SELECT r.name
FROM Reporters r
LEFT JOIN Incidents i ON r.name = i.reported_by
WHERE i.id IS NULL;

-- 25. Retrieve incidents reported by reporters with contact info ending with '@forest.gov'
SELECT * FROM Incidents
WHERE reported_by IN (
    SELECT name FROM Reporters
    WHERE contact_info LIKE '%@forest.gov'
);

-- 26. Retrieve incidents with the highest incident ID
SELECT * FROM Incidents
WHERE id = (SELECT MAX(id) FROM Incidents);

-- 27. Retrieve incidents where the status is the same as the most common status
SELECT * FROM Incidents
WHERE status = (
    SELECT status FROM Incidents
    GROUP BY status
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

-- 28. Retrieve incidents with a reporter who has reported more than one incident
SELECT * FROM Incidents
WHERE reported_by IN (
    SELECT reported_by FROM Incidents
    GROUP BY reported_by
    HAVING COUNT(*) > 1
);

-- 29. Retrieve incidents not reported by any reporter in the 'Reporters' table
SELECT * FROM Incidents
WHERE reported_by NOT IN (
    SELECT name FROM Reporters
);

-- 30. Retrieve the average number of incidents per reporter
SELECT AVG(incident_count) AS avg_incidents
FROM (
    SELECT reported_by, COUNT(*) AS incident_count
    FROM Incidents
    GROUP BY reported_by
) AS reporter_incidents;

-- 31. Retrieve incidents with status not equal to 'Resolved'
SELECT * FROM Incidents
WHERE status <> 'Resolved';

-- 32. Retrieve incidents where location starts with 'Sundarbans'
SELECT * FROM Incidents
WHERE location LIKE 'Sundarbans%';

-- 33. Retrieve incidents with NULL in 'action_taken'
SELECT * FROM Incidents
WHERE action_taken IS NULL;

-- 34. Retrieve incidents with non-NULL 'action_taken'
SELECT * FROM Incidents
WHERE action_taken IS NOT NULL;

-- 35. Retrieve incidents using alias for columns
SELECT id AS IncidentID, incident_type AS Type, location AS Location
FROM Incidents;

-- 36. Retrieve the total number of incidents
SELECT COUNT(*) AS TotalIncidents FROM Incidents;

-- 37. Retrieve the earliest incident date
SELECT MIN(date) AS EarliestDate FROM Incidents;

-- 38. Retrieve the latest incident date
SELECT MAX(date) AS LatestDate FROM Incidents;

-- 39. Retrieve the number of incidents per location
SELECT location, COUNT(*) AS IncidentCount
FROM Incidents
GROUP BY location;

-- 40. Retrieve incidents grouped by month
SELECT MONTH(date) AS Month, COUNT(*) AS IncidentCount
FROM Incidents
GROUP BY MONTH(date);

-- 41. Create 'Incident_Actions' table with foreign key referencing 'Incidents'
CREATE TABLE Incident_Actions (
    action_id INT PRIMARY KEY,
    incident_id INT,
    action_description TEXT,
    FOREIGN KEY (incident_id) REFERENCES Incidents(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
-- 42. Insert an action for an incident
INSERT INTO Incident_Actions (action_id, incident_id, action_description)
VALUES (1, 1, 'Initial investigation conducted.');

-- 43. Delete an incident and observe cascading delete in 'Incident_Actions'
DELETE FROM Incidents
WHERE id = 1;
-- This will automatically delete the related record in 'Incident_Actions' due to ON DELETE CASCADE

-- 44. Update an incident ID and observe cascading update in 'Incident_Actions'
UPDATE Incidents
SET id = 100
WHERE id = 2;
-- This will automatically update 'incident_id' in 'Incident_Actions' to 100 due to ON UPDATE CASCADE

-- 45. Delete all incidents and observe cascading delete in 'Incident_Actions'
DELETE FROM Incidents;
-- This will delete all related records in 'Incident_Actions'

-- 46. Retrieve incidents with 'Poaching' or 'Illegal Logging' types
SELECT * FROM Incidents
WHERE incident_type IN ('Poaching', 'Illegal Logging');

-- 47. Retrieve incidents not in 'Resolved' or 'Closed' status
SELECT * FROM Incidents
WHERE status NOT IN ('Resolved', 'Closed');

-- 48. Retrieve incidents reported in the last 7 days
SELECT * FROM Incidents
WHERE date >= CURDATE() - INTERVAL 7 DAY;

-- 49. Retrieve incidents with descriptions containing the word 'fire' (case-insensitive)
SELECT * FROM Incidents
WHERE LOWER(description) LIKE '%fire%';

-- 50 . Retrieve all incidents with status 'Resolved'
SELECT *
FROM Incidents
WHERE status = 'Resolved';


-- Table 6: ConservationProjects
CREATE TABLE ConservationProjects (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    objective TEXT,
    start_date DATE,
    end_date DATE,
    budget DECIMAL(10,2),
    status VARCHAR(20),
    lead_scientist VARCHAR(100),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO ConservationProjects (id, name, objective, start_date, end_date, budget, status, lead_scientist, created_at, updated_at) VALUES
(1, 'Project Tiger Revival', 'Restore tiger population in critical habitats.', '2024-01-01', '2026-12-31', 5000000.00, 'Ongoing', 'Dr. Neha Sharma', NOW(), NOW()),
(2, 'Elephant Corridor Mapping', 'Ensure safe passage for migrating elephants.', '2023-05-01', '2025-04-30', 3000000.00, 'Ongoing', 'Dr. Vikram Joshi', NOW(), NOW()),
(3, 'Mangrove Rejuvenation', 'Replant and protect coastal mangroves.', '2022-06-15', '2024-06-15', 1500000.00, 'Ongoing', 'Dr. Farida Khan', NOW(), NOW()),
(4, 'Snow Leopard Tracking', 'Study movement and behavior of snow leopards.', '2023-09-01', '2025-08-31', 2000000.00, 'Ongoing', 'Dr. Rina D’Souza', NOW(), NOW()),
(5, 'Community Forest Protection', 'Train local communities for forest stewardship.', '2022-01-10', '2024-12-31', 1000000.00, 'Completed', 'Dr. Shalini Desai', NOW(), NOW()),
(6, 'Medicinal Plant Conservation', 'Preserve and catalog medicinal flora.', '2023-04-01', '2025-03-31', 800000.00, 'Ongoing', 'Dr. Anil Kumar', NOW(), NOW()),
(7, 'Wetland Biodiversity Study', 'Evaluate and conserve wetland habitats.', '2022-07-01', '2024-07-01', 900000.00, 'Completed', 'Dr. Pawan Verma', NOW(), NOW()),
(8, 'Gharial Rescue Mission', 'Protect endangered gharial populations.', '2023-02-01', '2025-01-31', 1200000.00, 'Ongoing', 'Dr. Shruti Rao', NOW(), NOW()),
(9, 'Lantana Removal Program', 'Eradicate invasive lantana species.', '2022-05-15', '2024-11-15', 700000.00, 'Completed', 'Dr. Mohan Das', NOW(), NOW()),
(10, 'Anti-Poaching Tech Integration', 'Deploy drones and sensors in critical zones.', '2024-03-01', '2025-12-31', 2500000.00, 'Ongoing', 'Dr. Rehan Ali', NOW(), NOW()),
(11, 'Bee Habitat Enhancement', 'Improve pollinator ecosystems.', '2023-01-01', '2024-12-31', 600000.00, 'Ongoing', 'Dr. Kavita Singh', NOW(), NOW()),
(12, 'Coral Reef Restoration', 'Rebuild coral reef ecosystems.', '2023-08-01', '2026-07-31', 4000000.00, 'Ongoing', 'Dr. Kanta Pawar', NOW(), NOW()),
(13, 'Wildlife Disease Surveillance', 'Monitor and prevent zoonotic outbreaks.', '2022-09-01', '2024-09-01', 1100000.00, 'Completed', 'Dr. Ramesh Bhat', NOW(), NOW()),
(14, 'Forest Soil Rehabilitation', 'Rebuild fertility of degraded forest soil.', '2023-05-01', '2025-04-30', 950000.00, 'Ongoing', 'Dr. Arjun Kulkarni', NOW(), NOW()),
(15, 'Eco-tourism Training Program', 'Train locals for eco-tourism guides.', '2023-02-01', '2024-12-01', 450000.00, 'Completed', 'Dr. Sujata Kale', NOW(), NOW()),
(16, 'River Dolphin Habitat Project', 'Preserve river dolphin breeding areas.', '2023-06-01', '2025-05-31', 1700000.00, 'Ongoing', 'Dr. Leonard Hall', NOW(), NOW()),
(17, 'Urban Biodiversity Mapping', 'Catalog wildlife in urban forests.', '2022-08-01', '2024-07-31', 650000.00, 'Completed', 'Dr. Maria Allen', NOW(), NOW()),
(18, 'Climate Resilient Forests', 'Design strategies to combat climate impact.', '2023-04-01', '2026-03-31', 3000000.00, 'Ongoing', 'Dr. Nathan King', NOW(), NOW()),
(19, 'Avian Migration Study', 'Track migratory birds using GPS tagging.', '2024-01-15', '2026-01-15', 2000000.00, 'Ongoing', 'Dr. Olivia Baker', NOW(), NOW()),
(20, 'Peacock Habitat Enhancement', 'Boost peacock populations in dry forests.', '2023-03-01', '2025-02-28', 850000.00, 'Ongoing', 'Dr. Tina Harris', NOW(), NOW());

-- to display table data
select * from  ConservationProjects;

-- to remove complete records from table
truncate table  ConservationProjects;

-- to remove complete records and attributes from table
drop table  ConservationProjects;

-- 1. Create the ConservationProjects table
CREATE TABLE ConservationProjects (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    objective TEXT,
    start_date DATE,
    end_date DATE,
    budget DECIMAL(10,2),
    status VARCHAR(20),
    lead_scientist VARCHAR(100),
    created_at DATETIME,
    updated_at DATETIME
);

-- 2. Add column for remaining budget
ALTER TABLE ConservationProjects ADD remaining_budget DECIMAL(10,2);

-- 3. Ensure status cannot be NULL
ALTER TABLE ConservationProjects MODIFY status VARCHAR(20) NOT NULL;

-- 4. Change name column to UNIQUE
ALTER TABLE ConservationProjects ADD UNIQUE (name);

-- 5. Rename objective to description
ALTER TABLE ConservationProjects CHANGE objective description TEXT;

-- 6. Rename table to Projects
ALTER TABLE ConservationProjects RENAME TO Projects;

-- 7. Insert new project
INSERT INTO Projects (id,name,description,start_date,end_date,budget,status,lead_scientist,created_at,updated_at)
VALUES (21,'Forest Fire Prevention','Establish early-warning systems','2025-01-01','2027-12-31',1800000,'Planned','Dr. Tara Singh',NOW(),NOW());

-- 8. Bulk insert two records
INSERT INTO Projects  VALUES
(22,'Bat Roost Study','Monitor bats in caves','2024-09-01','2025-08-31',600000,'Ongoing','Dr. Rajesh Verma',NOW(),NOW()),
(23,'Invasive Species Control','Control Lantana spread','2025-02-01','2026-01-31',800000,'Planned','Dr. Meera Gupta',NOW(),NOW());

-- 9. Update status of ended projects
UPDATE Projects SET status='Completed', updated_at=NOW()
WHERE end_date < CURDATE();

-- 10. Calculate remaining budget
UPDATE Projects
SET remaining_budget = budget - IFNULL( (SELECT SUM(spent) FROM ProjectSpending WHERE project_id=Projects.id), 0 ),
    updated_at=NOW();

-- 11. Delete projects with zero budget
DELETE FROM Projects WHERE budget = 0;

-- 12. Remove test entries
DELETE FROM Projects WHERE name LIKE 'Test%';

-- 13. List all ongoing projects
SELECT * FROM Projects WHERE status='Ongoing';

-- 14. Projects with budget > 1M
SELECT id,name,budget FROM Projects WHERE budget > 1000000;

-- 15. Projects starting this year
SELECT * FROM Projects WHERE YEAR(start_date) = YEAR(CURDATE());

-- 16. Count per status
SELECT status, COUNT(*) AS cnt FROM Projects GROUP BY status;

-- 17. Total budget allocated
SELECT SUM(budget) AS total_budget FROM Projects;

-- 18. Max & min budgets
SELECT MAX(budget) AS max_bud, MIN(budget) AS min_bud FROM Projects;

-- 19. Top 5 expensive projects
SELECT id,name,budget FROM Projects ORDER BY budget DESC LIMIT 5;

-- 20. Projects active for > 2 years
SELECT * FROM Projects
WHERE DATEDIFF(end_date, start_date) > 730;

-- 21. Short description check
SELECT id, CHAR_LENGTH(description) AS desc_len FROM Projects;

-- 22. Name contains 'Wildlife'
SELECT * FROM Projects WHERE name LIKE '%Wildlife%';

-- 23. Upcoming projects
SELECT * FROM Projects WHERE start_date > CURDATE() ORDER BY start_date;

-- 24. Join project with spending details
SELECT p.name, s.spent, s.spent_date
FROM Projects p
JOIN ProjectSpending s ON p.id = s.project_id;

-- 25. Projects with no spending yet
SELECT name FROM Projects
WHERE id NOT IN (SELECT project_id FROM ProjectSpending);

-- 26. Projects over budget
SELECT p.name, SUM(s.spent) - p.budget AS over_by
FROM Projects p
JOIN ProjectSpending s ON p.id = s.project_id
GROUP BY p.id
HAVING over_by > 0;

-- 27. Lead scientist info
SELECT p.name, sc.email, sc.department
FROM Projects p
JOIN Scientists sc ON p.lead_scientist = sc.name;

-- 28. Projects with above-average budget
SELECT * FROM Projects
WHERE budget > (SELECT AVG(budget) FROM Projects);

-- 29. Create spending table with cascade on delete/update
CREATE TABLE ProjectSpending (
  spend_id INT PRIMARY KEY,
  project_id INT,
  spent DECIMAL(10,2),
  spent_date DATE,
  FOREIGN KEY(project_id) REFERENCES Projects(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 30. Insert spending record
INSERT INTO ProjectSpending VALUES (1,1,250000,'2025-06-01');

-- 31. Deleting a project deletes spending
DELETE FROM Projects WHERE id=1;

-- 32. Updating project id cascades to spending
UPDATE Projects SET id=2 WHERE id=3;

-- 33. Remaining budget ranking
SELECT id,name,remaining_budget,
  RANK() OVER (ORDER BY remaining_budget DESC) AS remain_rank
FROM Projects;  -- window functions retain rows :contentReference[oaicite:6]{index=6}

-- 34. Cumulative budget by start date
SELECT id,name,budget,
  SUM(budget) OVER (ORDER BY start_date) AS cumulative_budget
FROM Projects; 

-- 35. Previous project budget by lead
SELECT id,lead_scientist,budget,
  LAG(budget) OVER (PARTITION BY lead_scientist ORDER BY start_date) AS prev_budget
FROM Projects; 

-- 36. CTE: Average budget per status
WITH status_avg AS (
  SELECT status, AVG(budget) AS avg_budget
  FROM Projects GROUP BY status
)
SELECT * FROM status_avg;

-- 37. CTE: Projects above avg for their status
WITH avg_status AS (
  SELECT status, AVG(budget) AS avg_b
  FROM Projects GROUP BY status
)
SELECT p.* FROM Projects p
JOIN avg_status a ON p.status = a.status
WHERE p.budget > a.avg_b;

-- 38. Recursive CTE: generate numbers 1–5
WITH RECURSIVE nums(n) AS (
  SELECT 1
  UNION ALL
  SELECT n+1 FROM nums WHERE n < 5
)
SELECT * FROM nums;  

-- 39. Recursive CTE: factorial table 0–5
WITH RECURSIVE fact(n,fact) AS (
  SELECT 0,1
  UNION ALL
  SELECT n+1, fact*(n+1)
  FROM fact WHERE n < 5
)
SELECT * FROM fact; 

-- 40. Union planned & ongoing
SELECT * FROM Projects WHERE status='Planned'
UNION
SELECT * FROM Projects WHERE status='Ongoing';

-- 41. Intersection of Ongoing & high budget
SELECT id FROM Projects WHERE status='Ongoing';

-- 42. Exclude small-budget projects
SELECT * FROM Projects WHERE budget < 500000;

-- 43. Paginate: rows 11–20
SELECT * FROM Projects ORDER BY start_date LIMIT 10 OFFSET 10;

-- 44. Delete old completed projects
DELETE FROM Projects
WHERE status='Completed' AND end_date < DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

-- 45. Flag long-term projects
UPDATE Projects
SET status='Long-term', updated_at=NOW()
WHERE DATEDIFF(end_date, start_date) > 730;

-- 46. Top 3 highest budgets
WITH ranked AS (
  SELECT *, ROW_NUMBER() OVER (ORDER BY budget DESC) AS rn
  FROM Projects
)
SELECT * FROM ranked WHERE rn <= 3;

-- 47. Budget gap between projects
SELECT id,name,budget,
  budget - LAG(budget) OVER (ORDER BY start_date) AS gap_prev
FROM Projects;

-- 48. Delete statuses with single project
DELETE FROM Projects
WHERE status IN (
  SELECT status FROM Projects GROUP BY status HAVING COUNT(*) = 1
);

-- 49. Classify by budget size
SELECT *,
  CASE WHEN budget > 2000000 THEN 'High' ELSE 'Low' END AS budget_level
FROM Projects;

-- 50. Archive old planned projects
UPDATE Projects
SET status='Archived', updated_at=NOW()
WHERE status='Planned' AND start_date < DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

-- Table 7: ResearchActivities
CREATE TABLE ResearchActivities (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    lead_researcher VARCHAR(100),
    start_date DATE,
    end_date DATE,
    focus_area VARCHAR(100),
    status VARCHAR(20),
    findings TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records into ResearchActivities
INSERT INTO ResearchActivities (id, title, lead_researcher, start_date, end_date, focus_area, status, findings, created_at, updated_at) VALUES
(1, 'Habitat Use by Bengal Tigers', 'Dr. Rina D’Souza', '2023-01-01', '2024-12-31', 'Big Cat Ecology', 'Completed', 'Tigers prefer dense sal forests over mixed ones.', NOW(), NOW()),
(2, 'Carbon Sequestration in Mangroves', 'Dr. Neha Sharma', '2022-07-01', '2024-06-30', 'Climate Mitigation', 'Completed', 'Mangroves store 5x more carbon than dry forests.', NOW(), NOW()),
(3, 'Elephant Movement in Western Ghats', 'Dr. Vikram Joshi', '2023-05-15', '2025-05-14', 'Animal Movement', 'Ongoing', 'Initial tracking shows migration due to farmland encroachment.', NOW(), NOW()),
(4, 'Lantana Invasion Impact Study', 'Dr. Mohan Das', '2023-09-01', '2024-09-01', 'Invasive Species', 'Ongoing', 'Reduction in native plant biomass observed.', NOW(), NOW()),
(5, 'Reforestation Impact in Satpura', 'Dr. Ramesh Bhat', '2022-04-01', '2024-03-31', 'Forest Regeneration', 'Completed', 'Tree survival rate post-monsoon is 78%.', NOW(), NOW()),
(6, 'Medicinal Plants of Nilgiri Hills', 'Dr. Anil Kumar', '2023-06-01', '2024-06-01', 'Ethnobotany', 'Ongoing', 'Documented 120 medicinal plant species.', NOW(), NOW()),
(7, 'Avian Nesting Patterns', 'Dr. Kavita Singh', '2023-11-01', '2024-10-31', 'Bird Behavior', 'Ongoing', 'Peak nesting in early monsoon noted.', NOW(), NOW()),
(8, 'Soil Health in Replanted Forests', 'Dr. Arjun Kulkarni', '2023-08-01', '2024-08-01', 'Soil Science', 'Ongoing', 'Replanted plots show 40% better humus retention.', NOW(), NOW()),
(9, 'Herpetofauna Diversity Index', 'Dr. Shruti Rao', '2023-03-01', '2024-02-28', 'Amphibians & Reptiles', 'Completed', 'Higher diversity in undisturbed wetlands.', NOW(), NOW()),
(10, 'GIS Mapping of Forest Fires', 'Dr. Manish Tiwari', '2023-01-10', '2024-01-10', 'Disaster Monitoring', 'Ongoing', 'Fire-prone zones identified using satellite data.', NOW(), NOW()),
(11, 'Bee Populations in Agroforests', 'Dr. Rehan Ali', '2023-07-01', '2025-06-30', 'Pollinator Research', 'Ongoing', 'Positive correlation with organic farming.', NOW(), NOW()),
(12, 'Water Table Monitoring', 'Dr. Pawan Verma', '2022-05-01', '2024-05-01', 'Hydrology', 'Completed', 'Summer water table dropped by 1.2m.', NOW(), NOW()),
(13, 'Zoonotic Disease Survey', 'Dr. Suresh Naik', '2023-09-15', '2024-09-14', 'Wildlife Health', 'Ongoing', 'Monitoring bat colonies for viral strains.', NOW(), NOW()),
(14, 'Correlating Forest Density and Rainfall', 'Dr. Shalini Desai', '2023-10-01', '2024-09-30', 'Climate Research', 'Ongoing', 'Dense forest patches linked to higher precipitation.', NOW(), NOW()),
(15, 'Sustainable Bamboo Harvesting', 'Dr. Farida Khan', '2022-03-01', '2024-03-01', 'Non-Timber Forest Products', 'Completed', 'Yield improved using 3-year rotation cycle.', NOW(), NOW()),
(16, 'Impact of Light Pollution on Wildlife', 'Dr. Olivia Baker', '2023-04-01', '2025-03-31', 'Ecological Disruption', 'Ongoing', 'Owls avoid areas with high light exposure.', NOW(), NOW()),
(17, 'Fungal Growth in Decaying Logs', 'Dr. Tina Harris', '2023-02-01', '2024-01-31', 'Fungal Ecology', 'Completed', 'Logged 64 species of forest fungi.', NOW(), NOW()),
(18, 'Forest Corridor Effectiveness Study', 'Dr. Kanta Pawar', '2023-06-01', '2025-05-31', 'Habitat Connectivity', 'Ongoing', 'Camera traps confirm corridor use by 7 species.', NOW(), NOW()),
(19, 'Butterfly Diversity Across Elevations', 'Dr. Maria Allen', '2022-11-01', '2024-11-01', 'Entomology', 'Completed', 'Mid-elevation zones showed highest diversity.', NOW(), NOW()),
(20, 'Traditional Tribal Knowledge Survey', 'Dr. Kiran Deshmukh', '2023-12-01', '2024-11-30', 'Cultural Conservation', 'Ongoing', 'Documented forest uses of 14 tribal groups.', NOW(), NOW());

-- to display table data
select * from ResearchActivities;

-- to remove complete records from table
truncate table ResearchActivities;

-- to remove complete records and attributes from table
drop table ResearchActivities;

-- 1. Create the table
CREATE TABLE ResearchActivities (
  id INT PRIMARY KEY,
  title VARCHAR(100),
  lead_researcher VARCHAR(100),
  start_date DATE,
  end_date DATE,
  focus_area VARCHAR(100),
  status VARCHAR(20),
  findings TEXT,
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add column 'funding_source'
ALTER TABLE ResearchActivities
ADD funding_source VARCHAR(100);

-- 3. Modify title length
ALTER TABLE ResearchActivities
MODIFY title VARCHAR(150);

-- 4. Set NOT NULL on status
ALTER TABLE ResearchActivities
MODIFY status VARCHAR(20) NOT NULL;

-- 5. Drop 'funding_source'
ALTER TABLE ResearchActivities
DROP COLUMN funding_source;

-- 6. Rename table to 'ResearchProjects'
ALTER TABLE ResearchActivities
RENAME TO ResearchProjects;

-- 7. Insert a new record
INSERT INTO ResearchActivities (id, title, researcher, start_date, updated_at)
VALUES
  (101, 'Field Survey', 'Dr. Smith', '2025-07-01', NOW()),
  (102, 'Lab Analysis', 'Dr. Jones', '2025-07-02', NOW());

-- 8. Bulk insert
INSERT INTO ResearchActivities (id, title, researcher, start_date)
VALUES (101, 'Field Survey', 'Dr. Smith', '2025-07-29');


-- 9. Update status for a project
UPDATE ResearchProjects
SET status = 'Completed', updated_at = NOW()
WHERE id = 3;

-- 10. Extend end_date by 6 months for ongoing projects
UPDATE ResearchProjects
SET end_date = DATE_ADD(end_date, INTERVAL 6 MONTH)
WHERE status = 'Ongoing';

-- 11. Delete a specific project
DELETE FROM ResearchProjects WHERE id = 20;

-- 12. Remove completed older than 2023
DELETE FROM ResearchProjects
WHERE status = 'Completed' AND end_date < '2023-01-01';

-- 13. Select all columns
SELECT * FROM ResearchProjects;

-- 14. Projects led by Dr. Neha Sharma
SELECT * FROM ResearchProjects WHERE lead_researcher = 'Dr. Neha Sharma';

-- 15. Completed projects
SELECT * FROM ResearchProjects WHERE status = 'Completed';

-- 16. Focus areas with distinct values
SELECT DISTINCT focus_area FROM ResearchProjects;

-- 17. Count projects per focus area
SELECT focus_area, COUNT(*) AS num_projects
FROM ResearchProjects GROUP BY focus_area;

-- 18. Projects starting in 2023
SELECT * FROM ResearchProjects WHERE YEAR(start_date) = 2023;

-- 19. Ongoing or planned projects
SELECT * FROM ResearchProjects WHERE status IN ('Ongoing', 'Planned');

-- 20. Using LIKE operator
SELECT * FROM ResearchProjects WHERE title LIKE '%Impact%';

-- 21. Projects ordered by start_date
SELECT * FROM ResearchProjects ORDER BY start_date DESC;

-- 22. Top 5 recent projects
SELECT * FROM ResearchProjects ORDER BY start_date DESC LIMIT 5;

-- 23. Average duration
SELECT AVG(DATEDIFF(end_date, start_date)) AS avg_days FROM ResearchProjects;

-- 24. Minimum and maximum budgets—assuming a 'budget' column
SELECT MIN(budget), MAX(budget) FROM ResearchProjects;

-- 25. Duration per project alias
SELECT id, title, DATEDIFF(end_date, start_date) AS duration_days
FROM ResearchProjects;

-- 26. Projects longer than average duration
SELECT * FROM ResearchProjects
WHERE DATEDIFF(end_date, start_date) > (
  SELECT AVG(DATEDIFF(end_date, start_date)) FROM ResearchProjects
);

-- 27. Projects without findings
SELECT * FROM ResearchProjects WHERE findings IS NULL;

-- 28. Completed & ongoing count with conditional aggregation
SELECT
  SUM(CASE WHEN status='Completed' THEN 1 ELSE 0 END) AS completed_count,
  SUM(CASE WHEN status='Ongoing' THEN 1 ELSE 0 END) AS ongoing_count
FROM ResearchProjects;

-- 29. Scientists and their projects (INNER JOIN)
SELECT r.name, rp.title
FROM ResearchProjects rp
JOIN Researchers r ON rp.lead_researcher = r.name;

-- 30. All researchers, even without projects (LEFT JOIN)
SELECT r.name, rp.title
FROM Researchers r
LEFT JOIN ResearchProjects rp
  ON rp.lead_researcher = r.name;

-- 31. Researchers with no projects
SELECT name FROM Researchers r
LEFT JOIN ResearchProjects rp ON rp.lead_researcher = r.name
WHERE rp.id IS NULL;

-- 32. Projects led by researchers in 'University A'
SELECT * FROM ResearchProjects
WHERE lead_researcher IN (
  SELECT name FROM Researchers WHERE institution = 'University A'
);

-- 33. Correlated subquery: projects longer than average
SELECT id, title FROM ResearchProjects rp
WHERE DATEDIFF(end_date, start_date) > (
  SELECT AVG(DATEDIFF(end_date, start_date)) FROM ResearchProjects
);

-- 34. Tracking ongoing projects (EXISTS)
SELECT * FROM ResearchProjects rp
WHERE EXISTS (
  SELECT 1 FROM ResearchProjects r2
  WHERE r2.lead_researcher = rp.lead_researcher
  AND r2.status = 'Ongoing'
);

-- 35. Window function: rank by duration :contentReference[oaicite:3]{index=3}
SELECT id, title,
  DATEDIFF(end_date, start_date) AS duration_days,
  RANK() OVER (ORDER BY DATEDIFF(end_date, start_date) DESC) AS dur_rank
FROM ResearchProjects;

-- 36. Running count per researcher :contentReference[oaicite:4]{index=4}
SELECT id, lead_researcher,
       COUNT(*) OVER (PARTITION BY lead_researcher ORDER BY start_date) AS project_seq
FROM ResearchProjects;

-- 37. Create activities table with cascade FK
CREATE TABLE ProjectActivities (
  activity_id INT PRIMARY KEY,
  project_id INT,
  description TEXT,
  FOREIGN KEY (project_id) REFERENCES ResearchProjects(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- 38. Insert activity
INSERT INTO ProjectActivities VALUES (1, 1, 'Field surveys completed');

-- 39. Deleting project cascades delete
DELETE FROM ResearchProjects WHERE id = 1;

-- 40. Updating project ID cascades
UPDATE ResearchProjects SET id = 2 WHERE id = 3;

-- 41. Cleanup all
DELETE FROM ResearchProjects;

-- 42. CTE to calculate avg duration per researcher
WITH avg_dur AS (
  SELECT lead_researcher, AVG(DATEDIFF(end_date, start_date)) AS avg_days
  FROM ResearchProjects GROUP BY lead_researcher
)
SELECT rp.*, ad.avg_days
FROM ResearchProjects rp
JOIN avg_dur ad ON rp.lead_researcher = ad.lead_researcher;

-- 43. Identify duplicates by title
SELECT title, COUNT(*) AS cnt
FROM ResearchProjects
GROUP BY title
HAVING COUNT(*) > 1;

-- 44. Projects overlapping 2024
SELECT * FROM ResearchProjects
WHERE start_date <= '2024-12-31' AND end_date >= '2024-01-01';

-- 45. Find title and average duration (Window + Partition)
SELECT id, title,
  AVG(DATEDIFF(end_date, start_date)) OVER (PARTITION BY focus_area) AS avg_area_duration
FROM ResearchProjects;

-- 46. Score ongoing vs completed
SELECT status,
       ROUND(100.0 * SUM(status='Ongoing') / COUNT(*), 2) AS pct_ongoing
FROM ResearchProjects;

-- 47. Lag function to compare project durations :contentReference[oaicite:5]{index=5}
SELECT id, lead_researcher, title,
       DATEDIFF(end_date, start_date) AS dur,
       LAG(DATEDIFF(end_date, start_date)) OVER (ORDER BY start_date) AS prev_dur
FROM ResearchProjects;

-- 48. Recursive CTE example for hierarchical data :contentReference[oaicite:6]{index=6}
WITH RECURSIVE project_hierarchy AS (
  SELECT id, title, NULL AS parent_id
  FROM ResearchProjects WHERE id = 1
  UNION ALL
  SELECT rp.id, rp.title, ph.id
  FROM ResearchProjects rp
  JOIN project_hierarchy ph ON rp.id = ph.parent_id
)
SELECT * FROM project_hierarchy;

-- 49. Conditional aggregation
SELECT focus_area,
       SUM(CASE WHEN status='Completed' THEN 1 ELSE 0 END) AS completed,
       SUM(CASE WHEN status='Ongoing' THEN 1 ELSE 0 END) AS ongoing
FROM ResearchProjects
GROUP BY focus_area;

-- 50. Monthly project count
SELECT DATE_FORMAT(start_date, '%Y-%m') AS month, COUNT(*) AS total
FROM ResearchProjects
GROUP BY month
ORDER BY month;

-- Table 8: VisitorLogs
CREATE TABLE VisitorLogs (
    id INT PRIMARY KEY,
    visitor_name VARCHAR(100),
    contact VARCHAR(20),
    visit_date DATE,
    zone_visited VARCHAR(100),
    purpose VARCHAR(100),
    guide_name VARCHAR(100),
    feedback TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records into VisitorLogs
INSERT INTO VisitorLogs (id, visitor_name, contact, visit_date, zone_visited, purpose, guide_name, feedback, created_at, updated_at) VALUES
(1, 'Amit Joshi', '9876543210', '2025-06-01', 'Sundarbans Zone A1', 'Wildlife Photography', 'Ravi Sharma', 'Amazing biodiversity. Saw crocodiles and deer.', NOW(), NOW()),
(2, 'Sneha Patil', '8765432109', '2025-06-02', 'Kanha Zone C3', 'Research Observation', 'Priya Joshi', 'Very helpful guide. Neatly maintained trail.', NOW(), NOW()),
(3, 'Nikhil Deshmukh', '7654321098', '2025-06-03', 'Gir Forest Zone B2', 'Leisure Visit', 'Kiran Deshmukh', 'Saw lions from distance. Wonderful experience.', NOW(), NOW()),
(4, 'Rhea Nair', '9988776655', '2025-06-04', 'Kaziranga Zone D4', 'Bird Watching', 'Anjali Nair', 'Saw hornbills and storks. Informative session.', NOW(), NOW()),
(5, 'Rajeev Sharma', '9988001122', '2025-06-05', 'Nagarhole Zone F1', 'Eco-tourism', 'Manish Tiwari', 'Had a great forest trail walk. Very safe.', NOW(), NOW()),
(6, 'Megha Kulkarni', '9000112233', '2025-06-06', 'Bandipur Zone G2', 'Nature Photography', 'Neha Kulkarni', 'Spotted elephants and peacocks. Excellent guide.', NOW(), NOW()),
(7, 'Tushar Jain', '9099888776', '2025-06-07', 'Dudhwa Zone H3', 'Research', 'Pooja Gokhale', 'Well-structured field visit. Found useful data.', NOW(), NOW()),
(8, 'Aarti Pawar', '9223344556', '2025-06-08', 'Simlipal Zone I4', 'Forest Awareness', 'Divya Mishra', 'Educational trip. Loved the trek.', NOW(), NOW()),
(9, 'Sagar Rane', '9334455667', '2025-06-09', 'Melghat Zone J5', 'Photography', 'Tushar Jadhav', 'Good experience, though very hot weather.', NOW(), NOW()),
(10, 'Jyoti Salunkhe', '9445566778', '2025-06-10', 'Bhadra Zone L7', 'Eco-camp Visit', 'Rohan Sawant', 'Very scenic and peaceful. Clean campsite.', NOW(), NOW()),
(11, 'Vivek Shinde', '9556677889', '2025-06-11', 'Satpura Zone M8', 'Family Picnic', 'Swati Shinde', 'Children enjoyed the nature trail.', NOW(), NOW()),
(12, 'Rekha Gokhale', '9667788990', '2025-06-12', 'Anamalai Zone N9', 'Herbal Study', 'Kanta Pawar', 'Valuable info on medicinal plants.', NOW(), NOW()),
(13, 'Aniket Khot', '9778899001', '2025-06-13', 'Silent Valley Zone O10', 'Wildlife Tracking', 'Shruti Rao', 'Lucky to spot a rare horned frog.', NOW(), NOW()),
(14, 'Neelam Thakur', '9889900112', '2025-06-14', 'Bhitar Kanika Zone P11', 'Mangrove Walk', 'Maria Allen', 'Very informative mangrove tour.', NOW(), NOW()),
(15, 'Pravin Kale', '9990011223', '2025-06-15', 'Nilgiri Hills Zone Q12', 'Educational Tour', 'Farida Khan', 'Organized and well explained.', NOW(), NOW()),
(16, 'Kiran Joshi', '9112233445', '2025-06-16', 'Koundinya Zone R13', 'Photography Workshop', 'Leonard Hall', 'Great lighting for wildlife photos.', NOW(), NOW()),
(17, 'Tanvi Mehta', '9223344556', '2025-06-17', 'Namdapha Zone S14', 'Bird Watching', 'Olivia Baker', 'Very beautiful forest with rare species.', NOW(), NOW()),
(18, 'Shreyas More', '9334455667', '2025-06-18', 'Sariska Zone T15', 'Leisure Safari', 'Arjun Singh', 'Enjoyed safari. Saw a leopard briefly.', NOW(), NOW()),
(19, 'Nikita Kaur', '9445566778', '2025-06-19', 'Periyar Zone E5', 'Nature Walk', 'Kavita Singh', 'Excellent nature trail with good commentary.', NOW(), NOW()),
(20, 'Rahul Banerjee', '9556677889', '2025-06-20', 'Palamau Zone K6', 'Botany Research', 'Sujata Kale', 'Collected several native plant samples.', NOW(), NOW());

-- to display table data
select * from VisitorLogs;

-- to remove complete records from table
truncate table VisitorLogs;

-- to remove complete records and attributes from table
drop table VisitorLogs;

-- 1. Create VisitorLogs table
CREATE TABLE VisitorLogs (
  id INT PRIMARY KEY,
  visitor_name VARCHAR(100),
  contact VARCHAR(20),
  visit_date DATE,
  zone_visited VARCHAR(100),
  purpose VARCHAR(100),
  guide_name VARCHAR(100),
  feedback TEXT,
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add visitors' nationality
ALTER TABLE VisitorLogs ADD nationality VARCHAR(50);

-- 3. Change contact to VARCHAR(15)
ALTER TABLE VisitorLogs MODIFY contact VARCHAR(15);

-- 4. Set NOT NULL on zone_visited
ALTER TABLE VisitorLogs MODIFY zone_visited VARCHAR(100) NOT NULL;

-- 5. Drop nationality column
ALTER TABLE VisitorLogs DROP COLUMN nationality;

-- 6. Rename table to VisitorRecords
ALTER TABLE VisitorLogs RENAME TO VisitorRecords;

-- 7. Insert a new visit
INSERT INTO VisitorRecords  VALUES (21, 'Rina Patel', '9123456780', '2025-06-21', 'Gir Forest Zone B2', 'Wildlife Research', 'Neha Kulkarni', 'Very knowledgeable guide.', NOW(), NOW());

-- 8. Bulk insert two new records
INSERT INTO VisitorRecords  VALUES
(22, 'Karan Mehta','9001122334','2025-06-22','Kaziranga Zone D4','Photography','Divya Mishra','Great sightings of rhinos.',NOW(),NOW()),
(23, 'Alisha Roy','9112233449','2025-06-23','Bandipur Zone G2','Family Visit','Priya Joshi','Kids enjoyed a lot.',NOW(),NOW());

-- 9. Update guide for record id=5
UPDATE VisitorRecords SET guide_name='Anjali Nair', updated_at=NOW() WHERE id=5;

-- 10. Change feedback for ids 1 and 2
UPDATE VisitorRecords
SET feedback = 'Updated feedback via bulk.', updated_at = NOW()
WHERE id IN (1, 2);

-- 11. Delete record id=23
DELETE FROM VisitorRecords WHERE id = 23;

-- 12. Remove visits before June 5, 2025
DELETE FROM VisitorRecords WHERE visit_date < '2025-06-05';

-- 13. Retrieve all logs
SELECT * FROM VisitorRecords;

-- 14. Visits in June 2025
SELECT * FROM VisitorRecords
WHERE MONTH(visit_date)=6 AND YEAR(visit_date)=2025;

-- 15. Visits for photography
SELECT * FROM VisitorRecords WHERE purpose LIKE '%Photo%';

-- 16. Unique zones visited
SELECT DISTINCT zone_visited FROM VisitorRecords;

-- 17. Visits count by guide
SELECT guide_name, COUNT(*) AS visits_count
FROM VisitorRecords GROUP BY guide_name;

-- 18. Max and min visit dates
SELECT MIN(visit_date) AS first_visit, MAX(visit_date) AS last_visit FROM VisitorRecords;

-- 19. Visits ordered recent first
SELECT * FROM VisitorRecords ORDER BY visit_date DESC;

-- 20. Visits by 'Neha Kulkarni'
SELECT * FROM VisitorRecords WHERE guide_name='Neha Kulkarni';

-- 21. Feedback length using LENGTH()
SELECT id, visitor_name, LENGTH(feedback) AS feedback_chars
FROM VisitorRecords;

-- 22. Visits per day
SELECT visit_date, COUNT(*) AS num_visits
FROM VisitorRecords GROUP BY visit_date
ORDER BY visit_date;

-- 23. Contact anonymized (alias)
SELECT id, CONCAT(LEFT(contact,3),'****',RIGHT(contact,3)) AS masked_contact FROM VisitorRecords;

-- 24. Visits with empty feedback
SELECT * FROM VisitorRecords WHERE feedback IS NULL OR feedback='';

-- 25. Guide names in uppercase
SELECT id, UPPER(guide_name) AS guide_upper FROM VisitorRecords;

-- 26. Join logs with guide regions
SELECT v.*, g.region
FROM VisitorRecords v
JOIN Guides g ON v.guide_name = g.guide_name;

-- 27. All guides, even no visits
SELECT g.guide_name, v.visitor_name
FROM Guides g LEFT JOIN VisitorRecords v ON g.guide_name=v.guide_name;

-- 28. Guides without any visits
SELECT g.guide_name FROM Guides g
LEFT JOIN VisitorRecords v ON g.guide_name=v.guide_name
WHERE v.id IS NULL;

-- 29. Visits in zones matching Guides region
SELECT * FROM VisitorRecords
WHERE guide_name IN (
  SELECT guide_name FROM Guides WHERE region='Gir Forest Zone B2'
);

-- 30. Latest visit per guide (correlated subquery)
SELECT v1.*
FROM VisitorRecords v1
WHERE visit_date = (
  SELECT MAX(visit_date) FROM VisitorRecords v2
  WHERE v2.guide_name = v1.guide_name
);

-- 31. Create zones table
CREATE TABLE Zones (
  zone_name VARCHAR(100) PRIMARY KEY
);

-- 32. Recreate VisitorRecords with CASCADE FK
CREATE TABLE VisitorRecords2 (
  id INT PRIMARY KEY,
  zone_visited VARCHAR(100),
  FOREIGN KEY (zone_visited) REFERENCES Zones(zone_name)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 33. Insert zone & log entries
INSERT INTO Zones VALUES ('Sundarbans Zone A1');
INSERT INTO VisitorRecords2  VALUES (1, 'Amit Joshi',  'Sundarbans Zone A1');

-- 34. Delete a zone cascades
DELETE FROM Zones WHERE zone_name='Sundarbans Zone A1';
-- Automatically removes associated VisitorRecords2

-- 35. Update zone name cascades
UPDATE Zones SET zone_name='Gir Forest Zone B2' WHERE zone_name='Gir Forest Zone BX';
-- Propagates to VisitorRecords2

-- 36. Visits count by zone with HAVING filter
SELECT zone_visited, COUNT(*) AS cnt
FROM VisitorRecords
GROUP BY zone_visited
HAVING cnt > 2;

-- 37. Feedback snippet using SUBSTR
SELECT id, SUBSTR(feedback,1,30) AS preview FROM VisitorRecords;

-- 38. Visits per guide, sorted by count
SELECT guide_name, COUNT(*) AS cnt
FROM VisitorRecords GROUP BY guide_name
ORDER BY cnt DESC;

-- 39. Check repeated contacts
SELECT contact, COUNT(*) AS occurrences
FROM VisitorRecords GROUP BY contact HAVING occurrences > 1;

-- 40. CTE for visits in date range
WITH recent_visits AS (
  SELECT * FROM VisitorRecords WHERE visit_date BETWEEN '2025-06-10' AND '2025-06-20'
)
SELECT * FROM recent_visits WHERE purpose LIKE '%Research%';

-- 41. Percentage of photography visits
SELECT ROUND(100.0 * SUM(purpose LIKE '%Photo%') / COUNT(*),2) AS pct_photography
FROM VisitorRecords;

-- 42. Window function: rank guides by number of visits
SELECT guide_name, COUNT(*) AS total_visits,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS guide_rank
FROM VisitorRecords GROUP BY guide_name;

-- 43. Lag: compare visits per day
SELECT visit_date, COUNT(*) AS daily_visits,
       LAG(COUNT(*)) OVER (ORDER BY visit_date) AS prev_day_visits
FROM VisitorRecords GROUP BY visit_date;

-- 44. Identify busiest day
SELECT visit_date
FROM (
  SELECT visit_date, COUNT(*) AS cnt FROM VisitorRecords GROUP BY visit_date
) t ORDER BY cnt DESC LIMIT 1;

-- 45. Delete visits with no feedback
DELETE FROM VisitorRecords WHERE feedback IS NULL OR TRIM(feedback)='';

-- 46. Update passatge with conditional CASE
UPDATE VisitorRecords
SET feedback = CASE
  WHEN feedback LIKE '%hot weather%' THEN CONCAT(feedback, ' (Consider water breaks)')
  ELSE feedback
END, updated_at=NOW()
WHERE feedback LIKE '%hot weather%';

-- 47. Monthly visit summary
SELECT DATE_FORMAT(visit_date, '%Y-%m') AS month, COUNT(*) AS total_visits
FROM VisitorRecords GROUP BY month ORDER BY month;

-- 48. Contacts masked with CASE
SELECT id,
CASE 
  WHEN CHAR_LENGTH(contact)=10 THEN CONCAT(LEFT(contact,3),'****',RIGHT(contact,3))
  ELSE contact
END AS masked_contact
FROM VisitorRecords;

-- 49. Feedback sentiment search with REGEXP
SELECT * FROM VisitorRecords
WHERE feedback REGEXP '(great|excellent|amazing)';

-- 50. Visits not guided by Priya Joshi
SELECT id, visitor_name
FROM VisitorRecords WHERE guide_name <> 'Priya Joshi';


-- Table 9: PermitsIssued
CREATE TABLE PermitsIssued (
    id INT PRIMARY KEY,
    permit_type VARCHAR(50),
    issued_to VARCHAR(100),
    issue_date DATE,
    expiry_date DATE,
    purpose VARCHAR(100),
    status VARCHAR(20),
    issuing_officer VARCHAR(100),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records into PermitsIssued
INSERT INTO PermitsIssued (id, permit_type, issued_to, issue_date, expiry_date, purpose, status, issuing_officer, created_at, updated_at) VALUES
(1, 'Research', 'Dr. Rina D’Souza', '2025-01-15', '2025-12-31', 'Tiger Movement Study', 'Active', 'Ravi Sharma', NOW(), NOW()),
(2, 'Filming', 'Nature Channel India', '2025-02-01', '2025-04-30', 'Wildlife Documentary', 'Active', 'Sneha Patil', NOW(), NOW()),
(3, 'Timber Transport', 'Jain Timber Co.', '2025-03-05', '2025-03-20', 'Approved Timber Transit', 'Expired', 'Kiran Deshmukh', NOW(), NOW()),
(4, 'Eco-tourism', 'Green Trails Pvt. Ltd.', '2025-01-01', '2025-12-31', 'Guided Eco-tour Programs', 'Active', 'Anjali Nair', NOW(), NOW()),
(5, 'Photography', 'Ravi Nair', '2025-06-01', '2025-06-10', 'Wildlife Photography', 'Active', 'Rajeev Sharma', NOW(), NOW()),
(6, 'Scientific Collection', 'Dr. Meena Rane', '2024-12-01', '2025-12-01', 'Medicinal Plant Samples', 'Active', 'Shruti Rao', NOW(), NOW()),
(7, 'Cultural Event', 'Sundar Folk Group', '2025-02-15', '2025-02-17', 'Tribal Dance Festival', 'Completed', 'Divya Mishra', NOW(), NOW()),
(8, 'Forest Entry', 'Ajay Kulkarni', '2025-05-10', '2025-05-11', 'Hiking with Group', 'Expired', 'Neha Kulkarni', NOW(), NOW()),
(9, 'Camping', 'Eco Rangers Club', '2025-06-01', '2025-06-03', 'Nature Awareness Camp', 'Active', 'Tushar Jadhav', NOW(), NOW()),
(10, 'Bird Survey', 'Dr. Olivia Baker', '2025-04-20', '2025-06-20', 'Migratory Bird Study', 'Active', 'Farida Khan', NOW(), NOW()),
(11, 'Wood Collection', 'Tribal Welfare Trust', '2025-03-01', '2025-03-30', 'Dry Wood for Community Use', 'Completed', 'Maria Allen', NOW(), NOW()),
(12, 'Water Sample Study', 'Sanjeev Ghosh', '2025-02-10', '2025-04-10', 'River Pollution Analysis', 'Expired', 'Rehan Ali', NOW(), NOW()),
(13, 'Butterfly Monitoring', 'Dr. Tina Harris', '2025-05-01', '2025-09-30', 'Species Diversity Survey', 'Active', 'Arjun Singh', NOW(), NOW()),
(14, 'Forest Stay', 'Youth Explorer Group', '2025-06-15', '2025-06-18', '3-Day Forest Workshop', 'Upcoming', 'Sujata Kale', NOW(), NOW()),
(15, 'Tribal Documentation', 'Cultural Heritage Org', '2025-03-10', '2025-08-10', 'Traditional Knowledge Recording', 'Active', 'Kavita Singh', NOW(), NOW()),
(16, 'Vehicle Entry', 'Raj Logistics', '2025-06-01', '2025-06-30', 'Supply Delivery in Protected Zone', 'Active', 'Leonard Hall', NOW(), NOW()),
(17, 'Tree Survey', 'Forest Research Wing', '2025-05-05', '2025-07-05', 'Tree Density Analysis', 'Active', 'Nathan King', NOW(), NOW()),
(18, 'Drone Usage', 'DroneTrack India', '2025-04-01', '2025-04-15', 'Aerial Mapping', 'Expired', 'Kanta Pawar', NOW(), NOW()),
(19, 'Tourist Visit', 'Smita Desai', '2025-06-05', '2025-06-06', 'Safari Visit', 'Completed', 'Pawan Verma', NOW(), NOW()),
(20, 'Forest Education', 'Nature School India', '2025-01-20', '2025-12-31', 'Student Forest Tours', 'Active', 'Shalini Desai', NOW(), NOW());

-- to display table data
select * from PermitsIssued ;

-- to remove complete records from table
truncate table PermitsIssued ;

-- to remove complete records and attributes from table
drop table PermitsIssued ;

-- 1. Create table
CREATE TABLE PermitsIssued ;

-- 2. Add column 'region'
ALTER TABLE PermitsIssued ADD region VARCHAR(50);

-- 3. Modify contact length
ALTER TABLE PermitsIssued MODIFY issuing_officer VARCHAR(120);

-- 4. Set NOT NULL on purpose
ALTER TABLE PermitsIssued MODIFY purpose VARCHAR(100) NOT NULL;

-- 5. Drop 'region'
ALTER TABLE PermitsIssued DROP COLUMN region;

-- 6. Rename table
ALTER TABLE PermitsIssued RENAME TO IssuedPermits;

-- 7. Insert a permit
INSERT INTO IssuedPermits VALUES (21, 'Research', NOW(), NOW());

-- 8. Bulk insert
INSERT INTO IssuedPermits  VALUES (22), (23 );

-- 9. Update status
UPDATE IssuedPermits SET status='Expired', updated_at=NOW() WHERE id=2;

-- 10. Extend expiry by 1 month for Active
UPDATE IssuedPermits
SET expiry_date = DATE_ADD(expiry_date, INTERVAL 1 MONTH), updated_at = NOW()
WHERE status = 'Active';

-- 11. Delete specific record
DELETE FROM IssuedPermits WHERE id = 23;

-- 12. Purge old expired permits
DELETE FROM IssuedPermits WHERE expiry_date < '2025-01-01';

-- 13. Select all
SELECT * FROM IssuedPermits;

-- 14. Active permits
SELECT * FROM IssuedPermits WHERE status = 'Active';

-- 15. Permits issued in June 2025
SELECT * FROM IssuedPermits
WHERE MONTH(issue_date) = 6 AND YEAR(issue_date) = 2025;

-- 16. Distinct permit types
SELECT DISTINCT permit_type FROM IssuedPermits;

-- 17. Count by type
SELECT permit_type, COUNT(*) AS cnt
FROM IssuedPermits GROUP BY permit_type;

-- 18. Earliest and latest issue dates
SELECT MIN(issue_date), MAX(issue_date) FROM IssuedPermits;

-- 19. Order by expiry
SELECT * FROM IssuedPermits ORDER BY expiry_date DESC;

-- 20. Issued_to_filtered
SELECT * FROM IssuedPermits WHERE issued_to LIKE '%Dr.%';

-- 21. Expiring within next 30 days
SELECT * FROM IssuedPermits
WHERE expiry_date BETWEEN CURDATE() AND CURDATE() + INTERVAL 30 DAY;

-- 22. Active vs Expired count
SELECT
  SUM(status='Active') AS active_ct,
  SUM(status='Expired') AS expired_ct
FROM IssuedPermits;

-- 23. Average duration
SELECT AVG(DATEDIFF(expiry_date, issue_date)) AS avg_days FROM IssuedPermits;

-- 24. Duration per permit
SELECT id, permit_type, DATEDIFF(expiry_date, issue_date) AS duration_days
FROM IssuedPermits;

-- 25. Long-duration permits (>120 days)
SELECT * FROM IssuedPermits
WHERE DATEDIFF(expiry_date, issue_date) > 120;

-- 26. Join permits with officer info
SELECT p.*, o.department
FROM IssuedPermits p
JOIN Officers o ON p.issuing_officer = o.name;

-- 27. All officers with or w/o permits
SELECT o.name, p.id
FROM Officers o
LEFT JOIN IssuedPermits p ON p.issuing_officer = o.name;

-- 28. Officers without permits
SELECT o.name FROM Officers o
LEFT JOIN IssuedPermits p ON p.issuing_officer = o.name
WHERE p.id IS NULL;

-- 29. Permits by officers in 'Forest Dept'
SELECT * FROM IssuedPermits
WHERE issuing_officer IN (
  SELECT name FROM Officers WHERE department='Forest Dept'
);

-- 30. Latest permit per officer (correlated subquery)
SELECT p1.*
FROM IssuedPermits p1
WHERE issue_date = (
  SELECT MAX(issue_date) FROM IssuedPermits p2
  WHERE p2.issuing_officer = p1.issuing_officer
);

-- 31. Create Zones table
CREATE TABLE Zones (zone_name VARCHAR(100) PRIMARY KEY);

-- 32. New table with FK cascade
CREATE TABLE PermitZones ( zone_name VARCHAR(100),
  FOREIGN KEY(zone_name) REFERENCES Zones(zone_name)
  ON DELETE CASCADE ON UPDATE CASCADE
);

-- 33. Insert zone+permit
INSERT INTO Zones VALUES ('Sundarbans Zone A1');

-- 34. Delete zone cascades permit record
DELETE FROM Zones WHERE zone_name='Sundarbans Zone A1';

-- 35. Update zone cascades
UPDATE Zones SET zone_name='Gir Forest Zone B2' WHERE zone_name='Gir Forest Zone BX';

-- 36. Window: rank by duration :contentReference[oaicite:3]{index=3}
SELECT id, permit_type, DATEDIFF(expiry_date, issue_date) AS dur,
       RANK() OVER (ORDER BY DATEDIFF(expiry_date, issue_date) DESC) AS dur_rank
FROM IssuedPermits;

-- 37. Window: avg duration per officer
SELECT id, issuing_officer,
       AVG(DATEDIFF(expiry_date, issue_date)) OVER (PARTITION BY issuing_officer) AS avg_officer_dur
FROM IssuedPermits;

-- 38. Lag to compare durations :contentReference[oaicite:4]{index=4}
SELECT id, issuing_officer, DATEDIFF(expiry_date, issue_date) AS dur,
       LAG(DATEDIFF(expiry_date, issue_date)) OVER (ORDER BY issue_date) AS prev_dur
FROM IssuedPermits;

-- 39. CTE for long issues
WITH long_issues AS (
  SELECT * FROM IssuedPermits
  WHERE DATEDIFF(expiry_date, issue_date) > 180
)
SELECT * FROM long_issues WHERE status='Active';

-- 40. Recursive CTE (hierarchy) :contentReference[oaicite:5]{index=5}
WITH RECURSIVE permit_chain AS (
  SELECT id, issued_to, NULL AS parent_id
  FROM IssuedPermits WHERE id=1
  UNION ALL
  SELECT p.id, p.issued_to, pc.id
  FROM IssuedPermits p
  JOIN permit_chain pc ON p.id = pc.parent_id
)
SELECT * FROM permit_chain;

-- 41. UNION recent & expired :contentReference[oaicite:6]{index=6}
SELECT * FROM IssuedPermits WHERE status='Active'
UNION
SELECT * FROM IssuedPermits WHERE status='Expired';

-- 42. INTERSECT example :contentReference[oaicite:7]{index=7}
SELECT issued_to FROM IssuedPermits WHERE status='Active';

-- 43. Pagination sample :contentReference[oaicite:8]{index=8}
SELECT * FROM IssuedPermits
ORDER BY id
LIMIT 10 OFFSET 10;

-- 44. Set theory: EXCEPT :contentReference[oaicite:9]{index=9}
SELECT issued_to FROM IssuedPermits WHERE status='Active';

-- 45. Conditional aggregation
SELECT permit_type,
       SUM(CASE WHEN status='Active' THEN 1 ELSE 0 END) AS active_ct,
       SUM(CASE WHEN status='Expired' THEN 1 ELSE 0 END) AS expired_ct
FROM IssuedPermits GROUP BY permit_type;

-- 46. Duplicate lookup
SELECT issued_to, COUNT(*) AS cnt
FROM IssuedPermits GROUP BY issued_to HAVING cnt > 1;

-- 47. Visits per officer monthly
SELECT date_format(issue_date,'%Y-%m') AS ym,
       issuing_officer, COUNT(*) AS num_per_month
FROM IssuedPermits
GROUP BY ym, issuing_officer
ORDER BY ym, num_per_month DESC;

-- 48. Use of DISTINCT ON (PostgreSQL)
SELECT DISTINCT (issued_to) id, issued_to, issue_date
FROM IssuedPermits ORDER BY issued_to, issue_date DESC;

-- 49. Materialized view example :contentReference[oaicite:10]{index=10}
CREATE VIEW mv_active_permits AS
SELECT permit_type, COUNT(*) AS total_active
FROM IssuedPermits WHERE status='Active'
 GROUP BY permit_type;

-- 50. Full-text search feedback (MySQL example)
SELECT * FROM IssuedPermits
WHERE MATCH(purpose) AGAINST('study research' IN NATURAL LANGUAGE MODE);


-- Table 10: FireReports
CREATE TABLE FireReports (
    id INT PRIMARY KEY,
    report_date DATE,
    location VARCHAR(100),
    cause VARCHAR(100),
    area_affected FLOAT,
    action_taken TEXT,
    status VARCHAR(20),
    reported_by VARCHAR(100),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO FireReports (id, report_date, location, cause, area_affected, action_taken, status, reported_by, created_at, updated_at) VALUES
(1, '2025-03-10', 'Sundarbans Zone A1', 'Dry leaves & wind', 2.5, 'Fire line created, fire extinguished', 'Resolved', 'Ravi Sharma', NOW(), NOW()),
(2, '2025-04-15', 'Kanha Zone C3', 'Campfire left unattended', 1.2, 'Local team responded within 1 hour', 'Resolved', 'Sneha Patil', NOW(), NOW()),
(3, '2025-02-22', 'Gir Forest Zone B2', 'Electric spark from pole', 0.8, 'Power cut, flames doused using foam', 'Resolved', 'Kiran Deshmukh', NOW(), NOW()),
(4, '2025-03-01', 'Kaziranga Zone D4', 'Illegal burning', 3.0, 'Legal notice sent to offender', 'Investigated', 'Anjali Nair', NOW(), NOW()),
(5, '2025-04-03', 'Periyar Zone E5', 'Lightning strike', 4.6, 'Fire crew and volunteers controlled blaze', 'Resolved', 'Rajeev Sharma', NOW(), NOW()),
(6, '2025-03-20', 'Nagarhole Zone F1', 'Dry weather', 5.2, 'Water tankers deployed from HQ', 'Under Control', 'Dr. Vikram Joshi', NOW(), NOW()),
(7, '2025-04-10', 'Bandipur Zone G2', 'Cigarette butt', 0.9, 'Awareness issued to tourists', 'Resolved', 'Tushar Jain', NOW(), NOW()),
(8, '2025-02-25', 'Dudhwa Zone H3', 'Campfire mishap', 1.5, 'Guides now mandated to carry extinguisher', 'Resolved', 'Pooja Gokhale', NOW(), NOW()),
(9, '2025-03-17', 'Simlipal Zone I4', 'Agricultural burn spread', 3.7, 'Boundary fencing enhanced', 'Resolved', 'Rekha Gokhale', NOW(), NOW()),
(10, '2025-04-20', 'Melghat Zone J5', 'Unknown - under inquiry', 6.1, 'Drone survey and patrol launched', 'Investigating', 'Suresh Naik', NOW(), NOW()),
(11, '2025-01-30', 'Palamau Zone K6', 'Dry thunderstorm', 2.3, 'Rapid response team activated', 'Resolved', 'Rohan Sawant', NOW(), NOW()),
(12, '2025-02-10', 'Bhadra Zone L7', 'Dry twigs friction', 1.0, 'Fire guard installed additional sprinklers', 'Resolved', 'Swati Shinde', NOW(), NOW()),
(13, '2025-04-05', 'Satpura Zone M8', 'Unattended candle', 0.6, 'Camping rules revised', 'Resolved', 'Dr. Ramesh Bhat', NOW(), NOW()),
(14, '2025-03-14', 'Anamalai Zone N9', 'Spontaneous combustion', 1.8, 'Soil moisture improved via trenching', 'Resolved', 'Dr. Tina Harris', NOW(), NOW()),
(15, '2025-02-28', 'Silent Valley Zone O10', 'Fuel spill', 2.9, 'Cleanup team neutralized chemicals', 'Resolved', 'Divya Mishra', NOW(), NOW()),
(16, '2025-03-07', 'Bhitar Kanika Zone P11', 'Waste burning', 1.1, 'Eco-education held for locals', 'Resolved', 'Maria Allen', NOW(), NOW()),
(17, '2025-01-25', 'Nilgiri Hills Zone Q12', 'Gas leak from stove', 0.7, 'New campsite regulations enforced', 'Resolved', 'Farida Khan', NOW(), NOW()),
(18, '2025-02-18', 'Koundinya Zone R13', 'Sun reflection off glass', 2.2, 'Ban on reflective waste announced', 'Resolved', 'Arjun Singh', NOW(), NOW()),
(19, '2025-03-25', 'Namdapha Zone S14', 'Illegal charcoal making', 3.4, 'Charcoal pits sealed', 'Resolved', 'Sujata Kale', NOW(), NOW()),
(20, '2025-04-12', 'Sariska Zone T15', 'Poacher activity', 4.3, 'FIR filed, patrolling increased', 'Investigated', 'Leonard Hall', NOW(), NOW());

-- to display table data
select * from FireReports;

-- to remove complete records from table
truncate table FireReports;

-- to remove complete records and attributes from table
drop table FireReports;

-- 1. Create the table
CREATE TABLE FireReports (
  id INT PRIMARY KEY,
  report_date DATE,
  location VARCHAR(100),
  cause VARCHAR(100),
  area_affected FLOAT,
  action_taken TEXT,
  status VARCHAR(20),
  reported_by VARCHAR(100),
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add a 'severity' column
ALTER TABLE FireReports ADD severity VARCHAR(20);

-- 3. Modify 'cause' length
ALTER TABLE FireReports MODIFY cause VARCHAR(200);

-- 4. Set NOT NULL on status
ALTER TABLE FireReports MODIFY status VARCHAR(20) NOT NULL;

-- 5. Drop 'severity'
ALTER TABLE FireReports DROP COLUMN severity;

-- 6. Rename table to ForestFireReports
ALTER TABLE FireReports RENAME TO ForestFireReports;

-- 7. Insert a new fire incident
INSERT INTO ForestFireReports VALUES (21, '2025-05-01', 'Unknown Forest Zone', 'Arson', 2.0, 'Investigation ongoing', 'Investigated', 'Test Officer', NOW(), NOW());

-- 8. Batch insert two incidents
INSERT INTO ForestFireReports  VALUES 
(22, '2025-05-05', 'Demo Zone', 'Lightning', 3.5, 'Crew dispatched', 'Under Control', 'Officer A', NOW(), NOW()),
(23, '2025-05-07', 'Demo Zone', 'Campfire', 1.1, 'Fires extinguished', 'Resolved', 'Officer B', NOW(), NOW());

-- 9. Update status to 'Resolved'
UPDATE ForestFireReports SET status='Resolved', updated_at=NOW() WHERE id=20;

-- 10. Increase area_by 10%
UPDATE ForestFireReports SET area_affected = area_affected * 1.10 WHERE status='Under Control';

-- 11. Delete resolved older than April
DELETE FROM ForestFireReports WHERE status='Resolved' AND report_date < '2025-04-01';

-- 12. Delete a single record
DELETE FROM ForestFireReports WHERE id=23;

-- 13. Select all reports
SELECT * FROM ForestFireReports;

-- 14. Fires in March 2025
SELECT * FROM ForestFireReports WHERE MONTH(report_date)=3 AND YEAR(report_date)=2025;

-- 15. Count per status
SELECT status, COUNT(*) AS cnt FROM ForestFireReports GROUP BY status;

-- 16. Largest area affected
SELECT MAX(area_affected) AS largest_fire FROM ForestFireReports;

-- 17. Total area per cause
SELECT cause, SUM(area_affected) AS total_area FROM ForestFireReports GROUP BY cause;

-- 18. Average area by cause
SELECT cause, AVG(area_affected) AS avg_area FROM ForestFireReports GROUP BY cause;

-- 19. Reports sorted by area desc
SELECT * FROM ForestFireReports ORDER BY area_affected DESC;

-- 20. Resolved count
SELECT COUNT(*) AS resolved_fires FROM ForestFireReports WHERE status='Resolved';

-- 21. Reports handled by 'Dr. Vikram Joshi'
SELECT * FROM ForestFireReports WHERE reported_by='Dr. Vikram Joshi';

-- 22. Reports with unknown causes
SELECT * FROM ForestFireReports WHERE cause LIKE '%Unknown%';

-- 23. Area formatted with alias
SELECT id, area_affected, ROUND(area_affected,2) AS area_hares FROM ForestFireReports;

-- 24. Reports between two dates
SELECT * FROM ForestFireReports WHERE report_date BETWEEN '2025-03-01' AND '2025-04-01';

-- 25. Flag big incidents (>3 ha)
SELECT id, report_date, location, status,
CASE WHEN area_affected>3 THEN 'Major' ELSE 'Minor' END AS incident_level
FROM ForestFireReports;

-- 26. Join reports with zone details
SELECT r.*, z.zone_manager
FROM ForestFireReports r
JOIN Zones z ON r.location = z.zone_name;

-- 27. All zones and their report counts
SELECT z.zone_name, COUNT(r.id) AS report_count
FROM Zones z LEFT JOIN ForestFireReports r ON z.zone_name = r.location
GROUP BY z.zone_name;

-- 28. Zones with no fires
SELECT zone_name FROM Zones z
LEFT JOIN ForestFireReports r ON z.zone_name=r.location
WHERE r.id IS NULL;

-- 29. Fires with area > average (subquery)
SELECT * FROM ForestFireReports WHERE area_affected > (SELECT AVG(area_affected) FROM ForestFireReports);

-- 30. Latest fire per zone (correlated subquery)
SELECT r1.* FROM ForestFireReports r1
WHERE report_date = (SELECT MAX(report_date) FROM ForestFireReports r2 WHERE r2.location=r1.location);
-- Correlated subquery concept :contentReference[oaicite:2]{index=2}

-- 31. Create causes table
CREATE TABLE FireCauses (cause VARCHAR(100) PRIMARY KEY);

-- 32. Reports with unknown causes
SELECT * FROM ForestFireReports WHERE cause LIKE '%Unknown%';

-- 33. Insert a cause and incident
INSERT INTO FireCauses VALUES('Arson');

-- 34. Update cause cascades
UPDATE FireCauses SET cause='Illegal Burn' WHERE cause='Arson';

-- 35. Delete cause sets report.cause NULL
DELETE FROM FireCauses WHERE cause='Illegal Burn';

-- 36. Rank fires by area (window fn) :contentReference[oaicite:3]{index=3}
SELECT id, location, area_affected,
RANK() OVER (ORDER BY area_affected DESC) AS area_rank
FROM ForestFireReports;

-- 37. Running total of area per cause
SELECT report_date, cause, area_affected,
SUM(area_affected) OVER (PARTITION BY cause ORDER BY report_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS cum_area
FROM ForestFireReports;

-- 38. Lag & lead to compare areas
SELECT id, report_date, area_affected,
LAG(area_affected) OVER (ORDER BY report_date) AS prev_area,
LEAD(area_affected) OVER (ORDER BY report_date) AS next_area
FROM ForestFireReports;

-- 39. CTE: monthly totals
WITH monthly AS (
  SELECT DATE_FORMAT(report_date,'%Y-%m') AS ym, SUM(area_affected) AS total_area
  FROM ForestFireReports GROUP BY ym
)
SELECT * FROM monthly WHERE total_area > 5;

-- 40. Recursive CTE for weekly hierarchy :contentReference[oaicite:4]{index=4}
WITH RECURSIVE week_tree AS (
  SELECT MIN(report_date) AS dt FROM ForestFireReports
  UNION ALL
  SELECT DATE_ADD(dt, INTERVAL 7 DAY) FROM week_tree WHERE dt < CURDATE()
)
SELECT dt FROM week_tree;

-- 41. Identify duplicate locations
SELECT location, COUNT(*) AS cnt
FROM ForestFireReports GROUP BY location HAVING cnt>1;

-- 42. UNION resolved + investigating reports
SELECT * FROM ForestFireReports WHERE status='Resolved'
UNION
SELECT * FROM ForestFireReports WHERE status='Investigated';

-- 43. INTERSECT causes used twice (example)
SELECT cause FROM ForestFireReports WHERE status='Resolved';

-- 44. EXCEPT minor fires (<1 ha)
SELECT * FROM ForestFireReports WHERE area_affected < 1;

-- 45. Paginate by report_date desc
SELECT * FROM ForestFireReports ORDER BY report_date DESC LIMIT 10 OFFSET 0;

-- 46. Flag recent = last 30 days
SELECT *, CASE WHEN report_date >= CURDATE()-INTERVAL 30 DAY THEN 'Recent' ELSE 'Old' END AS recency
FROM ForestFireReports;

-- 47. Full-text on action_taken (MySQL)
SELECT * FROM ForestFireReports WHERE MATCH(action_taken) AGAINST('creat extinguish' IN NATURAL LANGUAGE MODE);

-- 48. Window avg per status
SELECT id, status, area_affected,
AVG(area_affected) OVER (PARTITION BY status) AS avg_area_status
FROM ForestFireReports;

-- 49. Delete small fires via subquery
DELETE FROM ForestFireReports WHERE area_affected < (SELECT AVG(area_affected) FROM ForestFireReports);

-- 50. Conditional update on large fires
UPDATE ForestFireReports
SET status = 'Major', updated_at=NOW()
WHERE area_affected > (SELECT AVG(area_affected) FROM ForestFireReports);


-- Table 11: WaterBodies
CREATE TABLE WaterBodies (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    type VARCHAR(50),
    location VARCHAR(100),
    area FLOAT,
    depth FLOAT,
    water_quality VARCHAR(50),
    status VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO WaterBodies (id, name, type, location, area, depth, water_quality, status, created_at, updated_at) VALUES
(1, 'Sundar Lake', 'Lake', 'Sundarbans Zone A1', 3.5, 6.2, 'Good', 'Active', NOW(), NOW()),
(2, 'Gir Stream', 'Stream', 'Gir Forest Zone B2', 1.2, 1.8, 'Moderate', 'Active', NOW(), NOW()),
(3, 'Kanha Pond', 'Pond', 'Kanha Zone C3', 0.6, 2.0, 'Good', 'Seasonal', NOW(), NOW()),
(4, 'Kaziranga Wetland', 'Wetland', 'Kaziranga Zone D4', 5.1, 1.5, 'Good', 'Active', NOW(), NOW()),
(5, 'Periyar Reservoir', 'Reservoir', 'Periyar Zone E5', 8.7, 10.5, 'Excellent', 'Active', NOW(), NOW()),
(6, 'Nagarhole Tank', 'Tank', 'Nagarhole Zone F1', 2.3, 3.1, 'Moderate', 'Active', NOW(), NOW()),
(7, 'Bandipur Nullah', 'Stream', 'Bandipur Zone G2', 1.0, 0.9, 'Good', 'Seasonal', NOW(), NOW()),
(8, 'Dudhwa Lake', 'Lake', 'Dudhwa Zone H3', 4.2, 5.0, 'Fair', 'Active', NOW(), NOW()),
(9, 'Simlipal Stream', 'Stream', 'Simlipal Zone I4', 0.9, 1.4, 'Poor', 'Drying', NOW(), NOW()),
(10, 'Melghat Dam', 'Reservoir', 'Melghat Zone J5', 7.5, 9.0, 'Excellent', 'Active', NOW(), NOW()),
(11, 'Palamau Pond', 'Pond', 'Palamau Zone K6', 0.8, 1.2, 'Moderate', 'Active', NOW(), NOW()),
(12, 'Bhadra River', 'River', 'Bhadra Zone L7', 12.5, 4.0, 'Good', 'Flowing', NOW(), NOW()),
(13, 'Satpura Lake', 'Lake', 'Satpura Zone M8', 3.0, 6.0, 'Excellent', 'Active', NOW(), NOW()),
(14, 'Anamalai Tank', 'Tank', 'Anamalai Zone N9', 1.4, 2.7, 'Good', 'Active', NOW(), NOW()),
(15, 'Silent Valley Stream', 'Stream', 'Silent Valley Zone O10', 0.7, 1.3, 'Excellent', 'Flowing', NOW(), NOW()),
(16, 'Bhitar Kanika Marsh', 'Wetland', 'Bhitar Kanika Zone P11', 6.3, 1.1, 'Good', 'Seasonal', NOW(), NOW()),
(17, 'Nilgiri Spring', 'Spring', 'Nilgiri Hills Zone Q12', 0.3, 0.8, 'Excellent', 'Active', NOW(), NOW()),
(18, 'Koundinya Lake', 'Lake', 'Koundinya Zone R13', 2.1, 3.4, 'Fair', 'Active', NOW(), NOW()),
(19, 'Namdapha River', 'River', 'Namdapha Zone S14', 15.0, 6.5, 'Excellent', 'Flowing', NOW(), NOW()),
(20, 'Sariska Waterhole', 'Pond', 'Sariska Zone T15', 0.5, 1.0, 'Moderate', 'Seasonal', NOW(), NOW());

-- to display table data
select * from WaterBodies;

-- to remove complete records from table
truncate table WaterBodies;

-- to remove complete records and attributes from table
drop table WaterBodies;

-- 1. Create WaterBodies table
CREATE TABLE WaterBodies (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  type VARCHAR(50),
  location VARCHAR(100),
  area FLOAT,
  depth FLOAT,
  water_quality VARCHAR(50),
  status VARCHAR(20),
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add column 'region'
ALTER TABLE WaterBodies ADD region VARCHAR(50);

-- 3. Modify depth precision
ALTER TABLE WaterBodies MODIFY depth DECIMAL(5,2);

-- 4. Enforce NOT NULL on name
ALTER TABLE WaterBodies MODIFY name VARCHAR(100) NOT NULL;

-- 5. Drop region column
ALTER TABLE WaterBodies DROP COLUMN region;

-- 6. Rename table to `AquaticSites`
ALTER TABLE WaterBodies RENAME TO AquaticSites;

-- 7. Insert a new record
INSERT INTO AquaticSites VALUES (21,'New Pond','Pond','Demo Zone',1.0, 1.5,'Fair','Active',NOW(),NOW());

-- 8. Insert two bulk records
INSERT INTO AquaticSites  VALUES
(22,'Test Lake','Lake','Demo Zone',2.0,4.0,'Good','Active',NOW(),NOW()),
(23,'Demo Spring','Spring','Test Zone',0.5,1.0,'Excellent','Seasonal',NOW(),NOW());

-- 9. Update water_quality
UPDATE AquaticSites
SET water_quality='Excellent', updated_at=NOW()
WHERE id = 8;

-- 10. Increase area by 10% for ponds
UPDATE AquaticSites
SET area = area * 1.10, updated_at=NOW()
WHERE type = 'Pond';

-- 11. Delete site by id
DELETE FROM AquaticSites WHERE id = 23;

-- 12. Delete seasonal sites
DELETE FROM AquaticSites WHERE status = 'Seasonal';

-- 13. Select all entries
SELECT * FROM AquaticSites;

-- 14. Lakes with area > 3
SELECT * FROM AquaticSites WHERE type='Lake' AND area > 3;

-- 15. Streams located in Bandipur
SELECT * FROM AquaticSites WHERE type='Stream' AND location LIKE '%Bandipur%';

-- 16. Distinct types
SELECT DISTINCT type FROM AquaticSites;

-- 17. Count per type
SELECT type, COUNT(*) AS count FROM AquaticSites GROUP BY type;

-- 18. Max area and min depth
SELECT MAX(area) AS max_area, MIN(depth) AS min_depth FROM AquaticSites;

-- 19. Average depth by type
SELECT type, ROUND(AVG(depth),2) AS avg_depth FROM AquaticSites GROUP BY type;

-- 20. Quality = 'Excellent'
SELECT name, water_quality FROM AquaticSites WHERE water_quality='Excellent';

-- 21. Active sites sorted by area desc
SELECT * FROM AquaticSites WHERE status='Active' ORDER BY area DESC;

-- 22. Seasonal or Drying sites
SELECT * FROM AquaticSites WHERE status IN ('Seasonal','Drying');

-- 23. Compute area × depth
SELECT id, name, area*depth AS volume_estimate FROM AquaticSites;

-- 24. Sites created this year
SELECT * FROM AquaticSites WHERE YEAR(created_at) = YEAR(CURDATE());

-- 25. Name masked using alias
SELECT id, CONCAT(LEFT(name,3),'...') AS short_name FROM AquaticSites;

-- 26. NULL feedback placeholder
SELECT *, COALESCE(water_quality,'Unknown') AS quality FROM AquaticSites;

-- 27. Join with Zones for manager info
SELECT a.*, z.manager
FROM AquaticSites a
JOIN Zones z ON a.location = z.zone_name;

-- 28. Zone-wise site counts
SELECT z.zone_name, COUNT(a.id) AS site_count
FROM Zones z LEFT JOIN AquaticSites a
  ON z.zone_name = a.location
GROUP BY z.zone_name;

-- 29. Zones without sites
SELECT z.zone_name FROM Zones z
LEFT JOIN AquaticSites a ON a.location = z.zone_name
WHERE a.id IS NULL;

-- 30. Sites larger than average
SELECT * FROM AquaticSites
WHERE area > (SELECT AVG(area) FROM AquaticSites);

-- 31. Surface area difference (correlated subquery)
SELECT a1.*
FROM AquaticSites a1
WHERE area > (
  SELECT AVG(area) FROM AquaticSites a2
  WHERE a2.type = a1.type
);

-- 32. Create `SiteActivities` with FK cascade
CREATE TABLE SiteActivities (
  act_id INT PRIMARY KEY,
  site_id INT,
  activity_desc TEXT,
  FOREIGN KEY(site_id) REFERENCES AquaticSites(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 33. Add an activity
INSERT INTO SiteActivities VALUES (1,1,'Quality sampling');

-- 34. Delete parent site cascades delete
DELETE FROM AquaticSites WHERE id=1;

-- 35. Update site id cascades
UPDATE AquaticSites SET id=2 WHERE id=20;

-- 36. Rank by area within type
SELECT id, type, area,
  RANK() OVER (PARTITION BY type ORDER BY area DESC) AS area_rank
FROM AquaticSites;  -- window functions :contentReference[oaicite:2]{index=2}

-- 37. Cumulative area by type
SELECT id, type, area,
  SUM(area) OVER (PARTITION BY type ORDER BY id) AS cum_area
FROM AquaticSites;  -- window functions :contentReference[oaicite:3]{index=3}

-- 38. Use LAG to compare previous area
SELECT id, name, area,
  LAG(area) OVER (ORDER BY id) AS prev_area
FROM AquaticSites;  -- window functions :contentReference[oaicite:4]{index=4}

-- 39. CTE monthly site creation
WITH monthly AS (
  SELECT DATE_FORMAT(created_at,'%Y-%m') AS ym, COUNT(*) AS cnt
  FROM AquaticSites
  GROUP BY ym
)
SELECT * FROM monthly WHERE cnt > 1;

-- 40. Recursive CTE list id chains
WITH RECURSIVE site_chain AS (
  SELECT id, name, NULL AS parent
  FROM AquaticSites WHERE id=1
  UNION ALL
  SELECT a.id, a.name, sc.id
  FROM AquaticSites a
  JOIN site_chain sc ON a.id = sc.parent
)
SELECT * FROM site_chain;

-- 41. Identify duplicate names
SELECT name, COUNT(*) AS cnt
FROM AquaticSites GROUP BY name HAVING cnt > 1;

-- 42. Active + Seasonal via UNION
SELECT * FROM AquaticSites WHERE status='Active'
UNION
SELECT * FROM AquaticSites WHERE status='Seasonal';

-- 43. Intersection example
SELECT name FROM AquaticSites WHERE status='Active';

-- 44. Exclude small (<1 area)
SELECT * FROM AquaticSites WHERE area < 1;

-- 45. Paginate
SELECT * FROM AquaticSites ORDER BY id LIMIT 10 OFFSET 10;

-- 46. Flag large/deep sites
SELECT *,
  CASE 
    WHEN area > 5 THEN 'Large'
    WHEN depth > 5 THEN 'Deep'
    ELSE 'Normal'
  END AS size_flag
FROM AquaticSites;

-- 47. Full-text match placeholder (MySQL)
-- SELECT * FROM AquaticSites
-- WHERE MATCH(name,location) AGAINST('Lake Active');

-- 48. Avg area per status window
SELECT id, status, area,
  AVG(area) OVER (PARTITION BY status) AS avg_area_status
FROM AquaticSites;  -- window functions :contentReference[oaicite:5]{index=5}

-- 49. Delete below-average area
DELETE FROM AquaticSites
WHERE area < (SELECT AVG(area) FROM AquaticSites);

-- 50. Classify quality using CASE
UPDATE AquaticSites
SET water_quality =
  CASE 
    WHEN water_quality='Poor' THEN 'Fair'
    ELSE water_quality
  END,
  updated_at=NOW()
WHERE water_quality='Poor';

-- Table 12: TreeSpecies
CREATE TABLE TreeSpecies (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    scientific_name VARCHAR(100),
    common_uses TEXT,
    native_region VARCHAR(100),
    conservation_status VARCHAR(50),
    growth_rate VARCHAR(50),
    status VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO TreeSpecies (id, name, scientific_name, common_uses, native_region, conservation_status, growth_rate, status, created_at, updated_at) VALUES
(1, 'Teak', 'Tectona grandis', 'Furniture, boat building, construction', 'Central India', 'Least Concern', 'Medium', 'Active', NOW(), NOW()),
(2, 'Sal', 'Shorea robusta', 'Timber, construction, traditional medicine', 'Eastern India', 'Least Concern', 'Slow', 'Active', NOW(), NOW()),
(3, 'Sandalwood', 'Santalum album', 'Perfume, incense, carving', 'Southern India', 'Vulnerable', 'Slow', 'Protected', NOW(), NOW()),
(4, 'Neem', 'Azadirachta indica', 'Medicinal, pesticide, shade', 'Pan India', 'Least Concern', 'Fast', 'Active', NOW(), NOW()),
(5, 'Peepal', 'Ficus religiosa', 'Religious, shade, air purifier', 'Subcontinent', 'Least Concern', 'Fast', 'Active', NOW(), NOW()),
(6, 'Banyan', 'Ficus benghalensis', 'Shade, soil conservation, religious', 'All India', 'Least Concern', 'Slow', 'Active', NOW(), NOW()),
(7, 'Mahogany', 'Swietenia mahagoni', 'Furniture, musical instruments', 'Introduced to India', 'Vulnerable', 'Medium', 'Cultivated', NOW(), NOW()),
(8, 'Deodar Cedar', 'Cedrus deodara', 'Construction, medicinal, sacred', 'Himalayas', 'Near Threatened', 'Slow', 'Protected', NOW(), NOW()),
(9, 'Jamun', 'Syzygium cumini', 'Fruit, medicine, wood', 'Tropical India', 'Least Concern', 'Medium', 'Active', NOW(), NOW()),
(10, 'Amla', 'Phyllanthus emblica', 'Medicinal, dietary supplement', 'India and Southeast Asia', 'Least Concern', 'Fast', 'Active', NOW(), NOW()),
(11, 'Arjuna', 'Terminalia arjuna', 'Cardiac medicine, shade', 'India and Bangladesh', 'Least Concern', 'Medium', 'Active', NOW(), NOW()),
(12, 'Bamboo', 'Bambusa vulgaris', 'Construction, paper, food', 'Northeast India', 'Least Concern', 'Very Fast', 'Active', NOW(), NOW()),
(13, 'Kadam', 'Neolamarckia cadamba', 'Pulpwood, shade, ornamental', 'Sub-Himalayan belt', 'Least Concern', 'Fast', 'Active', NOW(), NOW()),
(14, 'Rudraksha', 'Elaeocarpus ganitrus', 'Religious beads, traditional medicine', 'Eastern Himalayas', 'Rare', 'Slow', 'Cultivated', NOW(), NOW()),
(15, 'Palash', 'Butea monosperma', 'Dye, fodder, medicine', 'Dry deciduous forests', 'Least Concern', 'Medium', 'Active', NOW(), NOW()),
(16, 'Kusum', 'Schleichera oleosa', 'Lac production, timber, oil', 'Eastern and Central India', 'Least Concern', 'Medium', 'Active', NOW(), NOW()),
(17, 'Bael', 'Aegle marmelos', 'Fruit, medicine, sacred', 'Dry forests of India', 'Least Concern', 'Slow', 'Active', NOW(), NOW()),
(18, 'Semal', 'Bombax ceiba', 'Timber, silk cotton, fodder', 'Tropical forests', 'Least Concern', 'Fast', 'Active', NOW(), NOW()),
(19, 'Indian Rosewood', 'Dalbergia latifolia', 'Furniture, musical instruments', 'Western Ghats', 'Vulnerable', 'Slow', 'Protected', NOW(), NOW()),
(20, 'Amaltas', 'Cassia fistula', 'Ornamental, medicinal, firewood', 'Tropical India', 'Least Concern', 'Fast', 'Active', NOW(), NOW());

-- to display table data
select * from TreeSpecies ;

-- to remove complete records from table
truncate table TreeSpecies ;

-- to remove complete records and attributes from table
drop table TreeSpecies ;

-- 1. Create table
CREATE TABLE TreeSpecies (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  scientific_name VARCHAR(100),
  common_uses TEXT,
  native_region VARCHAR(100),
  conservation_status VARCHAR(50),
  growth_rate VARCHAR(50),
  status VARCHAR(20),
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add a 'max_height' column
ALTER TABLE TreeSpecies ADD max_height FLOAT;

-- 3. Modify 'conservation_status' to NOT NULL
ALTER TABLE TreeSpecies MODIFY conservation_status VARCHAR(50) NOT NULL;

-- 4. Drop 'max_height'
ALTER TABLE TreeSpecies DROP COLUMN max_height;

-- 5. Rename table to 'Species'
ALTER TABLE TreeSpecies RENAME TO Species;

-- 6. Insert a new species
INSERT INTO Species  VALUES (21, 'Neem Sapling', 'Azadirachta indica', 'Medicinal', 'Pan India', 'Least Concern', 'Fast', 'Active', NOW(), NOW());

-- 7. Batch insert two species
INSERT INTO Species  VALUES
(22, 'Kapok', 'Ceiba pentandra', 'Timber', 'Tropical India', 'Least Concern', 'Fast', 'Active', NOW(), NOW()),
(23, 'Indian Elm', 'Holoptelea integrifolia', 'Medicinal', 'Subcontinental', 'Least Concern', 'Medium', 'Active', NOW(), NOW());

-- 8. Update conservation status
UPDATE Species SET conservation_status='Endangered', updated_at=NOW()
WHERE name='Sandalwood';

-- 9. Mark Slow growers as Protected
UPDATE Species SET status='Protected', updated_at=NOW() WHERE growth_rate='Slow';

-- 10. Delete a record
DELETE FROM Species WHERE id=23;

-- 11. Remove all 'Cultivated' ones
DELETE FROM Species WHERE status='Cultivated';

-- 12. Select all
SELECT * FROM Species;

-- 13. Fast-growing species
SELECT * FROM Species WHERE growth_rate='Fast';

-- 14. Vulnerable or Rare
SELECT name, conservation_status FROM Species WHERE conservation_status IN ('Vulnerable','Rare');

-- 15. Count per status
SELECT status, COUNT(*) AS cnt FROM Species GROUP BY status;

-- 16. Count per conservation status
SELECT conservation_status, COUNT(*) AS cnt FROM Species GROUP BY conservation_status;

-- 17. Avg growth by conservation status
SELECT conservation_status, AVG(LENGTH(common_uses)) AS avg_use_length FROM Species GROUP BY conservation_status;

-- 18. Long descriptions using alias
SELECT name AS species, LENGTH(common_uses) AS use_desc_len FROM Species WHERE LENGTH(common_uses) > 50;

-- 19. Most recent additions
SELECT * FROM Species ORDER BY created_at DESC LIMIT 5;

-- 20. Name LIKE 'S%'
SELECT * FROM Species WHERE name LIKE 'S%';

-- 21. Count species by region
SELECT native_region, COUNT(*) AS cnt FROM Species GROUP BY native_region;

-- 22. Slow growers count
SELECT COUNT(*) AS slow_count FROM Species WHERE growth_rate='Slow';

-- 23. Conditional: fast flag
SELECT id, name,
  CASE WHEN growth_rate='Fast' THEN 'Yes' ELSE 'No' END AS is_fast
FROM Species;

-- 24. Join with conservation efforts
SELECT s.name, e.effort_name, e.start_date
FROM Species s
JOIN ConservationEfforts e ON s.name = e.species_name;

-- 25. All species with/without efforts
SELECT s.name, e.effort_name
FROM Species s LEFT JOIN ConservationEfforts e ON s.name=e.species_name;

-- 26. Species without efforts
SELECT name FROM Species
WHERE name NOT IN (SELECT species_name FROM ConservationEfforts);

-- 27. Most protected species (subquery)
SELECT * FROM Species
WHERE status = (SELECT status FROM Species GROUP BY status ORDER BY COUNT(*) DESC LIMIT 1);

-- 28. Latest effort per species
SELECT s.* FROM Species s
WHERE created_at = (
  SELECT MAX(created_at) FROM ConservationEfforts e WHERE e.species_name=s.name
);

-- 29. Create `EffortDetails` with FK cascade
CREATE TABLE EffortDetails (
  detail_id INT PRIMARY KEY,
  effort_id INT,
  description TEXT,
  FOREIGN KEY(effort_id) REFERENCES ConservationEfforts(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 30. Insert an effort detail
INSERT INTO EffortDetails VALUES (1, 1, 'Planting organized in 2025');

-- 31. Delete effort cascades deletion
DELETE FROM ConservationEfforts WHERE id=1;

-- 32. Update effort id cascades
UPDATE ConservationEfforts SET id=2 WHERE id=5;

-- 33. Rank species by use description length
SELECT id, name, LENGTH(common_uses) AS len_use,
RANK() OVER (ORDER BY LENGTH(common_uses) DESC) AS use_rank
FROM Species;  -- window functions overview :contentReference[oaicite:1]{index=1}

-- 34. Average use length by region (window)
SELECT id, native_region, LENGTH(common_uses) AS len_use,
AVG(LENGTH(common_uses)) OVER (PARTITION BY native_region) AS avg_len_region
FROM Species;  

-- 35. Difference from average within region
SELECT id, name, LENGTH(common_uses) AS len_use,
LENGTH(common_uses) - AVG(LENGTH(common_uses)) OVER (PARTITION BY native_region) AS diff
FROM Species; 

-- 36. List IDs recursively (example use)
WITH RECURSIVE seq AS (
  SELECT 1 AS n UNION ALL
  SELECT n + 1 FROM seq WHERE n < 5
)
SELECT * FROM seq; 

-- 37. Trace species introduction chain (hypothetical parent-child)
WITH RECURSIVE parent_chain AS (
  SELECT id, name, NULL AS parent_id FROM Species WHERE id=1
  UNION ALL
  SELECT s.id, s.name, pc.id
  FROM Species s JOIN parent_chain pc ON s.id = pc.parent_id
)
SELECT * FROM parent_chain;  

-- 38. Duplicate names list
SELECT name, COUNT(*) AS cnt FROM Species GROUP BY name HAVING cnt > 1;

-- 39. Active + Protected via UNION
SELECT * FROM Species WHERE status='Active'
UNION
SELECT * FROM Species WHERE status='Protected';

-- 40. Intersection of Fast and Least Concern
SELECT name FROM Species WHERE conservation_status='Least Concern';

-- 41. Exclude slow growers
SELECT * FROM Species WHERE growth_rate='Slow';

-- 42. Paginate species
SELECT * FROM Species ORDER BY id LIMIT 10 OFFSET 10;  

-- 43. Delete less-used species
DELETE FROM Species WHERE LENGTH(common_uses) < (SELECT AVG(LENGTH(common_uses)) FROM Species);

-- 44. Update rare status
UPDATE Species
SET status='Priority', updated_at=NOW()
WHERE conservation_status IN ('Rare','Vulnerable');

-- 45. CTE avg uses per status
WITH avg_uses AS (
  SELECT status, AVG(LENGTH(common_uses)) AS avg_len
  FROM Species GROUP BY status
)
SELECT s.*, a.avg_len
FROM Species s JOIN avg_uses a ON s.status = a.status;

-- 46. Flag species by use length
SELECT *,
CASE
 WHEN LENGTH(common_uses) > 50 THEN 'Rich'
 ELSE 'Basic'
END AS use_richness
FROM Species;

-- 47. Lead/Lag to compare textual length
SELECT id, name, LENGTH(common_uses) AS len_use,
LAG(LENGTH(common_uses)) OVER (ORDER BY id) AS prev_len,
LEAD(LENGTH(common_uses)) OVER (ORDER BY id) AS next_len
FROM Species;  

-- 48. Flag recent additions
SELECT *,
CASE WHEN created_at >= CURDATE() - INTERVAL 30 DAY THEN 'New' ELSE 'Old' END AS recency
FROM Species;

-- 49. Window COUNT per region
SELECT id, native_region,
COUNT(*) OVER (PARTITION BY native_region) AS region_cnt
FROM Species;  

-- 50. Update scientific names using CASE
UPDATE Species
SET scientific_name = CONCAT(scientific_name, ' (updated)'),
updated_at = NOW()
WHERE status='Protected';

-- Table 13: Nurseries
CREATE TABLE Nurseries (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    capacity INT,
    established_date DATE,
    manager VARCHAR(100),
    status VARCHAR(20),
    description TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO Nurseries (id, name, location, capacity, established_date, manager, status, description, created_at, updated_at) VALUES
(1, 'Green Leaf Nursery', 'Sundarbans Zone A1', 15000, '2010-06-01', 'Ravi Sharma', 'Active', 'Specializes in mangrove saplings and coastal species.', NOW(), NOW()),
(2, 'Teak Valley Nursery', 'Kanha Zone C3', 20000, '2012-03-15', 'Sneha Patil', 'Active', 'Major producer of teak, sal, and bamboo.', NOW(), NOW()),
(3, 'Eco Roots Nursery', 'Gir Forest Zone B2', 18000, '2014-08-10', 'Kiran Deshmukh', 'Active', 'Focus on dry deciduous forest species.', NOW(), NOW()),
(4, 'Wild Bloom Nursery', 'Kaziranga Zone D4', 12000, '2016-11-22', 'Anjali Nair', 'Active', 'Wetland and aquatic plants grown here.', NOW(), NOW()),
(5, 'Jungle Green Nursery', 'Periyar Zone E5', 16000, '2011-02-05', 'Rajeev Sharma', 'Active', 'Known for medicinal and sacred tree propagation.', NOW(), NOW()),
(6, 'Sapling Springs', 'Nagarhole Zone F1', 14000, '2013-05-18', 'Manish Tiwari', 'Active', 'Cultivates high-altitude and shade trees.', NOW(), NOW()),
(7, 'Forest Flora Centre', 'Bandipur Zone G2', 11000, '2010-09-01', 'Neha Kulkarni', 'Active', 'Supplies plants for afforestation drives.', NOW(), NOW()),
(8, 'Nature Grove Nursery', 'Dudhwa Zone H3', 9000, '2017-03-30', 'Tushar Jadhav', 'Active', 'Supports wildlife corridor greening.', NOW(), NOW()),
(9, 'Eco Nursery', 'Simlipal Zone I4', 13000, '2015-07-10', 'Divya Mishra', 'Active', 'Has a strong focus on tribal-used trees.', NOW(), NOW()),
(10, 'Melghat Roots Centre', 'Melghat Zone J5', 10000, '2011-12-01', 'Rohan Sawant', 'Active', 'Special nursery for reforestation projects.', NOW(), NOW()),
(11, 'Palamau Plantation Unit', 'Palamau Zone K6', 8500, '2012-10-12', 'Swati Shinde', 'Active', 'Rears native and drought-resistant trees.', NOW(), NOW()),
(12, 'Bhadra Biodiversity Nursery', 'Bhadra Zone L7', 17000, '2013-04-21', 'Rehan Ali', 'Active', 'Conserves rare and endangered species.', NOW(), NOW()),
(13, 'Satpura Seedling Centre', 'Satpura Zone M8', 9500, '2016-06-17', 'Arjun Singh', 'Active', 'Produces fast-growing plantation varieties.', NOW(), NOW()),
(14, 'Anamalai Greenhouse', 'Anamalai Zone N9', 14000, '2014-01-05', 'Sujata Kale', 'Active', 'Cultivation of shade and fruiting trees.', NOW(), NOW()),
(15, 'Silent Saplings', 'Silent Valley Zone O10', 8000, '2017-02-28', 'Kavita Singh', 'Active', 'Maintains heritage species of the Western Ghats.', NOW(), NOW()),
(16, 'Kanika Plantation Centre', 'Bhitar Kanika Zone P11', 12000, '2015-09-25', 'Maria Allen', 'Active', 'Mangrove and salt-tolerant sapling hub.', NOW(), NOW()),
(17, 'Nilgiri Eco Nursery', 'Nilgiri Hills Zone Q12', 15000, '2013-11-03', 'Farida Khan', 'Active', 'Focuses on hill species and flowering trees.', NOW(), NOW()),
(18, 'Koundinya Tree Centre', 'Koundinya Zone R13', 7000, '2016-04-12', 'Leonard Hall', 'Active', 'Helps in corridor reforestation programs.', NOW(), NOW()),
(19, 'Namdapha Nursery Unit', 'Namdapha Zone S14', 10500, '2011-07-19', 'Kanta Pawar', 'Active', 'Rare tree species and wet climate cultivation.', NOW(), NOW()),
(20, 'Sariska Green Nursery', 'Sariska Zone T15', 9800, '2014-03-11', 'Pawan Verma', 'Active', 'Produces trees for wildlife zone boundaries.', NOW(), NOW());

-- to display table data
select * from Nurseries;

-- to remove complete records from table
truncate table Nurseries;

-- to remove complete records and attributes from table
drop table Nurseries;

-- 1. Create the table
CREATE TABLE Nurseries (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  location VARCHAR(100),
  capacity INT,
  established_date DATE,
  manager VARCHAR(100),
  status VARCHAR(20),
  description TEXT,
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add 'region' column
ALTER TABLE Nurseries ADD region VARCHAR(50);

-- 3. Modify capacity precision
ALTER TABLE Nurseries MODIFY capacity BIGINT;

-- 4. Set NOT NULL on manager
ALTER TABLE Nurseries MODIFY manager VARCHAR(100) NOT NULL;

-- 5. Drop 'region'
ALTER TABLE Nurseries DROP COLUMN region;

-- 6. Rename table to `PlantNurseries`
ALTER TABLE Nurseries RENAME TO PlantNurseries;


-- 7. Insert one nursery
INSERT INTO PlantNurseries 
VALUES (21,'Herb Haven','Test Zone',5000,'2020-01-01','Dr. Test','Active','Herbal plants.',NOW(),NOW());

-- 8. Batch insert two
INSERT INTO PlantNurseries 
VALUES
(22,'Wild Saplings','Demo Zone',6000,'2021-05-10','Test Manager','Active','Wild species',NOW(),NOW()),
(23,'Green Test','Demo Zone',7000,'2022-09-15','Another','Active','Test region',NOW(),NOW());

-- 9. Update capacity
UPDATE PlantNurseries
SET capacity = capacity + 1000, updated_at = NOW()
WHERE id = 2;

-- 10. Mark old nurseries inactive
UPDATE PlantNurseries
SET status = 'Inactive', updated_at = NOW()
WHERE established_date < '2011-01-01';

-- 11. Delete single nursery
DELETE FROM PlantNurseries WHERE id = 23;

-- 12. Delete low-capacity (<8000)
DELETE FROM PlantNurseries WHERE capacity < 8000;

-- 13. Select all
SELECT * FROM PlantNurseries;

-- 14. Active nurseries
SELECT * FROM PlantNurseries WHERE status='Active';

-- 15. Capacity >15000
SELECT * FROM PlantNurseries WHERE capacity > 15000;

-- 16. Names starting with 'E'
SELECT name FROM PlantNurseries WHERE name LIKE 'E%';

-- 17. Count per location
SELECT location, COUNT(*) AS cnt
FROM PlantNurseries GROUP BY location;

-- 18. Earliest & latest established
SELECT MIN(established_date), MAX(established_date)
FROM PlantNurseries;

-- 19. Average capacity by status
SELECT status, AVG(capacity) AS avg_cap
FROM PlantNurseries GROUP BY status;

-- 20. Top 5 largest capacity
SELECT * FROM PlantNurseries ORDER BY capacity DESC LIMIT 5;

-- 21. Nurseries established this decade
SELECT * FROM PlantNurseries WHERE YEAR(established_date) BETWEEN 2010 AND 2020;

-- 22. Description length alias
SELECT id, LENGTH(description) AS desc_len
FROM PlantNurseries;

-- 23. COALESCE for status fallback
SELECT id, name, COALESCE(status,'Unknown') AS status_clean
FROM PlantNurseries;

-- 24. Join to get manager contact
SELECT n.*, m.phone
FROM PlantNurseries n
JOIN Managers m ON n.manager = m.name;

-- 25. List managers with no nurseries
SELECT m.name FROM Managers m
LEFT JOIN PlantNurseries n ON m.name = n.manager
WHERE n.id IS NULL;

-- 26. Nurseries with capacity above company average
SELECT *
FROM PlantNurseries
WHERE capacity > (SELECT AVG(capacity) FROM PlantNurseries);

-- 27. Largest per location (correlated subquery)
SELECT *
FROM PlantNurseries p1
WHERE capacity = (
  SELECT MAX(capacity)
  FROM PlantNurseries p2
  WHERE p2.location = p1.location
);

-- 28. Nurseries established longest ago
SELECT *
FROM PlantNurseries
ORDER BY established_date ASC;

-- 29. Create activities table with FK cascade
CREATE TABLE NurseryActivities (
  act_id INT PRIMARY KEY,
  nursery_id INT,
  activity_date DATE,
  description TEXT,
  FOREIGN KEY(nursery_id) REFERENCES PlantNurseries(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 30. Insert activity
INSERT INTO NurseryActivities VALUES (1,1,'2025-07-01','Planting event');

-- 31. Deleting nursery deletes activities automatically
DELETE FROM PlantNurseries WHERE id = 1;

-- 32. Updating nursery ID cascades
UPDATE PlantNurseries SET id = 5 WHERE id = 2;

-- 33. Rank by capacity within location
SELECT id,name,location,capacity,
RANK() OVER (PARTITION BY location ORDER BY capacity DESC) AS cap_rank
FROM PlantNurseries;  -- window functions intro :contentReference[oaicite:2]{index=2}

-- 34. Compute cumulative capacity by status
SELECT id,status,capacity,
SUM(capacity) OVER (PARTITION BY status ORDER BY established_date) AS cum_capacity
FROM PlantNurseries;  -- cumulative window :contentReference[oaicite:3]{index=3}

-- 35. Lag/Lead for capacity comparison
SELECT id,capacity,
LAG(capacity) OVER (ORDER BY established_date) AS prev_cap,
LEAD(capacity) OVER (ORDER BY established_date) AS next_cap
FROM PlantNurseries;  -- LAG/LEAD explained :contentReference[oaicite:4]{index=4}

-- 36. CTE – count per location
WITH loc_counts AS (
  SELECT location, COUNT(*) AS cnt
  FROM PlantNurseries GROUP BY location
)
SELECT * FROM loc_counts WHERE cnt > 1;

-- 37. Recursive CTE example: sequence 1–5
WITH RECURSIVE seq(n) AS (
  SELECT 1
  UNION ALL
  SELECT n+1 FROM seq WHERE n < 5
)
SELECT * FROM seq;  -- use of RECURSIVE :contentReference[oaicite:5]{index=5}

-- 38. Duplicate names detection
SELECT name, COUNT(*) AS cnt
FROM PlantNurseries GROUP BY name HAVING cnt > 1;

-- 39. Union statuses
SELECT id,name FROM PlantNurseries WHERE status='Active'
UNION
SELECT id,name FROM PlantNurseries WHERE status='Inactive';

-- 40. Intersection of large & active
SELECT name FROM PlantNurseries WHERE status='Active';

-- 41. Exclude low-capacity
SELECT * FROM PlantNurseries WHERE capacity < 8000;

-- 42. Paginate nurseries
SELECT * FROM PlantNurseries;

-- 43. Delete below-average capacity
DELETE FROM PlantNurseries
WHERE capacity < (SELECT AVG(capacity) FROM PlantNurseries);

-- 44. Flag old nurseries
UPDATE PlantNurseries
SET status = CASE WHEN established_date < '2015-01-01' THEN 'Legacy' ELSE status END,
    updated_at = NOW();

-- 45. CTE to add rank flag
WITH ranked AS (
  SELECT *, RANK() OVER (ORDER BY capacity DESC) AS rnk
  FROM PlantNurseries
)
SELECT id,name,capacity,rnk FROM ranked WHERE rnk <= 3;

-- 46. Lead to find capacity growth potential
SELECT id,name,capacity,
LEAD(capacity) OVER (ORDER BY capacity) - capacity AS growth_next
FROM PlantNurseries;  

-- 47. Recent vs older
SELECT *, CASE WHEN created_at >= CURDATE() - INTERVAL 365 DAY THEN 'New' ELSE 'Old' END AS age_flag
FROM PlantNurseries;

-- 48. Window count by manager
SELECT id, manager,
COUNT(*) OVER (PARTITION BY manager) AS mgr_count
FROM PlantNurseries;

-- 49. Conditional delete by region (using subquery)
DELETE FROM PlantNurseries
WHERE location IN (SELECT location FROM PlantNurseries GROUP BY location HAVING COUNT(*) < 2);

-- 50. Update description with CASE
UPDATE PlantNurseries
SET description = CASE
  WHEN capacity > 18000 THEN CONCAT(description, ' (High‑capacity)')
  ELSE description END,
  updated_at = NOW();

-- Table 14: RangerAssignments
CREATE TABLE RangerAssignments (
    id INT PRIMARY KEY,
    ranger_name VARCHAR(100),
    zone_assigned VARCHAR(100),
    start_date DATE,
    end_date DATE,
    shift VARCHAR(50),
    duty_type VARCHAR(100),
    status VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO RangerAssignments (id, ranger_name, zone_assigned, start_date, end_date, shift, duty_type, status, created_at, updated_at) VALUES
(1, 'Ravi Sharma', 'Sundarbans Zone A1', '2025-01-01', '2025-06-30', 'Morning', 'Patrol & Wildlife Monitoring', 'Active', NOW(), NOW()),
(2, 'Sneha Patil', 'Kanha Zone C3', '2025-03-01', '2025-09-01', 'Evening', 'Surveillance & Forest Security', 'Active', NOW(), NOW()),
(3, 'Kiran Deshmukh', 'Gir Forest Zone B2', '2024-12-15', '2025-06-15', 'Night', 'Anti-Poaching Patrol', 'Completed', NOW(), NOW()),
(4, 'Anjali Nair', 'Kaziranga Zone D4', '2025-02-01', '2025-08-01', 'Morning', 'Bird Survey Assistance', 'Active', NOW(), NOW()),
(5, 'Rajeev Sharma', 'Periyar Zone E5', '2025-01-10', '2025-07-10', 'Evening', 'Firewatch & Reporting', 'Active', NOW(), NOW()),
(6, 'Manish Tiwari', 'Nagarhole Zone F1', '2025-03-15', '2025-09-15', 'Night', 'Camera Trap Maintenance', 'Active', NOW(), NOW()),
(7, 'Neha Kulkarni', 'Bandipur Zone G2', '2025-04-01', '2025-10-01', 'Morning', 'Trail Inspection & Visitor Safety', 'Active', NOW(), NOW()),
(8, 'Tushar Jadhav', 'Dudhwa Zone H3', '2025-02-20', '2025-08-20', 'Evening', 'Wildlife Observation Logs', 'Active', NOW(), NOW()),
(9, 'Divya Mishra', 'Simlipal Zone I4', '2025-01-05', '2025-07-05', 'Morning', 'Medicinal Plant Survey', 'Active', NOW(), NOW()),
(10, 'Rohan Sawant', 'Melghat Zone J5', '2025-03-25', '2025-09-25', 'Night', 'Fire Response Unit', 'Active', NOW(), NOW()),
(11, 'Swati Shinde', 'Palamau Zone K6', '2025-04-10', '2025-10-10', 'Morning', 'Waterhole Monitoring', 'Active', NOW(), NOW()),
(12, 'Rehan Ali', 'Bhadra Zone L7', '2025-01-20', '2025-07-20', 'Evening', 'Drone Patrol Support', 'Active', NOW(), NOW()),
(13, 'Arjun Singh', 'Satpura Zone M8', '2025-02-05', '2025-08-05', 'Night', 'Night Watch & Animal Tracking', 'Active', NOW(), NOW()),
(14, 'Sujata Kale', 'Anamalai Zone N9', '2025-03-01', '2025-09-01', 'Morning', 'Plantation Protection', 'Active', NOW(), NOW()),
(15, 'Kavita Singh', 'Silent Valley Zone O10', '2025-02-18', '2025-08-18', 'Evening', 'Trail Maintenance & Guide Coordination', 'Active', NOW(), NOW()),
(16, 'Maria Allen', 'Bhitar Kanika Zone P11', '2025-01-25', '2025-07-25', 'Morning', 'Mangrove Health Check', 'Active', NOW(), NOW()),
(17, 'Farida Khan', 'Nilgiri Hills Zone Q12', '2025-03-10', '2025-09-10', 'Night', 'High Altitude Patrol', 'Active', NOW(), NOW()),
(18, 'Leonard Hall', 'Koundinya Zone R13', '2025-04-05', '2025-10-05', 'Morning', 'Corridor Wildlife Traffic Survey', 'Active', NOW(), NOW()),
(19, 'Kanta Pawar', 'Namdapha Zone S14', '2025-02-12', '2025-08-12', 'Evening', 'Rainforest Biodiversity Logging', 'Active', NOW(), NOW()),
(20, 'Pawan Verma', 'Sariska Zone T15', '2025-03-15', '2025-09-15', 'Night', 'Poacher Trap Surveillance', 'Active', NOW(), NOW());

-- to display table data
select * from RangerAssignments;

-- to remove complete records from table
truncate table RangerAssignments;

-- to remove complete records and attributes from table
drop table RangerAssignments;

-- 1. Create table
CREATE TABLE RangerAssignments (
    id INT PRIMARY KEY,
    ranger_name VARCHAR(100),
    zone_assigned VARCHAR(100),
    start_date DATE,
    end_date DATE,
    shift VARCHAR(50),
    duty_type VARCHAR(100),
    status VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME
);

-- 2. Add 'region' column
ALTER TABLE RangerAssignments ADD region VARCHAR(50);

-- 3. Modify shift length
ALTER TABLE RangerAssignments MODIFY shift VARCHAR(20);

-- 4. Set NOT NULL on ranger_name
ALTER TABLE RangerAssignments MODIFY ranger_name VARCHAR(100) NOT NULL;

-- 5. Drop 'region'
ALTER TABLE RangerAssignments DROP COLUMN region;

-- 6. Rename table to RangerDuty
ALTER TABLE RangerAssignments RENAME TO RangerDuty;

-- 7. Insert a new assignment
INSERT INTO RangerDuty 
VALUES (21, 'Test Ranger', 'Demo Zone', '2025-05-01', '2025-11-01', 'Afternoon', 'Test Patrol', 'Active', NOW(), NOW());

-- 8. Batch insert two entries
INSERT INTO RangerDuty  VALUES
(22,'Demo Ranger','Test Zone','2025-06-01','2025-12-01','Morning','Demo Duty','Active',NOW(),NOW()),
(23,'Sample Ranger','Test Zone','2025-07-01','2025-12-31','Night','Sample Duty','Planned',NOW(),NOW());

-- 9. Update status to 'Completed'
UPDATE RangerDuty SET status='Completed', updated_at=NOW() WHERE id=3;

-- 10. Extend end_date by 1 month for active duties
UPDATE RangerDuty
SET end_date = DATE_ADD(end_date, INTERVAL 1 MONTH), updated_at=NOW()
WHERE status = 'Active';

-- 11. Delete a test record
DELETE FROM RangerDuty WHERE id = 23;

-- 12. Remove past assignments ending before today
DELETE FROM RangerDuty WHERE end_date < CURDATE();

-- 13. Select all assignments
SELECT * FROM RangerDuty;

-- 14. Active assignments only
SELECT * FROM RangerDuty WHERE status='Active';

-- 15. Assignments in June 2025
SELECT * FROM RangerDuty WHERE MONTH(start_date)=6 AND YEAR(start_date)=2025;

-- 16. Distinct shifts
SELECT DISTINCT shift FROM RangerDuty;

-- 17. Count per shift
SELECT shift, COUNT(*) AS cnt FROM RangerDuty GROUP BY shift;

-- 18. Earliest and latest start dates
SELECT MIN(start_date), MAX(start_date) FROM RangerDuty;

-- 19. Average duty duration
SELECT AVG(DATEDIFF(end_date, start_date)) AS avg_days FROM RangerDuty;

-- 20. Long assignments (>180 days)
SELECT * FROM RangerDuty WHERE DATEDIFF(end_date, start_date) > 180;

-- 21. Rank duties by length (window function)
SELECT id, ranger_name, DATEDIFF(end_date,start_date) AS duration,
  RANK() OVER (ORDER BY DATEDIFF(end_date,start_date) DESC) AS dur_rank
FROM RangerDuty;  -- uses window functions :contentReference[oaicite:2]{index=2}

-- 22. Add previous assignment duration (LAG)
SELECT id, ranger_name, DATEDIFF(end_date,start_date) AS duration,
  LAG(DATEDIFF(end_date,start_date)) OVER (PARTITION BY ranger_name ORDER BY start_date) AS prev_dur
FROM RangerDuty;  -- uses window functions :contentReference[oaicite:3]{index=3}

-- 23. Count assignments per ranger (window)
SELECT id, ranger_name,
  COUNT(*) OVER (PARTITION BY ranger_name) AS duty_count
FROM RangerDuty;  -- uses window functions :contentReference[oaicite:4]{index=4}

-- 24. Recent vs older flags
SELECT *, CASE WHEN start_date >= CURDATE() - INTERVAL 30 DAY THEN 'Recent' ELSE 'Older' END AS recency
FROM RangerDuty;

-- 25. Fetch first 10 ordered by start_date
SELECT * FROM RangerDuty ORDER BY start_date DESC LIMIT 10;

-- 26. Join to get ranger rank
SELECT r.*, g.rank
FROM RangerDuty r
JOIN Rangers g ON r.ranger_name = g.name;

-- 27. Rangers without any assignments
SELECT g.name
FROM Rangers g
LEFT JOIN RangerDuty r ON g.name = r.ranger_name
WHERE r.id IS NULL;

-- 28. Duties longer than average (subquery)
SELECT * FROM RangerDuty
WHERE DATEDIFF(end_date, start_date) > (SELECT AVG(DATEDIFF(end_date, start_date)) FROM RangerDuty);

-- 29. Latest duty per ranger (correlated subquery)
SELECT r1.*
FROM RangerDuty r1
WHERE end_date = (
  SELECT MAX(end_date) FROM RangerDuty r2 WHERE r2.ranger_name = r1.ranger_name
);

-- 30. Active night shift count
SELECT COUNT(*) FROM RangerDuty WHERE status='Active' AND shift='Night';

-- 31. Create DutyLogs with FK cascade
CREATE TABLE DutyLogs (
  log_id INT PRIMARY KEY,
  assignment_id INT,
  log_date DATE,
  notes TEXT,
  FOREIGN KEY (assignment_id) REFERENCES RangerDuty(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 32. Insert a log
INSERT INTO DutyLogs VALUES (1,1,'2025-06-01','Patrol completed without incidents');

-- 33. Deleting assignment deletes logs
DELETE FROM RangerDuty WHERE id = 1;

-- 34. Updating id cascades to logs
UPDATE RangerDuty SET id = 5 WHERE id = 2;

-- 35. CTE with count per status
WITH stats AS (
 SELECT status, COUNT(*) AS cnt FROM RangerDuty GROUP BY status
)
SELECT * FROM stats WHERE cnt > 5;

-- 36. Recursive sequence generator
WITH RECURSIVE seq(n) AS (
  SELECT 1
  UNION ALL
  SELECT n+1 FROM seq WHERE n < 5
)
SELECT * FROM seq;  -- example of recursive CTE :contentReference[oaicite:6]{index=6}

-- 37. Duty chains recursion (hypothetical parent)
WITH RECURSIVE duty_chain AS (
  SELECT id, ranger_name, NULL AS parent_id FROM RangerDuty WHERE id=1
  UNION ALL
  SELECT d.id, d.ranger_name, dc.id
  FROM RangerDuty d JOIN duty_chain dc ON d.id = dc.parent_id
)
SELECT * FROM duty_chain;

-- 38. Duplicate rangers
SELECT ranger_name, COUNT(*) AS cnt FROM RangerDuty GROUP BY ranger_name HAVING cnt > 1;

-- 39. Union of active and completed
SELECT id,ranger_name FROM RangerDuty WHERE status='Active'
UNION
SELECT id,ranger_name FROM RangerDuty WHERE status='Completed';

-- 40. Intersection: Active night shift
SELECT id FROM RangerDuty WHERE shift='Night';

-- 41. Exclude short duties (<90 days)
SELECT * FROM RangerDuty WHERE DATEDIFF(end_date,start_date)<90;

-- 42. Paginate (offset)
SELECT * FROM RangerDuty ORDER BY id LIMIT 10 OFFSET 10;

-- 43. Delete duties ending today
DELETE FROM RangerDuty WHERE end_date = CURDATE();

-- 44. Flag long-duty (>180 days)
UPDATE RangerDuty
SET status = CASE WHEN DATEDIFF(end_date,start_date)>180 THEN 'Long' ELSE status END,
    updated_at = NOW();

-- 45. CTE ranking top 3 by duration
WITH ranked AS (
  SELECT *, RANK() OVER (ORDER BY DATEDIFF(end_date,start_date) DESC) AS rnk
  FROM RangerDuty
)
SELECT id,ranger_name,duty_type,rnk FROM ranked WHERE rnk <= 3;

-- 46. Lead to forecast next duty gap
SELECT id,ranger_name,start_date,
  LEAD(start_date) OVER (PARTITION BY ranger_name ORDER BY start_date) - start_date AS next_gap
FROM RangerDuty;

-- 47. Delete low-participation rangers (subquery)
DELETE FROM RangerDuty
WHERE ranger_name IN (
  SELECT ranger_name FROM RangerDuty GROUP BY ranger_name HAVING COUNT(*) < 2
);

-- 48. Identify upcoming assignments
SELECT * FROM RangerDuty WHERE start_date > CURDATE();

-- 49. Window COUNT per shift
SELECT shift, COUNT(*) OVER (PARTITION BY shift) AS shift_count FROM RangerDuty;

-- 50. Update description in DutyLogs using CASE (assuming logs table)
UPDATE DutyLogs SET notes = 
 CASE WHEN notes LIKE '%incident%' THEN CONCAT(notes,' [Flagged]')
 ELSE notes END;


-- Table 15: TrainingPrograms
CREATE TABLE TrainingPrograms (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    trainer VARCHAR(100),
    start_date DATE,
    end_date DATE,
    department VARCHAR(100),
    description TEXT,
    status VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO TrainingPrograms (id, title, trainer, start_date, end_date, department, description, status, created_at, updated_at) VALUES
(1, 'Wildlife Conservation Basics', 'Dr. Meena Rane', '2025-01-05', '2025-01-10', 'Wildlife Division', 'Introduction to conservation techniques and field ethics.', 'Completed', NOW(), NOW()),
(2, 'Forest Fire Management', 'Kiran Deshmukh', '2025-02-01', '2025-02-05', 'Disaster Response', 'Strategies and tools for handling forest fires.', 'Completed', NOW(), NOW()),
(3, 'Camera Trap Installation', 'Tushar Jadhav', '2025-03-10', '2025-03-12', 'Wildlife Division', 'Technical training on placing and maintaining camera traps.', 'Completed', NOW(), NOW()),
(4, 'Drone Operations for Surveillance', 'Rehan Ali', '2025-04-15', '2025-04-20', 'Technology Cell', 'Drone flying, safety, and data collection.', 'Completed', NOW(), NOW()),
(5, 'Eco-Tourism Guidelines', 'Anjali Nair', '2025-05-01', '2025-05-04', 'Tourism and Outreach', 'Best practices for eco-tourism and visitor handling.', 'Completed', NOW(), NOW()),
(6, 'Medicinal Plant Identification', 'Dr. Ramesh Bhat', '2025-06-10', '2025-06-14', 'Botany Research', 'Field training on identifying and documenting medicinal flora.', 'Ongoing', NOW(), NOW()),
(7, 'Legal Training on Forest Acts', 'Adv. Kavita Singh', '2025-07-05', '2025-07-08', 'Legal Cell', 'Key forest laws and ranger legal responsibilities.', 'Upcoming', NOW(), NOW()),
(8, 'First Aid and Emergency Response', 'Dr. Maria Allen', '2025-08-01', '2025-08-03', 'Medical Unit', 'Basic first aid and emergency management during field duty.', 'Upcoming', NOW(), NOW()),
(9, 'Habitat Restoration Techniques', 'Dr. Vikram Joshi', '2025-03-20', '2025-03-25', 'Ecology Division', 'Steps and methods to restore degraded forest areas.', 'Completed', NOW(), NOW()),
(10, 'Data Logging with GPS Devices', 'Leonard Hall', '2025-04-10', '2025-04-13', 'GIS & Mapping', 'Hands-on GPS tracking and data syncing.', 'Completed', NOW(), NOW()),
(11, 'Rainforest Biodiversity Study', 'Dr. Tina Harris', '2025-05-20', '2025-05-24', 'Research & Development', 'Identifying and recording rainforest species.', 'Completed', NOW(), NOW()),
(12, 'Anti-Poaching Patrol Strategy', 'Rajeev Sharma', '2025-06-15', '2025-06-18', 'Wildlife Protection', 'Designing and implementing anti-poaching patrol routes.', 'Ongoing', NOW(), NOW()),
(13, 'Sustainable Forestry Practices', 'Sujata Kale', '2025-07-10', '2025-07-14', 'Forest Management', 'Approaches for long-term forest productivity.', 'Upcoming', NOW(), NOW()),
(14, 'Public Engagement & Awareness', 'Farida Khan', '2025-08-20', '2025-08-22', 'Education & Outreach', 'Training rangers on conducting awareness campaigns.', 'Upcoming', NOW(), NOW()),
(15, 'Soil and Water Conservation', 'Rohan Sawant', '2025-01-20', '2025-01-24', 'Conservation Wing', 'Hands-on training on controlling erosion and runoff.', 'Completed', NOW(), NOW()),
(16, 'Bird Monitoring & Identification', 'Dr. Olivia Baker', '2025-02-25', '2025-02-28', 'Avian Division', 'Training on common and migratory bird identification.', 'Completed', NOW(), NOW()),
(17, 'Climate Change & Forests', 'Dr. Tina Harris', '2025-03-05', '2025-03-07', 'Climate Unit', 'Impact of climate change on forest ecosystems.', 'Completed', NOW(), NOW()),
(18, 'Ranger Fitness & Survival Skills', 'Lt. Arjun Singh', '2025-04-01', '2025-04-04', 'Training Command', 'Physical fitness and jungle survival basics.', 'Completed', NOW(), NOW()),
(19, 'Monitoring Tree Plantation Growth', 'Kanta Pawar', '2025-05-15', '2025-05-17', 'Plantation Cell', 'Recording and tracking sapling progress over time.', 'Completed', NOW(), NOW()),
(20, 'Rescue & Rehabilitation of Wildlife', 'Pawan Verma', '2025-06-20', '2025-06-24', 'Animal Welfare', 'Handling, first aid, and rehabilitation of injured wildlife.', 'Ongoing', NOW(), NOW());

-- to display table data
select * from TrainingPrograms;

-- to remove complete records from table
truncate table TrainingPrograms;

-- to remove complete records and attributes from table
drop table TrainingPrograms;

-- 1. Create TrainingPrograms table
CREATE TABLE TrainingPrograms (
  id INT PRIMARY KEY,
  title VARCHAR(100),
  trainer VARCHAR(100),
  start_date DATE,
  end_date DATE,
  department VARCHAR(100),
  description TEXT,
  status VARCHAR(20),
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add a 'location' column
ALTER TABLE TrainingPrograms ADD location VARCHAR(100);

-- 3. Modify title to NOT NULL
ALTER TABLE TrainingPrograms MODIFY title VARCHAR(100) NOT NULL;

-- 4. Drop description column
ALTER TABLE TrainingPrograms DROP COLUMN description;

-- 5. Change status length
ALTER TABLE TrainingPrograms MODIFY status VARCHAR(30);

-- 6. Rename table to ProgramSessions
ALTER TABLE TrainingPrograms RENAME TO ProgramSessions;

-- 7. Insert a new training
INSERT INTO ProgramSessions VALUES (21,'Forest Mapping','Dr. X','2025-09-01','2025-09-05','GIS','...', 'Upcoming', NOW(), NOW());

-- 8. Insert multiple sessions
INSERT INTO ProgramSessions  VALUES
(22,'River Ecology','Dr. Y','2025-10-01','2025-10-05','Ecology','...','Upcoming',NOW(),NOW()),
(23,'Wildlife Tracking','Dr. Z','2025-11-01','2025-11-04','Wildlife','...','Planned',NOW(),NOW());

-- 9. Mark completed sessions
UPDATE ProgramSessions SET status='Completed', updated_at=NOW() WHERE id IN (12,20);

-- 10. Extend end_date by a week for ongoing
UPDATE ProgramSessions 
SET end_date = DATE_ADD(end_date, INTERVAL 7 DAY), updated_at = NOW()
WHERE status = 'Ongoing';

-- 11. Delete a specific session
DELETE FROM ProgramSessions WHERE id = 23;

-- 12. Remove cancelled/upcoming sessions
DELETE FROM ProgramSessions WHERE status IN ('Cancelled','Planned');

-- 13. Show all sessions
SELECT * FROM ProgramSessions;

-- 14. Ongoing sessions
SELECT * FROM ProgramSessions WHERE status='Ongoing';

-- 15. Sessions in 2025
SELECT * FROM ProgramSessions WHERE YEAR(start_date)=2025;

-- 16. Count per department
SELECT department, COUNT(*) AS cnt
FROM ProgramSessions
GROUP BY department;

-- 17. Longest session durations
SELECT id,title, DATEDIFF(end_date,start_date) AS duration_days
FROM ProgramSessions
ORDER BY duration_days DESC;

-- 18. Average duration
SELECT AVG(DATEDIFF(end_date,start_date)) AS avg_duration FROM ProgramSessions;

-- 19. Rank sessions by duration
SELECT id, title, DATEDIFF(end_date,start_date) AS duration,
  RANK() OVER (ORDER BY DATEDIFF(end_date,start_date) DESC) AS dur_rank
FROM ProgramSessions;  

-- 20. Previous session’s duration per trainer
SELECT id, trainer, DATEDIFF(end_date,start_date) AS dur,
  LAG(DATEDIFF(end_date,start_date)) 
  OVER (PARTITION BY trainer ORDER BY start_date) AS prev_dur
FROM ProgramSessions;  

-- 21. Count sessions per trainer
SELECT trainer, COUNT(*) AS session_count
FROM ProgramSessions
GROUP BY trainer;

-- 22. Paginate sessions
SELECT * FROM ProgramSessions ORDER BY id LIMIT 10 OFFSET 10;  -- pagination :contentReference[oaicite:3]{index=3}

-- 23. Flag recent sessions
SELECT *, 
  CASE 
    WHEN created_at >= CURDATE() - INTERVAL 30 DAY THEN 'New' 
    ELSE 'Old' END AS recency
FROM ProgramSessions;

-- 24. Join to retrieve email
SELECT p.*, t.email
FROM ProgramSessions p
JOIN Trainers t ON p.trainer = t.name;

-- 25. Trainers without sessions
SELECT t.name
FROM Trainers t
LEFT JOIN ProgramSessions p ON p.trainer = t.name
WHERE p.id IS NULL;

-- 26. Sessions longer than average (subquery)
SELECT * FROM ProgramSessions
WHERE DATEDIFF(end_date,start_date) > (
  SELECT AVG(DATEDIFF(end_date,start_date)) FROM ProgramSessions
);

-- 27. Latest session per department
SELECT p1.* FROM ProgramSessions p1
WHERE start_date = (
  SELECT MAX(start_date) FROM ProgramSessions p2 WHERE p2.department = p1.department
);

-- 28. Count ongoing per department
SELECT department, COUNT(*) AS ongoing_sessions
FROM ProgramSessions
WHERE status='Ongoing'
GROUP BY department;

-- 29. Create session_materials with FK cascade
CREATE TABLE SessionMaterials (
  mat_id INT PRIMARY KEY,
  session_id INT,
  material_desc TEXT,
  FOREIGN KEY(session_id) REFERENCES ProgramSessions(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 30. Insert a material
INSERT INTO SessionMaterials VALUES (1,1,'Slides and handouts');

-- 31. Delete session cascades materials
DELETE FROM ProgramSessions WHERE id = 1;

-- 32. Update session id cascades
UPDATE ProgramSessions SET id = 5 WHERE id = 2;

-- 33. Count per status using CTE
WITH status_cte AS (
  SELECT status, COUNT(*) AS cnt
  FROM ProgramSessions
  GROUP BY status
)
SELECT * FROM status_cte WHERE cnt > 2;

-- 34. Generate numbers 1–5 using recursive CTE
WITH RECURSIVE seq(n) AS (
  SELECT 1
  UNION ALL
  SELECT n+1 FROM seq WHERE n < 5
)
SELECT * FROM seq;  -- recursive CTE :contentReference[oaicite:5]{index=5}

-- 35. Session hierarchy recursion (hypothetical)
WITH RECURSIVE rec_sessions AS (
  SELECT id, title, NULL AS parent_id FROM ProgramSessions WHERE id=1
  UNION ALL
  SELECT p.id, p.title, rs.id
  FROM ProgramSessions p
  JOIN rec_sessions rs ON p.id = rs.parent_id
)
SELECT * FROM rec_sessions;

-- 36. Trainers who did multiple sessions
SELECT trainer, COUNT(*) AS sessions
FROM ProgramSessions
GROUP BY trainer
HAVING sessions > 1;

-- 37. Union of ongoing and upcoming
SELECT * FROM ProgramSessions WHERE status='Ongoing'
UNION
SELECT * FROM ProgramSessions WHERE status='Upcoming';

-- 38. Intersection: Completed short sessions (<5 days)
SELECT id FROM ProgramSessions WHERE DATEDIFF(end_date,start_date) < 5;

-- 39. Exclude short sessions (<3 days)
SELECT * FROM ProgramSessions WHERE DATEDIFF(end_date,start_date) < 3;

-- 40. Delete sessions that ended today
DELETE FROM ProgramSessions WHERE end_date = CURDATE();

-- 41. Flag long-running
UPDATE ProgramSessions
SET status = CASE 
  WHEN DATEDIFF(end_date,start_date) > 10 THEN 'Extended' 
  ELSE status END,
  updated_at = NOW();

-- 42. Top 3 longest sessions using window + CTE
WITH ranked AS (
  SELECT *, RANK() OVER (ORDER BY DATEDIFF(end_date,start_date) DESC) AS rnk
  FROM ProgramSessions
)
SELECT id, title, rnk FROM ranked WHERE rnk <= 3;

-- 43. Forecast next session gap (using LEAD)
SELECT id, trainer, start_date,
  DATE_DIFF(
    LEAD(start_date) OVER (PARTITION BY trainer ORDER BY start_date),
    start_date, DAY) AS next_gap
FROM ProgramSessions;

-- 44. Delete trainers with few sessions
DELETE FROM ProgramSessions
WHERE trainer IN (
  SELECT trainer FROM ProgramSessions GROUP BY trainer HAVING COUNT(*) < 2
);

-- 45. Identify upcoming sessions
SELECT * FROM ProgramSessions WHERE start_date > CURDATE();

-- 46. Window count by department
SELECT department,
  COUNT(*) OVER (PARTITION BY department) AS dept_count
FROM ProgramSessions;

-- 47. Clean descriptions conditionally
UPDATE ProgramSessions
SET description = CASE
  WHEN status='Upcoming' THEN CONCAT(description,' [Prepare]')
  ELSE description END,
  updated_at = NOW();

-- 48. Delete archived sessions older than 2025
DELETE FROM ProgramSessions
WHERE status='Completed' AND end_date < '2025-01-01';

-- 49. Find overlapping sessions in same dept
SELECT p1.*
FROM ProgramSessions p1
JOIN ProgramSessions p2 ON p1.department = p2.department
  AND p1.id <> p2.id
  AND p1.start_date <= p2.end_date
  AND p2.start_date <= p1.end_date;

-- 50. Latest session per trainer with ROW_NUMBER()
SELECT id, title, trainer FROM (
  SELECT *,
    ROW_NUMBER() 
      OVER (PARTITION BY trainer ORDER BY start_date DESC) AS rn
  FROM ProgramSessions
) t WHERE rn = 1;  -- window functions :contentReference[oaicite:6]{index=6}


-- Table 16: EcoTourismSpots
CREATE TABLE EcoTourismSpots (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    description TEXT,
    activities TEXT,
    entry_fee DECIMAL(10,2),
    contact VARCHAR(50),
    status VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO EcoTourismSpots (id, name, location, description, activities, entry_fee, contact, status, created_at, updated_at) VALUES
(1, 'Mangrove Walkway', 'Sundarbans Zone A1', 'Scenic wooden path through dense mangrove forest.', 'Bird watching, nature walk', 150.00, '9830012345', 'Open', NOW(), NOW()),
(2, 'Kanha Safari Point', 'Kanha Zone C3', 'Popular jeep safari zone for tiger sightings.', 'Jeep safari, photography', 500.00, '9823456789', 'Open', NOW(), NOW()),
(3, 'Gir Interpretation Centre', 'Gir Forest Zone B2', 'Education center on lion conservation and Gir ecosystem.', 'Exhibits, short films, guided tours', 100.00, '9901122334', 'Open', NOW(), NOW()),
(4, 'Kaziranga Watch Tower', 'Kaziranga Zone D4', 'Elevated deck for observing rhinos and elephants.', 'Wildlife viewing, binocular rental', 80.00, '9988776655', 'Open', NOW(), NOW()),
(5, 'Periyar Bamboo Rafting', 'Periyar Zone E5', 'Eco-adventure rafting through forest waters.', 'Rafting, trekking, bamboo boat ride', 750.00, '9812345670', 'Open', NOW(), NOW()),
(6, 'Nagarhole Nature Trail', 'Nagarhole Zone F1', 'Marked trail through lush terrain and dense trees.', 'Guided trekking, wildlife spotting', 120.00, '9800011223', 'Open', NOW(), NOW()),
(7, 'Bandipur Forest Camp', 'Bandipur Zone G2', 'Eco-friendly tent camping with guided activities.', 'Camping, night safari, bonfire', 900.00, '9876543210', 'Open', NOW(), NOW()),
(8, 'Dudhwa Birding Spot', 'Dudhwa Zone H3', 'Ideal wetland area for migratory and resident birds.', 'Bird watching, photography', 60.00, '9811223344', 'Open', NOW(), NOW()),
(9, 'Simlipal Trekking Base', 'Simlipal Zone I4', 'Entry point for forest hiking trails.', 'Hiking, waterfall visits, tribal village tours', 250.00, '9765432101', 'Open', NOW(), NOW()),
(10, 'Melghat Viewpoint', 'Melghat Zone J5', 'Cliff-top viewpoint offering forest panorama.', 'Photography, nature walk', 70.00, '9834678920', 'Open', NOW(), NOW()),
(11, 'Palamau Jungle Lodge', 'Palamau Zone K6', 'Stay within reserve area with guided safaris.', 'Wildlife safari, tribal cultural shows', 600.00, '9900987766', 'Open', NOW(), NOW()),
(12, 'Bhadra Backwaters', 'Bhadra Zone L7', 'Backwater boat rides in serene forest setting.', 'Boating, birding, picnic', 200.00, '9123456780', 'Open', NOW(), NOW()),
(13, 'Satpura River Cruise', 'Satpura Zone M8', 'Slow cruise through Satpura’s river ecosystem.', 'Cruise, crocodile spotting, sunset view', 400.00, '9800765432', 'Open', NOW(), NOW()),
(14, 'Anamalai Elephant Camp', 'Anamalai Zone N9', 'Elephant interaction center with ethical tourism.', 'Feeding, bathing, education programs', 300.00, '9822334455', 'Open', NOW(), NOW()),
(15, 'Silent Valley Eco Trail', 'Silent Valley Zone O10', 'Peaceful walking route inside core forest area.', 'Guided walk, flora and fauna observation', 100.00, '9977889900', 'Open', NOW(), NOW()),
(16, 'Kanika Mangrove Canoeing', 'Bhitar Kanika Zone P11', 'Canoe paddling between mangrove channels.', 'Canoeing, wildlife spotting', 500.00, '9345678123', 'Open', NOW(), NOW()),
(17, 'Nilgiri Hilltop Camp', 'Nilgiri Hills Zone Q12', 'Tent-based camping with valley views.', 'Camping, stargazing, local cuisine', 850.00, '9812233445', 'Open', NOW(), NOW()),
(18, 'Koundinya Forest Retreat', 'Koundinya Zone R13', 'Eco-lodging with access to waterfall trails.', 'Relaxation, nature meditation, waterfall visit', 300.00, '9767895432', 'Open', NOW(), NOW()),
(19, 'Namdapha Wilderness Hike', 'Namdapha Zone S14', 'Long guided hike through rich rainforest habitat.', 'Trekking, herpetology, biodiversity walks', 700.00, '9856743210', 'Open', NOW(), NOW()),
(20, 'Sariska Tiger Watch Deck', 'Sariska Zone T15', 'Overlook for tiger and leopard sightings.', 'Wildlife spotting, photography', 150.00, '9789012345', 'Open', NOW(), NOW());

-- to display table data
select * from EcoTourismSpots;

-- to remove complete records from table
truncate table EcoTourismSpots;

-- to remove complete records and attributes from table
drop table EcoTourismSpots;

-- 1. Create table
CREATE TABLE EcoTourismSpots (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  location VARCHAR(100),
  description TEXT,
  activities TEXT,
  entry_fee DECIMAL(10,2),
  contact VARCHAR(50),
  status VARCHAR(20),
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add 'region' column
ALTER TABLE EcoTourismSpots ADD region VARCHAR(50);

-- 3. Change entry_fee precision
ALTER TABLE EcoTourismSpots MODIFY entry_fee DECIMAL(12,2);

-- 4. Make name NOT NULL
ALTER TABLE EcoTourismSpots MODIFY name VARCHAR(100) NOT NULL;

-- 5. Drop region
ALTER TABLE EcoTourismSpots DROP COLUMN region;

-- 6. Rename table for clarity
ALTER TABLE EcoTourismSpots RENAME TO TourismSpots;

-- 7. Insert a new spot
INSERT INTO TourismSpots VALUES
(21, 'Forest Canopy Walk', 'Demo Zone', 'Elevated walkway among trees.', 'Walk, birding', 250.00, '9000000000', 'Open', NOW(), NOW());

-- 8. Insert multiple spots
INSERT INTO TourismSpots VALUES
(22, 'River Edge Point', 'Demo Valley', 'Riverside spot.', 'Boating, photog.', 300.00, '9111111111', 'Open', NOW(), NOW()),
(23, 'Mountain View Deck', 'Demo Hills', 'Panoramic vista', 'Photography, trekking', 350.00, '9222222222', 'Open', NOW(), NOW());

-- 9. Update entry fee
UPDATE TourismSpots SET entry_fee = entry_fee * 1.10, updated_at = NOW() WHERE id = 2;

-- 10. Mark some spots closed
UPDATE TourismSpots SET status='Closed', updated_at=NOW() WHERE entry_fee > 700;

-- 11. Delete a demo record
DELETE FROM TourismSpots WHERE id = 23;

-- 12. Remove low‑fee spots
DELETE FROM TourismSpots WHERE entry_fee < 100.00;

-- 13. View all records
SELECT * FROM TourismSpots;

-- 14. Spots in 'Zone A1'
SELECT * FROM TourismSpots WHERE location LIKE '%Zone A1%';

-- 15. Count by status
SELECT status, COUNT(*) AS cnt FROM TourismSpots GROUP BY status;

-- 16. Average fee
SELECT AVG(entry_fee) AS avg_fee FROM TourismSpots;

-- 17. Top expensive spots
SELECT * FROM TourismSpots ORDER BY entry_fee DESC LIMIT 5;

-- 18. Spots with rivers or lakes in description
SELECT id, name FROM TourismSpots WHERE description LIKE '%river%' OR description LIKE '%lake%';

-- 19. Alias on activities count
SELECT id, name, CHAR_LENGTH(activities) AS act_len FROM TourismSpots;

-- 20. Fees above average
SELECT * FROM TourismSpots WHERE entry_fee > (SELECT AVG(entry_fee) FROM TourismSpots);

-- 21. Distinct locations
SELECT DISTINCT location FROM TourismSpots;

-- 22. Fee formatted
SELECT id, name, FORMAT(entry_fee,2) AS fee_str FROM TourismSpots;

-- 23. Recent entries
SELECT * FROM TourismSpots WHERE created_at >= CURDATE() - INTERVAL 30 DAY;

-- 24. Join for zone manager
SELECT t.*, z.manager
FROM TourismSpots t
JOIN Zones z ON t.location = z.zone_name;

-- 25. Zones with no tourism spots
SELECT z.zone_name
FROM Zones z
LEFT JOIN TourismSpots t ON t.location = z.zone_name
WHERE t.id IS NULL;

-- 26. Spots more expensive than average in region
SELECT * FROM TourismSpots
WHERE entry_fee > (
  SELECT AVG(entry_fee) FROM TourismSpots
  WHERE location = TourismSpots.location
);

-- 27. Highest fee per location
SELECT t1.*
FROM TourismSpots t1
WHERE entry_fee = (
  SELECT MAX(entry_fee)
  FROM TourismSpots t2
  WHERE t2.location = t1.location
);

-- 28. Count open status per location
SELECT location, COUNT(*) AS open_spots
FROM TourismSpots
WHERE status='Open'
GROUP BY location;

-- 29. Create bookings associated with spot
CREATE TABLE SpotBookings (
  booking_id INT PRIMARY KEY,
  spot_id INT,
  booking_date DATE,
  visitor_name VARCHAR(100),
  FOREIGN KEY (spot_id) REFERENCES TourismSpots(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 30. Add a booking
INSERT INTO SpotBookings VALUES (1,1,'2025-07-20','Guest A');

-- 31. Deleting a spot removes its bookings
DELETE FROM TourismSpots WHERE id = 1;

-- 32. If we update spot id, bookings update too
UPDATE TourismSpots SET id = 2 WHERE id = 5;

-- 33. Rank spots by fee per location
SELECT id, location, entry_fee,
  RANK() OVER (PARTITION BY location ORDER BY entry_fee DESC) AS fee_rank
FROM TourismSpots;  

-- 34. Average fee by status window
SELECT id, status, entry_fee,
  AVG(entry_fee) OVER (PARTITION BY status) AS avg_fee_status
FROM TourismSpots;  

-- 35. LAG to compare previous fee
SELECT id, entry_fee,
  LAG(entry_fee) OVER (ORDER BY created_at) AS prev_fee
FROM TourismSpots; 

-- 36. CTE for count per status
WITH status_counts AS (
  SELECT status, COUNT(*) AS cnt
  FROM TourismSpots
  GROUP BY status
)
SELECT * FROM status_counts WHERE cnt > 1;


-- 37. Generate sequence 1 to 5 (example recursive CTE)
WITH RECURSIVE seq(n) AS (
  SELECT 1
  UNION ALL
  SELECT n+1 FROM seq WHERE n < 5
)
SELECT * FROM seq;  

-- 38.
WITH RECURSIVE spot_chain AS (
  SELECT id, name, NULL AS parent_id FROM TourismSpots WHERE id=1
  UNION ALL
  SELECT t.id, t.name, sc.id
  FROM TourismSpots t
  JOIN spot_chain sc ON t.id = sc.parent_id
)
SELECT * FROM spot_chain; 

-- 39. Open + upcoming via UNION
SELECT * FROM TourismSpots WHERE status='Open'
UNION
SELECT * FROM TourismSpots WHERE status='Upcoming';

-- 40. Intersection of high-fee and open spots
SELECT id FROM TourismSpots WHERE entry_fee > 500;

-- 41. Exclude budget spots (<200)
SELECT * FROM TourismSpots WHERE entry_fee < 200;

-- 42. Paginate results
SELECT * FROM TourismSpots ORDER BY id LIMIT 10 OFFSET 10;

-- 43. Delete spots added more than two years ago
DELETE FROM TourismSpots WHERE created_at < CURDATE() - INTERVAL 2 YEAR;

-- 44. Flag premium spots
UPDATE TourismSpots
SET status = CASE
  WHEN entry_fee > 700 THEN 'Premium'
  ELSE status END, updated_at = NOW();

-- 45. Top 3 expensive spots per location via CTE+window
WITH ranked_spots AS (
  SELECT *, RANK() OVER (PARTITION BY location ORDER BY entry_fee DESC) AS rnk
  FROM TourismSpots
)
SELECT id,name,location,entry_fee FROM ranked_spots WHERE rnk <= 3;

-- 46. Predict next entry fee gap using LEAD
SELECT id, entry_fee,
  LEAD(entry_fee) OVER (ORDER BY entry_fee) - entry_fee AS next_gap
FROM TourismSpots;

-- 47. Delete locations with only one spot
DELETE FROM TourismSpots
WHERE location IN (
  SELECT location FROM TourismSpots GROUP BY location HAVING COUNT(*) < 2
);

-- 48. Upcoming vs mature spots based on creation date
SELECT *, CASE WHEN created_at >= CURDATE() - INTERVAL 365 DAY THEN 'New' ELSE 'Old' END AS maturity
FROM TourismSpots;

-- 49. Count per location using window
SELECT location, COUNT(*) OVER (PARTITION BY location) AS location_count
FROM TourismSpots;

-- 50. Remove outdated statuses
UPDATE TourismSpots
SET status='Closed', updated_at=NOW()
WHERE status='Open' AND created_at < CURDATE() - INTERVAL 3 YEAR;

-- Table 17: CheckPosts
CREATE TABLE CheckPosts (
    id INT PRIMARY KEY,
    location VARCHAR(100),
    post_type VARCHAR(50),
    staff_count INT,
    equipment_available TEXT,
    contact VARCHAR(20),
    status VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME,
    supervisor_name VARCHAR(100)
);

-- Insert 20 sample records
INSERT INTO CheckPosts (id, location, post_type, staff_count, equipment_available, contact, status, created_at, updated_at, supervisor_name) VALUES
(1, 'Sundarbans Zone A1 Entrance', 'Border', 6, 'Radio, Torch, GPS, Rifle', '9830012345', 'Active', NOW(), NOW(), 'Ravi Sharma'),
(2, 'Kanha Gate 2', 'Entry', 5, 'Torch, Map, Camera', '9823456789', 'Active', NOW(), NOW(), 'Sneha Patil'),
(3, 'Gir South Gate', 'Patrol', 4, 'GPS, Binoculars, First Aid', '9901122334', 'Active', NOW(), NOW(), 'Kiran Deshmukh'),
(4, 'Kaziranga Watch Tower Base', 'Observation', 3, 'Binoculars, Walkie Talkie', '9988776655', 'Active', NOW(), NOW(), 'Anjali Nair'),
(5, 'Periyar Back Gate', 'Surveillance', 5, 'Rifle, Map, Binoculars', '9812345670', 'Active', NOW(), NOW(), 'Rajeev Sharma'),
(6, 'Nagarhole Entry Post 1', 'Entry', 4, 'GPS, Torch, Rifle', '9800011223', 'Active', NOW(), NOW(), 'Manish Tiwari'),
(7, 'Bandipur Eastern Post', 'Fire Watch', 3, 'Fire Extinguisher, Helmet, Boots', '9876543210', 'Active', NOW(), NOW(), 'Neha Kulkarni'),
(8, 'Dudhwa South Checkpoint', 'Border', 6, 'GPS, Rifle, Medical Kit', '9811223344', 'Active', NOW(), NOW(), 'Tushar Jadhav'),
(9, 'Simlipal Waterfall Entry', 'Tourist', 2, 'Radio, ID Scanner', '9765432101', 'Active', NOW(), NOW(), 'Divya Mishra'),
(10, 'Melghat Patrol Base', 'Patrol', 5, 'First Aid, Camera, Map', '9834678920', 'Active', NOW(), NOW(), 'Rohan Sawant'),
(11, 'Palamau Wildlife Entry', 'Entry', 4, 'Binoculars, Torch, Notebook', '9900987766', 'Active', NOW(), NOW(), 'Swati Shinde'),
(12, 'Bhadra Check Gate', 'Surveillance', 5, 'Rifle, Water Tank, GPS', '9123456780', 'Active', NOW(), NOW(), 'Rehan Ali'),
(13, 'Satpura Hill Post', 'Fire Watch', 3, 'Fire Retardant, Boots', '9800765432', 'Active', NOW(), NOW(), 'Arjun Singh'),
(14, 'Anamalai Western Post', 'Patrol', 4, 'Map, Binoculars, Rifle', '9822334455', 'Active', NOW(), NOW(), 'Sujata Kale'),
(15, 'Silent Valley North Gate', 'Observation', 2, 'Camera, GPS, Notebook', '9977889900', 'Active', NOW(), NOW(), 'Kavita Singh'),
(16, 'Kanika Delta Post', 'Coastal Patrol', 4, 'Canoe, Life Jackets, Radio', '9345678123', 'Active', NOW(), NOW(), 'Maria Allen'),
(17, 'Nilgiri Hilltop Post', 'Patrol', 3, 'Rope, Binoculars, First Aid', '9812233445', 'Active', NOW(), NOW(), 'Farida Khan'),
(18, 'Koundinya Trail Guard Post', 'Tourist', 2, 'Torch, Walkie Talkie', '9767895432', 'Active', NOW(), NOW(), 'Leonard Hall'),
(19, 'Namdapha River Post', 'Surveillance', 4, 'Canoe, GPS, Rifle', '9856743210', 'Active', NOW(), NOW(), 'Kanta Pawar'),
(20, 'Sariska Checkpoint Alpha', 'Entry', 5, 'ID Scanner, Radio, Map', '9789012345', 'Active', NOW(), NOW(), 'Pawan Verma');

-- to display table data
select * from CheckPosts;

-- to remove complete records from table
truncate table CheckPosts;

-- to remove complete records and attributes from table
drop table CheckPosts;

-- 1. Create table
CREATE TABLE CheckPosts (
    id INT PRIMARY KEY,
    location VARCHAR(100),
    post_type VARCHAR(50),
    staff_count INT,
    equipment_available TEXT,
    contact VARCHAR(20),
    status VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME,
    supervisor_name VARCHAR(100)
);

-- 2. Add region column
ALTER TABLE CheckPosts ADD region VARCHAR(50);

-- 3. Modify contact to NOT NULL
ALTER TABLE CheckPosts MODIFY contact VARCHAR(20) NOT NULL;

-- 4. Change staff_count precision
ALTER TABLE CheckPosts MODIFY staff_count SMALLINT;

-- 5. Drop region column
ALTER TABLE CheckPosts DROP COLUMN region;

-- 6. Rename table to PostStations
ALTER TABLE CheckPosts RENAME TO PostStations;

-- 7. Insert a new post
INSERT INTO PostStations  VALUES
(21, 'Demo Post', 'Entry', 3, 'Radio, Torch', '9000000000', 'Active', NOW(), NOW(), 'Test Supervisor');

-- 8. Insert multiple posts
INSERT INTO PostStations VALUES
(22, 'Test Base', 'Patrol', 4, 'GPS, Radio', '9111111111', 'Active', NOW(), NOW(), 'Test Lead'),
(23, 'Sample Watch', 'Observation', 2, 'Binoculars', '9222222222', 'Inactive', NOW(), NOW(), 'Sample Supervisor');

-- 9. Increase staff by 2 at large posts
UPDATE PostStations
SET staff_count = staff_count + 2, updated_at = NOW()
WHERE staff_count > 5;

-- 10. Mark inactive posts as closed
UPDATE PostStations
SET status = 'Closed', updated_at = NOW()
WHERE status = 'Inactive';

-- 11. Delete demo record
DELETE FROM PostStations WHERE id = 23;

-- 12. Remove low-staff (<3)
DELETE FROM PostStations WHERE staff_count < 3;

-- 13. List all posts
SELECT * FROM PostStations;

-- 14. Active posts only
SELECT * FROM PostStations WHERE status='Active';

-- 15. Border posts with >5 staff
SELECT * FROM PostStations WHERE post_type='Border' AND staff_count > 5;

-- 16. Distinct post types
SELECT DISTINCT post_type FROM PostStations;

-- 17. Count by supervisor
SELECT supervisor_name, COUNT(*) AS cnt
FROM PostStations GROUP BY supervisor_name;

-- 18. Max/min staff count
SELECT MAX(staff_count) AS max_staff, MIN(staff_count) AS min_staff FROM PostStations;

-- 19. Average staff per type
SELECT post_type, ROUND(AVG(staff_count),2) AS avg_staff
FROM PostStations GROUP BY post_type;

-- 20. List recent entries
SELECT * FROM PostStations
WHERE created_at > DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- 21. Contact masked
SELECT id, LEFT(contact,3) AS contact_mask, post_type FROM PostStations;

-- 22. Equipment includes 'GPS'
SELECT * FROM PostStations WHERE equipment_available LIKE '%GPS%';

-- 23. Active & updated recently
SELECT id, status, updated_at
FROM PostStations
WHERE status='Active' AND updated_at >= CURDATE() - INTERVAL 7 DAY;

-- 24. Join to get supervisor contact
SELECT p.*, s.phone
FROM PostStations p
JOIN Supervisors s ON p.supervisor_name = s.name;

-- 25. Supervisors with no posts
SELECT s.name
FROM Supervisors s
LEFT JOIN PostStations p ON s.name = p.supervisor_name
WHERE p.id IS NULL;

-- 26. Posts with staff above average
SELECT * FROM PostStations
WHERE staff_count > (SELECT AVG(staff_count) FROM PostStations);

-- 27. Largest post per type
SELECT p1.* FROM PostStations p1
WHERE staff_count = (
  SELECT MAX(staff_count) FROM PostStations p2 WHERE p2.post_type = p1.post_type
);

-- 28. Count active per post type
SELECT post_type, COUNT(*) AS active_count
FROM PostStations
WHERE status = 'Active'
GROUP BY post_type;

-- 29. Create Logs with FK cascade
CREATE TABLE PostLogs (
  log_id INT PRIMARY KEY,
  post_id INT,
  log_time DATETIME,
  notes TEXT,
  FOREIGN KEY(post_id) REFERENCES PostStations(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 30. Add a log
INSERT INTO PostLogs VALUES (1,1,NOW(),'Routine check');

-- 31. Delete post cascades logs
DELETE FROM PostStations WHERE id = 1;

-- 32. Update id cascades
UPDATE PostStations SET id = 5 WHERE id = 2;

-- 33. Rank by staff per type
SELECT id, post_type, staff_count,
  RANK() OVER (PARTITION BY post_type ORDER BY staff_count DESC) AS staff_rank
FROM PostStations;  -- window function ([turn0search2], [turn0search14])

-- 34. Lead to show next post staff count
SELECT id, staff_count,
  LEAD(staff_count) OVER (ORDER BY staff_count) AS next_staff
FROM PostStations;  -- LEAD function explained ([turn0search0], [turn0search6])

-- 35. Lag to compare with previous
SELECT id, staff_count,
  LAG(staff_count) OVER (ORDER BY staff_count) AS prev_staff
FROM PostStations;  

-- 36. Count per status
WITH status_cte AS (
  SELECT status, COUNT(*) AS cnt FROM PostStations GROUP BY status
)
SELECT * FROM status_cte WHERE cnt > 1;

-- 37. Recursive number generator
WITH RECURSIVE seq(n) AS (
  SELECT 1
  UNION ALL
  SELECT n+1 FROM seq WHERE n < 5
)
SELECT * FROM seq;  -- recursive CTE usage ([turn0search3], [turn0search7], [turn0search11])

-- 38. Hypothetical parent-child traversal
WITH RECURSIVE post_hierarchy AS (
  SELECT id, supervisor_name, NULL AS parent_id FROM PostStations WHERE id = 1
  UNION ALL
  SELECT p.id, p.supervisor_name, ph.id
  FROM PostStations p JOIN post_hierarchy ph ON p.id = ph.parent_id
)
SELECT * FROM post_hierarchy;  -- recursive CTE explained ([turn0search20])

-- 39. Union of active & closed
SELECT * FROM PostStations WHERE status='Active'
UNION
SELECT * FROM PostStations WHERE status='Closed';

-- 40. Intersection: patrol posts with >3 staff
SELECT id FROM PostStations WHERE staff_count > 3;

-- 41. Exclude small posts
SELECT * FROM PostStations WHERE staff_count < 3;

-- 42. Pagination
SELECT * FROM PostStations ORDER BY id LIMIT 10 OFFSET 10;

-- 43. Delete older entries (year-old)
DELETE FROM PostStations WHERE created_at < CURDATE() - INTERVAL 1 YEAR;

-- 44. Flag busy posts
UPDATE PostStations
SET status = CASE WHEN staff_count > 5 THEN 'Busy' ELSE status END,
    updated_at = NOW();

-- 45. Top 3 staff-heavy per type
WITH ranked_posts AS (
  SELECT *, RANK() OVER (PARTITION BY post_type ORDER BY staff_count DESC) AS rnk
  FROM PostStations
)
SELECT id, post_type, staff_count FROM ranked_posts WHERE rnk <= 3;

-- 46. Predict staff gap with LAG
SELECT id, staff_count,
  staff_count - LAG(staff_count) OVER (ORDER BY id) AS diff_from_prev
FROM PostStations;

-- 47. Cleanup underused posts by type
DELETE FROM PostStations
WHERE post_type IN (
  SELECT post_type FROM PostStations GROUP BY post_type HAVING AVG(staff_count) < 4
);

-- 48. Identify new posts
SELECT *, 
  CASE WHEN created_at >= CURDATE() - INTERVAL 30 DAY THEN 'New' ELSE 'Old' END AS recency
FROM PostStations;

-- 49. Count posts per supervisor using window
SELECT supervisor_name,
  COUNT(*) OVER (PARTITION BY supervisor_name) AS sup_count
FROM PostStations;

-- 50. Remove outdated active posts
UPDATE PostStations
SET status = 'Inactive', updated_at=NOW()
WHERE status='Active' AND created_at < CURDATE() - INTERVAL 3 YEAR;


-- Table 18: EquipmentInventory
CREATE TABLE EquipmentInventory (
    id INT PRIMARY KEY,
    item_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    purchase_date DATE,
    cost DECIMAL(10,2),
    supplier VARCHAR(100),
    conditions VARCHAR(50),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO EquipmentInventory (id, item_name, category, quantity, purchase_date, cost, supplier, conditions, created_at, updated_at) VALUES
(1, 'Binoculars Nikon Aculon', 'Optics', 20, '2024-05-10', 4500.00, 'OptiTech India', 'New', NOW(), NOW()),
(2, 'GPS Garmin eTrex 32x', 'Navigation', 10, '2024-06-01', 9800.00, 'GeoTrack Solutions', 'New', NOW(), NOW()),
(3, 'Bushnell Trail Camera', 'Surveillance', 15, '2024-04-15', 7200.00, 'WildCam Pvt Ltd', 'Good', NOW(), NOW()),
(4, 'Fire Extinguisher 6kg', 'Safety', 30, '2023-11-22', 2100.00, 'SafeZone Supplies', 'Good', NOW(), NOW()),
(5, 'Rain Jackets', 'Apparel', 50, '2024-02-12', 600.00, 'TrekWear Co.', 'New', NOW(), NOW()),
(6, 'Torch LED Tactical', 'Lighting', 40, '2024-01-18', 850.00, 'LightCraft Traders', 'Good', NOW(), NOW()),
(7, 'First Aid Kit', 'Medical', 35, '2024-03-05', 1250.00, 'MediBox Supplies', 'New', NOW(), NOW()),
(8, 'Walkie Talkie Motorola T82', 'Communication', 20, '2024-05-01', 5600.00, 'CommLine Electronics', 'New', NOW(), NOW()),
(9, 'Drone DJI Mavic Mini 2', 'Surveillance', 5, '2024-06-10', 45000.00, 'SkyView Technologies', 'New', NOW(), NOW()),
(10, 'Rope Climbing Gear Set', 'Climbing', 10, '2023-09-28', 3200.00, 'ForestEquip India', 'Fair', NOW(), NOW()),
(11, 'Digital Thermometers', 'Medical', 25, '2024-04-08', 300.00, 'HealthTech Traders', 'New', NOW(), NOW()),
(12, 'Steel Water Bottles', 'Utility', 100, '2024-01-10', 250.00, 'Hydrate Co.', 'New', NOW(), NOW()),
(13, 'Solar Lanterns', 'Lighting', 30, '2023-12-20', 1350.00, 'GreenGlow Ltd.', 'Good', NOW(), NOW()),
(14, 'Bin Bags Large', 'Utility', 200, '2024-03-22', 45.00, 'CleanEarth Supplies', 'New', NOW(), NOW()),
(15, 'Rifles .315 Bore', 'Security', 10, '2022-07-05', 68000.00, 'Defense Corp India', 'Serviced', NOW(), NOW()),
(16, 'Camouflage Jackets', 'Apparel', 60, '2023-10-12', 1100.00, 'TrekWear Co.', 'Good', NOW(), NOW()),
(17, 'Water Filter Units', 'Utility', 12, '2024-02-14', 3500.00, 'AquaPur Systems', 'New', NOW(), NOW()),
(18, 'Rain Boots', 'Apparel', 45, '2023-11-03', 750.00, 'FootGuard India', 'Good', NOW(), NOW()),
(19, 'Tent 4-Person', 'Camping', 20, '2024-05-20', 5800.00, 'OutdoorLife Ltd.', 'New', NOW(), NOW()),
(20, 'Chainsaws Stihl MS180', 'Equipment', 8, '2024-06-18', 18500.00, 'AgroMech Tools', 'Good', NOW(), NOW());

-- to display table data
select * from EquipmentInventory ;

-- to remove complete records from table
truncate table EquipmentInventory ;

-- to remove complete records and attributes from table
drop table EquipmentInventory ;

-- 1. Create EquipmentInventory
CREATE TABLE EquipmentInventory (
  id INT PRIMARY KEY,
  item_name VARCHAR(100),
  category VARCHAR(50),
  quantity INT,
  purchase_date DATE,
  cost DECIMAL(10,2),
  supplier VARCHAR(100),
  conditions VARCHAR(50),
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add 'location' column
ALTER TABLE EquipmentInventory ADD location VARCHAR(100);

-- 3. Make supplier NOT NULL
ALTER TABLE EquipmentInventory MODIFY supplier VARCHAR(100) NOT NULL;

-- 4. Change conditions length
ALTER TABLE EquipmentInventory MODIFY conditions VARCHAR(100);

-- 5. Drop 'location'
ALTER TABLE EquipmentInventory DROP COLUMN location;

-- 6. Rename table to 'Inventory'
ALTER TABLE EquipmentInventory RENAME TO Inventory;

-- 7. Insert a new equipment record
INSERT INTO Inventory (id, item_name, category, quantity, purchase_date, cost, supplier, conditions, created_at, updated_at)
VALUES (21,'Thermal Camera','Surveillance',5,'2024-07-01',25000.00,'VisionTech','New',NOW(),NOW());

-- 8. Batch insert multiple items
INSERT INTO Inventory VALUES
(22,'Satellite Phone','Communication',3,'2024-06-15',15000.00,'CommGlobal','New',NOW(),NOW()),
(23,'Medicinal Herb Kit','Medical',10,'2024-05-20',5000.00,'MediBox Supplies','New',NOW(),NOW());

-- 9. Increase quantity for optics category
UPDATE Inventory
SET quantity = quantity + 5, updated_at = NOW()
WHERE category = 'Optics';

-- 10. Mark old items as 'Used'
UPDATE Inventory
SET conditions = 'Used', updated_at = NOW()
WHERE purchase_date < '2023-01-01';

-- 11. Delete obsolete equipment
DELETE FROM Inventory WHERE conditions = 'Used' AND quantity = 0;

-- 12. Remove low-cost items
DELETE FROM Inventory WHERE cost < 500;

-- 13. List all inventory records
SELECT * FROM Inventory;

-- 14. Items by category 'Surveillance'
SELECT * FROM Inventory WHERE category = 'Surveillance';

-- 15. Items purchased this year
SELECT * FROM Inventory WHERE YEAR(purchase_date) = YEAR(CURDATE());

-- 16. Count items by condition
SELECT conditions, COUNT(*) AS cnt FROM Inventory GROUP BY conditions;

-- 17. Find most expensive item
SELECT * FROM Inventory ORDER BY cost DESC LIMIT 1;

-- 18. Average cost per category
SELECT category, ROUND(AVG(cost),2) AS avg_cost
FROM Inventory GROUP BY category;

-- 19. Total quantity per supplier
SELECT supplier, SUM(quantity) AS total_qty
FROM Inventory GROUP BY supplier;

-- 20. Items needing service (cost > 10000)
SELECT id, item_name, cost FROM Inventory WHERE cost > 10000;

-- 21. Show items added recently
SELECT * FROM Inventory WHERE created_at >= NOW() - INTERVAL 30 DAY;

-- 22. Length of equipment names
SELECT id, LENGTH(item_name) AS name_length FROM Inventory;

-- 23. Search for 'Camera' in names
SELECT * FROM Inventory WHERE item_name LIKE '%Camera%';

-- 24. Join to get supplier contact info
SELECT i.*, s.contact
FROM Inventory i
JOIN Suppliers s ON i.supplier = s.name;

-- 25. Suppliers without items
SELECT s.name
FROM Suppliers s
LEFT JOIN Inventory i ON s.name = i.supplier
WHERE i.id IS NULL;

-- 26. Items above average cost
SELECT * FROM Inventory
WHERE cost > (SELECT AVG(cost) FROM Inventory);

-- 27. Latest purchase per category
SELECT i1.* FROM Inventory i1
WHERE purchase_date = (
  SELECT MAX(purchase_date)
  FROM Inventory i2 WHERE i2.category = i1.category
);

-- 28. Categories with >30 total items
SELECT category, SUM(quantity) AS total FROM Inventory
GROUP BY category
HAVING total > 30;

-- 29. Create maintenance logs table with FK cascade
CREATE TABLE MaintenanceLogs (
  log_id INT PRIMARY KEY,
  equipment_id INT,
  log_date DATE,
  details TEXT,
  FOREIGN KEY (equipment_id) REFERENCES Inventory(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 30. Add a maintenance record
INSERT INTO MaintenanceLogs VALUES (1,1,'2025-07-01','Cleaned optics');

-- 31. Delete equipment cascades logs
DELETE FROM Inventory WHERE id = 1;

-- 32. Updating equipment ID cascades logs
UPDATE Inventory SET id = 5 WHERE id = 2;

-- 33. Rank items by cost in each category
SELECT id, category, cost,
  RANK() OVER (PARTITION BY category ORDER BY cost DESC) AS cost_rank
FROM Inventory;  -- window functions explained :contentReference[oaicite:2]{index=2}

-- 34. Show cost difference from next pricey item
SELECT id, cost,
  LEAD(cost) OVER (ORDER BY cost) - cost AS next_diff
FROM Inventory;  -- LEAD usage :contentReference[oaicite:3]{index=3}

-- 35. Compare with previous cost
SELECT id, cost,
  LAG(cost) OVER (ORDER BY cost) AS prev_cost
FROM Inventory;  

-- 36. Count by condition using CTE
WITH cond_counts AS (
  SELECT conditions, COUNT(*) AS cnt
  FROM Inventory GROUP BY conditions
)
SELECT * FROM cond_counts WHERE cnt > 2;

-- 37. Cumulative quantity per category
SELECT id, category, quantity,
  SUM(quantity) OVER (PARTITION BY category ORDER BY purchase_date) AS cum_qty
FROM Inventory;  

-- 38. Generate numbers 1–5
WITH RECURSIVE seq(n) AS (
  SELECT 1
  UNION ALL
  SELECT n+1 FROM seq WHERE n < 5
)
SELECT * FROM seq;  -- recursion :contentReference[oaicite:6]{index=6}

-- 39. Equipment hierarchy (hypothetical parent-child)
WITH RECURSIVE equip_tree AS (
  SELECT id, item_name, NULL AS parent_id FROM Inventory WHERE id = 1
  UNION ALL
  SELECT i.id, i.item_name, et.id
  FROM Inventory i JOIN equip_tree et ON i.id = et.parent_id
)
SELECT * FROM equip_tree;  -- hierarchical query :contentReference[oaicite:7]{index=7}

-- 40. Union new and serviced equipment
SELECT * FROM Inventory WHERE conditions = 'New'
UNION
SELECT * FROM Inventory WHERE conditions = 'Serviced';

-- 41. Intersection: optics and cost > 5000
SELECT id FROM Inventory WHERE cost > 5000;

-- 42. Exclude cheap gear (<1000)
SELECT * FROM Inventory WHERE cost < 1000;

-- 43. Paginate inventory list
SELECT * FROM Inventory ORDER BY id LIMIT 10 OFFSET 10;

-- 44. Delete items not updated in 2 years
DELETE FROM Inventory
WHERE updated_at < NOW() - INTERVAL 2 YEAR;

-- 45. Flag high‑value items
UPDATE Inventory
SET conditions = 'High‑Value', updated_at = NOW()
WHERE cost > 20000;

-- 46. Top 3 quantity items per category
WITH ranked_qty AS (
  SELECT *, RANK() OVER (PARTITION BY category ORDER BY quantity DESC) AS rnk
  FROM Inventory
)
SELECT id, item_name, category, quantity FROM ranked_qty WHERE rnk <= 3;

-- 47. Quantity gap to next item
SELECT id, category, quantity,
  LEAD(quantity) OVER (PARTITION BY category ORDER BY quantity) - quantity AS next_gap
FROM Inventory;

-- 48. Remove suppliers with few items
DELETE FROM Inventory
WHERE supplier IN (
  SELECT supplier FROM Inventory GROUP BY supplier HAVING SUM(quantity) < 20
);

-- 49. Flag recent vs older purchases
SELECT *, CASE WHEN purchase_date >= NOW() - INTERVAL 1 YEAR THEN 'Recent' ELSE 'Old' END AS age_flag
FROM Inventory;

-- 50. Cleanup legacy records
UPDATE Inventory
SET conditions = 'Retired', updated_at = NOW()
WHERE purchase_date < '2023-01-01';

-- Table 19: AnimalTracking
CREATE TABLE AnimalTracking (
    id INT PRIMARY KEY,
    animal_id INT,
    species VARCHAR(100),
    tracker_id VARCHAR(50),
    last_location VARCHAR(100),
    last_seen DATETIME,
    health_status VARCHAR(50),
    movement_pattern TEXT,
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO AnimalTracking (id, animal_id, species, tracker_id, last_location, last_seen, health_status, movement_pattern, created_at, updated_at) VALUES
(1, 1001, 'Bengal Tiger', 'TRK-TGR-001', 'Kanha Zone C3', '2025-06-27 07:35:00', 'Healthy', 'Patrolling northern boundary regularly', NOW(), NOW()),
(2, 1002, 'Asian Elephant', 'TRK-ELP-004', 'Nagarhole Zone F1', '2025-06-26 18:20:00', 'Healthy', 'Moving in herds near riverbanks', NOW(), NOW()),
(3, 1003, 'Leopard', 'TRK-LEO-002', 'Bandipur Zone G2', '2025-06-28 03:12:00', 'Injured', 'Irregular night movements near village edge', NOW(), NOW()),
(4, 1004, 'Indian Bison', 'TRK-BSN-003', 'Periyar Zone E5', '2025-06-27 14:10:00', 'Healthy', 'Shifts between feeding and waterholes', NOW(), NOW()),
(5, 1005, 'Sloth Bear', 'TRK-BAR-009', 'Satpura Zone M8', '2025-06-26 21:40:00', 'Under Observation', 'Active at dusk, slow movement near fruiting trees', NOW(), NOW()),
(6, 1006, 'One-Horned Rhino', 'TRK-RHN-001', 'Kaziranga Zone D4', '2025-06-27 09:30:00', 'Healthy', 'Mostly stationary near marshland', NOW(), NOW()),
(7, 1007, 'Sambar Deer', 'TRK-DSB-005', 'Melghat Zone J5', '2025-06-27 06:15:00', 'Healthy', 'Grazing near grasslands, avoids roads', NOW(), NOW()),
(8, 1008, 'Snow Leopard', 'TRK-SNL-001', 'Spiti Zone Z1', '2025-06-26 22:00:00', 'Unknown', 'Discreet mountain ridge movements', NOW(), NOW()),
(9, 1009, 'Wild Dog (Dhole)', 'TRK-DHL-007', 'Nilgiri Hills Zone Q12', '2025-06-27 16:00:00', 'Healthy', 'Hunting in pack near ridge trail', NOW(), NOW()),
(10, 1010, 'Indian Pangolin', 'TRK-PNG-003', 'Silent Valley Zone O10', '2025-06-26 20:10:00', 'Healthy', 'Slow nocturnal foraging pattern', NOW(), NOW()),
(11, 1011, 'Asiatic Lion', 'TRK-LON-008', 'Gir Forest Zone B2', '2025-06-28 05:25:00', 'Injured', 'Limited movements, resting mostly', NOW(), NOW()),
(12, 1012, 'Barking Deer', 'TRK-BKD-004', 'Simlipal Zone I4', '2025-06-27 04:30:00', 'Healthy', 'Low-range grazing around hill base', NOW(), NOW()),
(13, 1013, 'Marsh Crocodile', 'TRK-CRK-006', 'Bhitar Kanika Zone P11', '2025-06-27 15:00:00', 'Healthy', 'Stationary near backwater mangroves', NOW(), NOW()),
(14, 1014, 'Great Indian Hornbill', 'TRK-HBL-002', 'Anamalai Zone N9', '2025-06-27 10:10:00', 'Healthy', 'Regular flight between fruit trees', NOW(), NOW()),
(15, 1015, 'Indian Cobra', 'TRK-CBR-001', 'Sundarbans Zone A1', '2025-06-26 11:30:00', 'Healthy', 'Burrowed, emerges early morning', NOW(), NOW()),
(16, 1016, 'Indian Python', 'TRK-PYT-001', 'Dudhwa Zone H3', '2025-06-27 17:45:00', 'Under Observation', 'Resting in thick undergrowth', NOW(), NOW()),
(17, 1017, 'Chinkara', 'TRK-CHK-007', 'Sariska Zone T15', '2025-06-27 07:20:00', 'Healthy', 'Fast and agile, covering dry plains', NOW(), NOW()),
(18, 1018, 'Indian Peafowl', 'TRK-PFL-005', 'Palamau Zone K6', '2025-06-28 06:10:00', 'Healthy', 'Frequent dust bathing and feeding', NOW(), NOW()),
(19, 1019, 'Civet Cat', 'TRK-CVT-002', 'Koundinya Zone R13', '2025-06-26 23:15:00', 'Healthy', 'Nocturnal movements near fruit trees', NOW(), NOW()),
(20, 1020, 'Spotted Deer', 'TRK-STD-008', 'Bhadra Zone L7', '2025-06-27 08:50:00', 'Healthy', 'Roams in herds, active at dawn/dusk', NOW(), NOW());

-- to display table data
select * from AnimalTracking;

-- to remove complete records from table
truncate table AnimalTracking;

-- to remove complete records and attributes from table
drop table AnimalTracking;

-- 1. Create table
CREATE TABLE AnimalTracking (
  id INT PRIMARY KEY,
  animal_id INT,
  species VARCHAR(100),
  tracker_id VARCHAR(50),
  last_location VARCHAR(100),
  last_seen DATETIME,
  health_status VARCHAR(50),
  movement_pattern TEXT,
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add 'zone' column
ALTER TABLE AnimalTracking ADD zone VARCHAR(100);

-- 3. Make tracker_id NOT NULL
ALTER TABLE AnimalTracking MODIFY tracker_id VARCHAR(50) NOT NULL;

-- 4. Extend health_status length
ALTER TABLE AnimalTracking MODIFY health_status VARCHAR(100);

-- 5. Drop 'zone'
ALTER TABLE AnimalTracking DROP COLUMN zone;

-- 6. Rename table for clarity
ALTER TABLE AnimalTracking RENAME TO AnimalMobility;

-- 7. Insert a new record
INSERT INTO AnimalMobility
VALUES (21, 1021, 'Tigers', 'TRK-TGR-010', 'Satpura Zone M8', '2025-06-29 06:00:00', 'Healthy', 'Morning patrol pattern', NOW(), NOW());

-- 8. Batch insert two entries
INSERT INTO AnimalMobility VALUES
(22,802, 'Elephant', 'TRK-ELP-010','Gir Forest B2','2025-06-28 12:00:00','Under Observation','Near river moves' ,NOW(),NOW()),
(23,833,'Leopard','TRK-LEO-010','Bandipur G2','2025-06-29 02:00:00','Injured','Reduced movement' ,NOW(),NOW());

-- 9. Update health status to 'Recovered'
UPDATE AnimalMobility
SET health_status='Recovered', updated_at=NOW()
WHERE id = 3;

-- 10. Bulk-mark 'Healthy' animals as tagged
UPDATE AnimalMobility
SET movement_pattern = CONCAT(movement_pattern, ' [Tagged]'), updated_at=NOW()
WHERE health_status='Healthy';

-- 11. Delete old entries
DELETE FROM AnimalMobility
WHERE last_seen < '2025-01-01';

-- 12. Remove test data with id > 20
DELETE FROM AnimalMobility WHERE id > 20;

-- 13. Select all records
SELECT * FROM AnimalMobility;

-- 14. View injured animals
SELECT * FROM AnimalMobility WHERE health_status='Injured';

-- 15. Last locations for tigers and leopards
SELECT animal_id, species, last_location, last_seen 
FROM AnimalMobility 
WHERE species IN ('Bengal Tiger','Leopard');

-- 16. Distinct species tracked
SELECT DISTINCT species FROM AnimalMobility;

-- 17. Count by health_status
SELECT health_status, COUNT(*) AS cnt
FROM AnimalMobility GROUP BY health_status;

-- 18. Latest last_seen timestamp
SELECT MAX(last_seen) AS latest_seen FROM AnimalMobility;

-- 19. Average time since last seen
SELECT AVG(TIMESTAMPDIFF(HOUR, last_seen, NOW())) AS avg_hours_ago
FROM AnimalMobility;

-- 20. Show movement patterns with length >100 chars
SELECT id, CHAR_LENGTH(movement_pattern) AS len
FROM AnimalMobility WHERE CHAR_LENGTH(movement_pattern) > 100;

-- 21. Recent sightings (within 48 hours)
SELECT * FROM AnimalMobility WHERE last_seen >= NOW() - INTERVAL 2 DAY;

-- 22. Masked tracker_id
SELECT id, species, CONCAT(LEFT(tracker_id,5),'***') AS tracker_mask FROM AnimalMobility;

-- 23. Species count >1 via HAVING
SELECT species, COUNT(*) AS cnt
FROM AnimalMobility GROUP BY species HAVING cnt > 1;

-- 24. Join to fetch animal names
SELECT at.*, a.name
FROM AnimalMobility at
JOIN Animals a ON at.animal_id = a.id;

-- 25. Trackers never used
SELECT t.tracker_id
FROM Trackers t
LEFT JOIN AnimalMobility at ON t.tracker_id = at.tracker_id
WHERE at.id IS NULL;

-- 26. Animals not seen in >72 hours
SELECT * FROM AnimalMobility am
WHERE last_seen < NOW() - INTERVAL 72 HOUR;

-- 27. Most recent sighting per species
SELECT am1.*
FROM AnimalMobility am1
WHERE last_seen = (
  SELECT MAX(last_seen) FROM AnimalMobility am2
  WHERE am2.species = am1.species
);

-- 28. Count healthy per species
SELECT species, COUNT(*) AS healthy_count
FROM AnimalMobility
WHERE health_status='Healthy'
GROUP BY species;

-- 29. Create tracking_logs with FK cascade
CREATE TABLE TrackingLogs (
  log_id INT PRIMARY KEY,
  animal_id INT,
  log_time DATETIME,
  remark TEXT,
  FOREIGN KEY(animal_id) REFERENCES AnimalMobility(animal_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 30. Insert a log
INSERT INTO TrackingLogs VALUES (1,1001,NOW(),'Routine check');

-- 31. Deleting an animal cascades logs
DELETE FROM AnimalMobility WHERE animal_id = 1001;

-- 32. Updating animal_id cascades
UPDATE AnimalMobility SET animal_id = 2001 WHERE animal_id = 1002;

-- 33. Rank species by last_seen time
SELECT id, species, last_seen,
  RANK() OVER (PARTITION BY species ORDER BY last_seen DESC) AS latest_rank
FROM AnimalMobility;  -- window function usage :contentReference[oaicite:2]{index=2}

-- 34. Difference in hours since previous sighting per species
SELECT id, species, last_seen,
  TIMESTAMPDIFF(
    HOUR,
    LAG(last_seen) OVER (PARTITION BY species ORDER BY last_seen),
    last_seen
  ) AS hours_since_prev
FROM AnimalMobility;  -- LAG explained :contentReference[oaicite:3]{index=3}

-- 35. Time to next sighting via LEAD
SELECT id, species, last_seen,
  TIMESTAMPDIFF(
    HOUR, 
    last_seen,
    LEAD(last_seen) OVER (PARTITION BY species ORDER BY last_seen)
  ) AS hours_to_next
FROM AnimalMobility;  -- LEAD explained :contentReference[oaicite:4]{index=4}

-- 36. Count per health status via CTE
WITH status_cte AS (
  SELECT health_status, COUNT(*) AS cnt
  FROM AnimalMobility GROUP BY health_status
)
SELECT * FROM status_cte WHERE cnt > 1;

-- 37. Sequence generator 1–5
WITH RECURSIVE seq(n) AS (
  SELECT 1
  UNION ALL
  SELECT n+1 FROM seq WHERE n < 5
)
SELECT * FROM seq;  -- recursive CTE pattern :contentReference[oaicite:5]{index=5}

-- 38. Hypothetical parent-child tracking paths
WITH RECURSIVE track_chain AS (
  SELECT id, animal_id, last_seen FROM AnimalMobility WHERE id = 1
  UNION ALL
  SELECT am.id, am.animal_id, am.last_seen
  FROM AnimalMobility am
    JOIN track_chain tc ON am.animal_id = tc.animal_id AND am.last_seen > tc.last_seen
)
SELECT * FROM track_chain;

-- 39. Union injured and under observation
SELECT * FROM AnimalMobility WHERE health_status='Injured'
UNION
SELECT * FROM AnimalMobility WHERE health_status='Under Observation';

-- 40. Intersection: tracked in last day and healthy
SELECT id FROM AnimalMobility WHERE health_status = 'Healthy';

-- 41. Exclude unhealthy
SELECT * FROM AnimalMobility WHERE health_status <> 'Healthy';

-- 42. Pagination (skip first 10)
SELECT * FROM AnimalMobility ORDER BY last_seen DESC LIMIT 10 OFFSET 10;

-- 43. Delete old sightings (>1 year)
DELETE FROM AnimalMobility WHERE last_seen < NOW() - INTERVAL 1 YEAR;

-- 44. Mark inactive for no recent data
UPDATE AnimalMobility
SET health_status = 'Inactive', updated_at = NOW()
WHERE last_seen < NOW() - INTERVAL 6 MONTH;

-- 45. Top 3 recent sightings per species
WITH ranked AS (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY species ORDER BY last_seen DESC) AS rn
  FROM AnimalMobility
)
SELECT id, species, last_seen FROM ranked WHERE rn <= 3;

-- 46. Time to next difference per species
SELECT id, species, last_seen,
  TIMESTAMPDIFF(HOUR,
    last_seen,
    LEAD(last_seen) OVER (PARTITION BY species ORDER BY last_seen)
  ) AS hr_to_next
FROM AnimalMobility;

-- 47. Delete rare species (single record)
DELETE FROM AnimalMobility
WHERE species IN (
  SELECT species FROM AnimalMobility GROUP BY species HAVING COUNT(*) = 1
);

-- 48. Flag recent sightings
SELECT *, CASE WHEN last_seen >= NOW() - INTERVAL 7 DAY THEN 'Recent' ELSE 'Old' END AS recency
FROM AnimalMobility;

-- 49. Count sightings per species
SELECT species, COUNT(*) OVER (PARTITION BY species) AS sighting_count
FROM AnimalMobility;

-- 50. Remove test entries
DELETE FROM AnimalMobility WHERE id BETWEEN 21 AND 23;

-- Table 20: WeatherStations
CREATE TABLE WeatherStations (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    sensor_types TEXT,
    installed_date DATE,
    status VARCHAR(20),
    temperature FLOAT,
    humidity FLOAT,
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO WeatherStations (id, name, location, sensor_types, installed_date, status, temperature, humidity, created_at, updated_at) VALUES
(1, 'Kanha Central Station', 'Kanha Zone C3', 'Temperature, Humidity, Rainfall', '2022-03-15', 'Active', 32.5, 68.2, NOW(), NOW()),
(2, 'Bandipur West Station', 'Bandipur Zone G2', 'Temperature, Wind Speed', '2021-11-20', 'Active', 29.3, 62.0, NOW(), NOW()),
(3, 'Gir East Monitoring Unit', 'Gir Forest Zone B2', 'Temperature, Humidity', '2020-06-10', 'Active', 34.1, 71.5, NOW(), NOW()),
(4, 'Kaziranga Wet Station', 'Kaziranga Zone D4', 'Humidity, Rainfall', '2022-01-05', 'Active', 28.7, 89.4, NOW(), NOW()),
(5, 'Sundarbans Coastal Station', 'Sundarbans Zone A1', 'Temperature, Water Salinity', '2023-02-18', 'Active', 30.8, 85.0, NOW(), NOW()),
(6, 'Satpura Ridge Station', 'Satpura Zone M8', 'Temperature, Wind Direction', '2021-08-07', 'Active', 26.9, 64.1, NOW(), NOW()),
(7, 'Periyar Hilltop Station', 'Periyar Zone E5', 'Humidity, UV Index', '2020-10-12', 'Inactive', 24.5, 77.6, NOW(), NOW()),
(8, 'Melghat Core Station', 'Melghat Zone J5', 'Temperature, Rainfall', '2023-05-23', 'Active', 31.2, 60.4, NOW(), NOW()),
(9, 'Dudhwa Forest Base', 'Dudhwa Zone H3', 'Humidity, Wind Speed', '2021-04-30', 'Active', 27.4, 82.1, NOW(), NOW()),
(10, 'Silent Valley Peak', 'Silent Valley Zone O10', 'Temperature, Air Pressure', '2022-09-16', 'Active', 23.1, 70.8, NOW(), NOW()),
(11, 'Palamau East Station', 'Palamau Zone K6', 'Humidity, Rainfall, Temp', '2023-03-02', 'Active', 30.0, 73.2, NOW(), NOW()),
(12, 'Nilgiri Watch Station', 'Nilgiri Hills Zone Q12', 'Temperature, Cloud Cover', '2022-12-11', 'Active', 25.7, 68.5, NOW(), NOW()),
(13, 'Namdapha Deep Station', 'Namdapha Zone S14', 'Humidity, Wind Speed', '2023-07-08', 'Active', 28.9, 88.3, NOW(), NOW()),
(14, 'Simlipal Slope Unit', 'Simlipal Zone I4', 'Temperature, Soil Moisture', '2021-06-25', 'Active', 29.0, 75.0, NOW(), NOW()),
(15, 'Anamalai Eco Monitor', 'Anamalai Zone N9', 'Rainfall, UV Index', '2020-03-14', 'Inactive', 27.3, 80.6, NOW(), NOW()),
(16, 'Bhadra Forest Station', 'Bhadra Zone L7', 'Temperature, Rainfall, Wind', '2022-04-28', 'Active', 31.7, 66.0, NOW(), NOW()),
(17, 'Koundinya Rain Station', 'Koundinya Zone R13', 'Rainfall, Humidity', '2023-01-19', 'Active', 29.6, 78.1, NOW(), NOW()),
(18, 'Sariska Edge Station', 'Sariska Zone T15', 'Temperature, Wind Speed', '2021-07-03', 'Active', 33.8, 60.5, NOW(), NOW()),
(19, 'Bhitar Kanika Wet Station', 'Bhitar Kanika Zone P11', 'Humidity, Water Salinity', '2022-05-20', 'Active', 30.4, 90.2, NOW(), NOW()),
(20, 'Kanha Research Substation', 'Kanha Zone C3', 'Air Pressure, Temperature', '2023-06-06', 'Active', 27.8, 65.4, NOW(), NOW());

-- to display table data
select * from WeatherStations;

-- to remove complete records from table
truncate table WeatherStations;

-- to remove complete records and attributes from table
drop table WeatherStations;

-- 1. Create table
CREATE TABLE WeatherStations (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  location VARCHAR(100),
  sensor_types TEXT,
  installed_date DATE,
  status VARCHAR(20),
  temperature FLOAT,
  humidity FLOAT,
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add 'zone' column
ALTER TABLE WeatherStations ADD zone VARCHAR(100);

-- 3. Make status NOT NULL
ALTER TABLE WeatherStations MODIFY status VARCHAR(20) NOT NULL;

-- 4. Change temperature precision
ALTER TABLE WeatherStations MODIFY temperature DECIMAL(5,2);

-- 5. Drop the zone column
ALTER TABLE WeatherStations DROP COLUMN zone;

-- 6. Rename table to `Stations`
ALTER TABLE WeatherStations RENAME TO Stations;

-- 7. Insert a new station
INSERT INTO Stations 
VALUES (21,'Eco Edge Station','Demo Location','Temperature, Rainfall','2024-07-01','Active',29.5,75.0,NOW(),NOW());

-- 8. Insert multiple stations
INSERT INTO Stations VALUES
(22,'River Station','Demo River','Humidity, Water Salinity','2023-08-12','Active',28.5,85.2,NOW(),NOW()),
(23,'Hilltop Station','Demo Hills','Wind Speed, UV Index','2022-05-05','Inactive',25.0,60.3,NOW(),NOW());

-- 9. Update status inactive for old installs
UPDATE Stations
SET status='Inactive', updated_at=NOW()
WHERE installed_date < '2021-01-01';

-- 10. Calibrate recent temperature readings
UPDATE Stations
SET temperature = temperature + 0.5, updated_at = NOW()
WHERE created_at >= NOW() - INTERVAL 30 DAY;

-- 11. Delete inactive stations
DELETE FROM Stations WHERE status='Inactive';

-- 12. Remove low humidity (<50%)
DELETE FROM Stations WHERE humidity < 50;

-- 13. Display all stations
SELECT * FROM Stations;

-- 14. Stations with rainfall sensors
SELECT * FROM Stations WHERE sensor_types LIKE '%Rainfall%';

-- 15. Stations installed in 2022
SELECT * FROM Stations WHERE YEAR(installed_date)=2022;

-- 16. Count by status
SELECT status, COUNT(*) AS count FROM Stations GROUP BY status;

-- 17. Max/Min temperature readings
SELECT MAX(temperature) AS max_temp, MIN(temperature) AS min_temp FROM Stations;

-- 18. Average humidity
SELECT AVG(humidity) AS avg_hum FROM Stations;

-- 19. Recent entries
SELECT * FROM Stations WHERE created_at >= NOW() - INTERVAL 7 DAY;

-- 20. Sensor count heuristic
SELECT id, name,
  LENGTH(sensor_types) - LENGTH(REPLACE(sensor_types, ',', '')) + 1 AS sensor_count
FROM Stations;

-- 21. Stations with both Temp and Humidity
SELECT * FROM Stations
WHERE sensor_types LIKE '%Temperature%' AND sensor_types LIKE '%Humidity%';

-- 22. Mask contact-less: alias zone
SELECT id, name, CONCAT(LEFT(location,5), '...') AS loc_short FROM Stations;

-- 23. Installed before average date
SELECT * FROM Stations
WHERE installed_date < (SELECT AVG(installed_date) FROM Stations);

-- 24. Include manager info
SELECT s.*, z.manager
FROM Stations s
JOIN ZoneManagers z ON s.location = z.zone;

-- 25. Zones missing stations
SELECT z.zone
FROM ZoneManagers z
LEFT JOIN Stations s ON s.location = z.zone
WHERE s.id IS NULL;

-- 26. Stations hotter than average
SELECT * FROM Stations
WHERE temperature > (SELECT AVG(temperature) FROM Stations);

-- 27. Most recent station per location
SELECT s1.*
FROM Stations s1
WHERE installed_date = (
  SELECT MAX(installed_date)
  FROM Stations s2
  WHERE s2.location = s1.location
);

-- 28. Active station count per location
SELECT location, COUNT(*) AS active_count
FROM Stations
WHERE status='Active'
GROUP BY location;

-- 29. Maintenance records with cascade
CREATE TABLE StationMaintenance (
  log_id INT PRIMARY KEY,
  station_id INT,
  maintenance_date DATE,
  notes TEXT,
  FOREIGN KEY (station_id)
    REFERENCES Stations(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 30. Insert a maintenance entry
INSERT INTO StationMaintenance VALUES (1,1,'2025-07-20','Replaced sensor');

-- 31. Delete cascades logs
DELETE FROM Stations WHERE id = 1;

-- 32. Change station ID cascades
UPDATE Stations SET id = 5 WHERE id = 2;

-- 33. Rank humidity readings
SELECT id, location, humidity,
  RANK() OVER (ORDER BY humidity DESC) AS humidity_rank
FROM Stations;  

-- 34. Compare with previous reading
SELECT id, temperature,
  LAG(temperature) OVER (ORDER BY last_updated) AS prev_temp
FROM Stations;  

-- 35. Difference to next humidity
SELECT id, humidity,
  LEAD(humidity) OVER (ORDER BY humidity) - humidity AS next_diff
FROM Stations;  

-- 36. Count per status via CTE
WITH status_cte AS (
  SELECT status, COUNT(*) AS cnt FROM Stations GROUP BY status
)
SELECT * FROM status_cte WHERE cnt > 2;

-- 37. Cumulative avg temperature over install date
SELECT id, installed_date, temperature,
  AVG(temperature) OVER (ORDER BY installed_date) AS cum_avg_temp
FROM Stations;  

-- 38. Sequence generator 1–5
WITH RECURSIVE seq(n) AS (
  SELECT 1
  UNION ALL
  SELECT n+1 FROM seq WHERE n < 5
)
SELECT * FROM seq;  

-- 39. Hypothetical parent-child station tree
WITH RECURSIVE station_tree AS (
  SELECT id, name, NULL AS parent_id FROM Stations WHERE id = 1
  UNION ALL
  SELECT s.id, s.name, st.id
  FROM Stations s
    JOIN station_tree st ON s.id = st.parent_id
)
SELECT * FROM station_tree;

-- 40. Union active & inactive
SELECT * FROM Stations WHERE status='Active'
UNION
SELECT * FROM Stations WHERE status='Inactive';

-- 41. Intersection: Temp >30 AND Humidity>80
SELECT id FROM Stations WHERE humidity > 80;

-- 42. Exclude old installs (<2021)
SELECT * FROM Stations WHERE installed_date < '2021-01-01';

-- 43. Pagination example
SELECT * FROM Stations ORDER BY id LIMIT 10 OFFSET 10;

-- 44. Delete old station data >3 years
DELETE FROM Stations WHERE installed_date < DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

-- 45. Flag high humidity
UPDATE Stations
SET status = CASE WHEN humidity > 85 THEN 'High-Humidity' ELSE status END,
  updated_at = NOW();

-- 46. Top 3 hottest stations
WITH ranked AS (
  SELECT *, RANK() OVER (ORDER BY temperature DESC) AS rnk
  FROM Stations
)
SELECT id, name, temperature FROM ranked WHERE rnk <= 3;

-- 47. Humidity gap to next
SELECT id, humidity,
  LEAD(humidity) OVER (ORDER BY humidity) - humidity AS humidity_diff
FROM Stations;

-- 48. Remove locations with single station
DELETE FROM Stations
WHERE location IN (
  SELECT location FROM Stations GROUP BY location HAVING COUNT(*) = 1
);

-- 49. Flag recent vs old installs
SELECT *, CASE WHEN installed_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) THEN 'Recent' ELSE 'Old' END AS age_flag
FROM Stations;

-- 50. Downgrade old Active stations
UPDATE Stations
SET status = 'Inactive', updated_at = NOW()
WHERE status='Active' AND installed_date < DATE_SUB(CURDATE(), INTERVAL 2 YEAR);


-- Table 21: SatelliteImagery
CREATE TABLE SatelliteImagery (
    id INT PRIMARY KEY,
    image_date DATE,
    area_covered VARCHAR(100),
    resolution VARCHAR(50),
    file_path TEXT,
    analysis_report TEXT,
    status VARCHAR(20),
    captured_by VARCHAR(100),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO SatelliteImagery (id, image_date, area_covered, resolution, file_path, analysis_report, status, captured_by, created_at, updated_at) VALUES
(1, '2025-06-01', 'Kanha Zone C3', '1m/pixel', '/imagery/kanha_20250601.jpg', 'Healthy forest cover observed', 'Analyzed', 'ISRO Sat-GeoEye', NOW(), NOW()),
(2, '2025-05-28', 'Sundarbans Zone A1', '0.5m/pixel', '/imagery/sundarbans_20250528.jpg', 'Tidal intrusion detected in north block', 'Analyzed', 'NASA Landsat-9', NOW(), NOW()),
(3, '2025-06-10', 'Gir Forest Zone B2', '1m/pixel', '/imagery/gir_20250610.jpg', 'No significant changes', 'Pending', 'ISRO CartoSat-3', NOW(), NOW()),
(4, '2025-04-20', 'Kaziranga Zone D4', '2m/pixel', '/imagery/kaziranga_20250420.jpg', 'Flood-prone zones detected', 'Analyzed', 'ESA Sentinel-2', NOW(), NOW()),
(5, '2025-06-05', 'Bandipur Zone G2', '0.3m/pixel', '/imagery/bandipur_20250605.jpg', 'Poaching trails identified', 'Analyzed', 'Maxar WorldView-3', NOW(), NOW()),
(6, '2025-03-15', 'Melghat Zone J5', '1m/pixel', '/imagery/melghat_20250315.jpg', 'Increase in green cover noted', 'Analyzed', 'ISRO CartoSat-2E', NOW(), NOW()),
(7, '2025-06-12', 'Silent Valley Zone O10', '1m/pixel', '/imagery/silentvalley_20250612.jpg', 'Unusual clearing detected in south edge', 'Pending', 'PlanetScope', NOW(), NOW()),
(8, '2025-05-01', 'Nilgiri Hills Zone Q12', '1.5m/pixel', '/imagery/nilgiri_20250501.jpg', 'Vegetation density stable', 'Analyzed', 'NASA MODIS', NOW(), NOW()),
(9, '2025-04-10', 'Satpura Zone M8', '2m/pixel', '/imagery/satpura_20250410.jpg', 'Signs of soil erosion seen', 'Analyzed', 'ESA Sentinel-2B', NOW(), NOW()),
(10, '2025-05-22', 'Dudhwa Zone H3', '1m/pixel', '/imagery/dudhwa_20250522.jpg', 'Clearings along border area observed', 'Analyzed', 'ISRO CartoSat-3', NOW(), NOW()),
(11, '2025-06-15', 'Periyar Zone E5', '0.8m/pixel', '/imagery/periyar_20250615.jpg', 'High canopy density in west patch', 'Pending', 'Planet SkySat', NOW(), NOW()),
(12, '2025-04-30', 'Palamau Zone K6', '1.2m/pixel', '/imagery/palamau_20250430.jpg', 'New plantation zones mapped', 'Analyzed', 'ISRO Resourcesat-2A', NOW(), NOW()),
(13, '2025-06-03', 'Namdapha Zone S14', '1.5m/pixel', '/imagery/namdapha_20250603.jpg', 'Minor landslides visible on slope', 'Pending', 'Maxar GeoEye-1', NOW(), NOW()),
(14, '2025-05-10', 'Simlipal Zone I4', '1m/pixel', '/imagery/simlipal_20250510.jpg', 'Large herbivore tracks visible', 'Analyzed', 'ISRO CartoSat-2', NOW(), NOW()),
(15, '2025-06-08', 'Bhitar Kanika Zone P11', '0.6m/pixel', '/imagery/bhitarkanika_20250608.jpg', 'Mangrove expansion visible', 'Analyzed', 'PlanetScope', NOW(), NOW()),
(16, '2025-03-25', 'Koundinya Zone R13', '2m/pixel', '/imagery/koundinya_20250325.jpg', 'Signs of fire burn patches', 'Analyzed', 'NASA Landsat-8', NOW(), NOW()),
(17, '2025-06-07', 'Sariska Zone T15', '0.5m/pixel', '/imagery/sariska_20250607.jpg', 'Wildlife paths near waterholes mapped', 'Analyzed', 'Maxar WorldView-2', NOW(), NOW()),
(18, '2025-05-18', 'Anamalai Zone N9', '1m/pixel', '/imagery/anamalai_20250518.jpg', 'Weather station area clearly visible', 'Analyzed', 'ESA Copernicus', NOW(), NOW()),
(19, '2025-04-05', 'Bhadra Zone L7', '1.2m/pixel', '/imagery/bhadra_20250405.jpg', 'Illegal dumping signs in outer rim', 'Pending', 'ISRO CartoSat-3', NOW(), NOW()),
(20, '2025-06-18', 'Kanha Zone C3', '0.8m/pixel', '/imagery/kanha_20250618.jpg', 'Elephant trail corridors observed', 'Analyzed', 'Planet SkySat', NOW(), NOW());

-- to display table data
select * from SatelliteImagery;

-- to remove complete records from table
truncate table SatelliteImagery;

-- to remove complete records and attributes from table
drop table SatelliteImagery;

-- 1. Create the SatelliteImagery table
CREATE TABLE SatelliteImagery (
  id INT PRIMARY KEY,
  image_date DATE,
  area_covered VARCHAR(100),
  resolution VARCHAR(50),
  file_path TEXT,
  analysis_report TEXT,
  status VARCHAR(20),
  captured_by VARCHAR(100),
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add ‘file_size’ column
ALTER TABLE SatelliteImagery ADD file_size FLOAT;

-- 3. Make 'status' NOT NULL
ALTER TABLE SatelliteImagery MODIFY status VARCHAR(20) NOT NULL;

-- 4. Change 'resolution' length
ALTER TABLE SatelliteImagery MODIFY resolution VARCHAR(100);

-- 5. Rename file_path to 'image_path'
ALTER TABLE SatelliteImagery CHANGE file_path image_path TEXT;

-- 6. Rename table to `ImageryData`
ALTER TABLE SatelliteImagery RENAME TO ImageryData;

-- 7. Insert a new imagery record
INSERT INTO ImageryData 
VALUES (21,'2025-07-01','Kanha Zone C3','0.7m/pixel','/imagery/kanha_20250701.jpg','New analysis','Pending','ISRO CartoSat-3',NOW(),NOW());

-- 8. Insert two records in batch
INSERT INTO ImageryData  VALUES
(22,'2025-06-20','Sundarbans Zone A1','1m/pixel','...','New change','Pending','PlanetScope',NOW(),NOW()),
(23,'2025-05-15','Gir Forest Zone B2','0.4m/pixel','...','Deforestation','Analyzed','Maxar WorldView-3',NOW(),NOW());

-- 9. Update status of processed images
UPDATE ImageryData
SET status='Analyzed', updated_at=NOW()
WHERE status='Pending';

-- 10. Correct typos in area_covered
UPDATE ImageryData
SET area_covered = REPLACE(area_covered,'Zone  C3','Zone C3'), updated_at=NOW()
WHERE area_covered LIKE '%Zone  %';

-- 11. Delete outdated images before Jan 2025
DELETE FROM ImageryData WHERE image_date < '2025-01-01';

-- 12. Remove test entries
DELETE FROM ImageryData WHERE id > 20;

-- 13. List all imagery
SELECT * FROM ImageryData;

-- 14. Pending analyses only
SELECT * FROM ImageryData WHERE status = 'Pending';

-- 15. High-resolution images (≤0.5m/pixel)
SELECT * FROM ImageryData WHERE CAST(SUBSTRING_INDEX(resolution,'m',1) AS DECIMAL(4,2)) <= 0.5;

-- 16. Count images by area
SELECT area_covered, COUNT(*) AS num_images
FROM ImageryData GROUP BY area_covered;

-- 17. Latest image date
SELECT MAX(image_date) AS latest_capture FROM ImageryData;

-- 18. Average delay to analysis
SELECT AVG(DATEDIFF(updated_at, image_date)) AS avg_days
FROM ImageryData WHERE status = 'Analyzed';

-- 19. Recent captures (last 30 days)
SELECT * FROM ImageryData WHERE image_date >= CURDATE() - INTERVAL 30 DAY;

-- 20. Length of report text
SELECT id, CHAR_LENGTH(analysis_report) AS report_length FROM ImageryData;

-- 21. Search for 'forest' in reports
SELECT * FROM ImageryData WHERE analysis_report LIKE '%forest%';

-- 22. Summaries with alias
SELECT id AS img_id, area_covered AS region, status AS processing_status FROM ImageryData;

-- 23. Count per capturer
SELECT captured_by, COUNT(*) AS total FROM ImageryData GROUP BY captured_by HAVING total > 1;

-- 24. Include satellite details
SELECT i.*, s.launch_date
FROM ImageryData i JOIN Satellites s ON i.captured_by = s.name;

-- 25. Zones without imagery
SELECT z.zone_name
FROM Zones z
LEFT JOIN ImageryData i ON z.zone_name = i.area_covered
WHERE i.id IS NULL;

-- 26. Images larger than average file size
SELECT * FROM ImageryData
WHERE file_size > (SELECT AVG(file_size) FROM ImageryData);

-- 27. Most recent image per area
SELECT i1.* FROM ImageryData i1
WHERE image_date = (
  SELECT MAX(image_date) FROM ImageryData i2
  WHERE i2.area_covered = i1.area_covered
);

-- 28. Pending count per capturer
SELECT captured_by, COUNT(*) AS pending_count
FROM ImageryData
WHERE status = 'Pending'
GROUP BY captured_by;

-- 29. Create logs table with cascade
CREATE TABLE ImageryLogs (
  log_id INT PRIMARY KEY,
  imagery_id INT,
  log_time DATETIME,
  details TEXT,
  FOREIGN KEY (imagery_id)
    REFERENCES ImageryData(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 30. Add a log entry
INSERT INTO ImageryLogs VALUES (1,1,NOW(),'Quality check complete');

-- 31. Delete imagery cascades logs
DELETE FROM ImageryData WHERE id = 1;

-- 32. Update id cascades to logs
UPDATE ImageryData SET id = 5 WHERE id = 2;

-- 33. Rank images by date within area
SELECT id, area_covered, image_date,
  RANK() OVER (PARTITION BY area_covered ORDER BY image_date DESC) AS date_rank
FROM ImageryData;  -- window function usage :contentReference[oaicite:2]{index=2}

-- 34. Previous capture date per area
SELECT id, area_covered, image_date,
  LAG(image_date) OVER (PARTITION BY area_covered ORDER BY image_date) AS prev_capture
FROM ImageryData;  -- using LAG :contentReference[oaicite:3]{index=3}

-- 35. Next capture date
SELECT id, area_covered, image_date,
  LEAD(image_date) OVER (PARTITION BY area_covered ORDER BY image_date) AS next_capture
FROM ImageryData;  -- using LEAD :contentReference[oaicite:4]{index=4}

-- 36. Cumulative count by satellite
SELECT captured_by, image_date,
  COUNT(*) OVER (PARTITION BY captured_by ORDER BY image_date) AS cum_count
FROM ImageryData;  -- cumulative window :contentReference[oaicite:5]{index=5}

-- 37. Pending imagery counts
WITH pending_cte AS (
  SELECT status, COUNT(*) AS cnt
  FROM ImageryData GROUP BY status
)
SELECT * FROM pending_cte WHERE status = 'Pending';

-- 38. Average days to analyze by area
WITH avg_cte AS (
  SELECT area_covered, AVG(DATEDIFF(updated_at, image_date)) AS avg_delay
  FROM ImageryData
  WHERE status = 'Analyzed'
  GROUP BY area_covered
)
SELECT * FROM avg_cte WHERE avg_delay > 2;

-- 39. Generate 1–5 sequence
WITH RECURSIVE seq(n) AS (
  SELECT 1
  UNION ALL
  SELECT n + 1 FROM seq WHERE n < 5
)
SELECT * FROM seq;  -- recursive CTE :contentReference[oaicite:6]{index=6}

-- 40. Hypothetical parent-child imagery chain
WITH RECURSIVE img_chain AS (
  SELECT id, NULL AS parent_id FROM ImageryData WHERE id = 1
  UNION ALL
  SELECT i.id, ic.id
  FROM ImageryData i JOIN img_chain ic ON i.image_date > (SELECT image_date FROM ImageryData WHERE id = ic.id)
)
SELECT * FROM img_chain;  -- recursive structure :contentReference[oaicite:7]{index=7}

-- 41. Union of Pending and Analyzed
SELECT * FROM ImageryData WHERE status = 'Pending'
UNION
SELECT * FROM ImageryData WHERE status = 'Analyzed';

-- 42. Intersection: high-res & Pending
SELECT id FROM ImageryData WHERE status = 'Pending';

-- 43. Exclude small images (<0.8m/pixel)
SELECT * FROM ImageryData WHERE resolution > '0.8m/pixel';

-- 44. Pagination example (rows 11–20)
SELECT * FROM ImageryData ORDER BY id LIMIT 10 OFFSET 10;

-- 45. Cleanup old logs
DELETE FROM ImageryLogs WHERE log_time < NOW() - INTERVAL 1 MONTH;

-- 46. Flag recent captures
UPDATE ImageryData
SET status = 'Recent', updated_at = NOW()
WHERE image_date >= CURDATE() - INTERVAL 7 DAY;

-- 47. Top 3 recent per area
WITH ranked AS (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY area_covered ORDER BY image_date DESC) AS rn
  FROM ImageryData
)
SELECT id, area_covered, image_date
FROM ranked WHERE rn <= 3;

-- 48. Gap to next capture per area
SELECT id, area_covered, image_date,
  DATEDIFF(
    LEAD(image_date) OVER (PARTITION BY area_covered ORDER BY image_date),
    image_date
  ) AS days_to_next
FROM ImageryData;

-- 49. Delete single-entry areas
DELETE FROM ImageryData
WHERE area_covered IN (
  SELECT area_covered
  FROM ImageryData
  GROUP BY area_covered HAVING COUNT(*) = 1
);

-- 50. Deprecate old analyzed images
UPDATE ImageryData
SET status = 'Archived', updated_at = NOW()
WHERE status = 'Analyzed' AND image_date < DATE_SUB(CURDATE(), INTERVAL 90 DAY);


-- Table 22: IllegalLoggingReports
CREATE TABLE IllegalLoggingReports (
    id INT PRIMARY KEY,
    report_date DATE,
    location VARCHAR(100),
    reporter_name VARCHAR(100),
    description TEXT,
    action_taken TEXT,
    status VARCHAR(20),
    authority_contacted VARCHAR(100),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO IllegalLoggingReports (id, report_date, location, reporter_name, description, action_taken, status, authority_contacted, created_at, updated_at) VALUES
(1, '2025-06-01', 'Kanha Zone B1', 'Ravi Sharma', 'Observed unauthorized tree felling near buffer zone.', 'Rangers dispatched, area sealed.', 'Resolved', 'Forest Ranger Office - Kanha', NOW(), NOW()),
(2, '2025-05-28', 'Bandipur Gate 4', 'Sneha Patil', 'Chainsaw noises heard at night near core zone.', 'Night patrol increased.', 'Under Investigation', 'Bandipur Patrol HQ', NOW(), NOW()),
(3, '2025-06-05', 'Gir East Sector', 'Asif Khan', 'Multiple Sal trees cut and stumps found.', 'Investigation team deployed.', 'Resolved', 'Gir Forest Control Room', NOW(), NOW()),
(4, '2025-06-10', 'Sundarbans North Channel', 'Arpita Dey', 'Illegal timber floating seen in river.', 'Alert sent to coastal police.', 'Escalated', 'West Bengal Forest Dept', NOW(), NOW()),
(5, '2025-06-08', 'Kaziranga Block F', 'Rohit Das', 'Fresh tracks of vehicle entering restricted zone.', 'Area scanned via drone.', 'Monitoring', 'Kaziranga Surveillance Unit', NOW(), NOW()),
(6, '2025-05-22', 'Periyar Eastern Trail', 'Nisha Menon', 'Logs hidden under foliage.', 'Temporary post set up.', 'Resolved', 'Periyar Wildlife Division', NOW(), NOW()),
(7, '2025-05-30', 'Melghat Core Forest', 'Anil Pawar', 'Locals spotted with axes during patrol.', 'Questioning initiated.', 'Under Investigation', 'Melghat Forest HQ', NOW(), NOW()),
(8, '2025-06-12', 'Simlipal Zone H4', 'Rajeev Nayak', '10 trees cut near tribal border.', 'Notices sent to nearby village.', 'Pending', 'Simlipal Division Office', NOW(), NOW()),
(9, '2025-06-14', 'Silent Valley South', 'Kavita Iyer', 'Firewood collection from protected species seen.', 'Forest guard reprimanded offenders.', 'Resolved', 'Kerala Forest Dept', NOW(), NOW()),
(10, '2025-06-04', 'Satpura Ridge Side', 'Rahul Jadhav', 'Poachers using logs as cover.', 'Joint operation planned.', 'Under Surveillance', 'MP Forest Intelligence', NOW(), NOW()),
(11, '2025-05-15', 'Bhadra Western Fringe', 'Sushma Rao', 'Large scale stump field found.', 'Reported to police.', 'Escalated', 'Bhadra Forest Authority', NOW(), NOW()),
(12, '2025-05-29', 'Anamalai Section N2', 'Vignesh Iyer', 'Suspected illegal sawmill operation.', 'Raided and equipment seized.', 'Resolved', 'Tamil Nadu Eco Squad', NOW(), NOW()),
(13, '2025-06-07', 'Palamau Tiger Reserve', 'Sunita Kumari', 'Local informant warned of timber trafficking.', 'Undercover team planted.', 'Ongoing', 'Jharkhand Forest Force', NOW(), NOW()),
(14, '2025-06-02', 'Dudhwa Wetlands', 'Deepak Srivastava', 'Logs tied on rafts at night.', 'Night drone footage collected.', 'Investigation Started', 'Uttar Pradesh FD', NOW(), NOW()),
(15, '2025-05-25', 'Nilgiri Trail Zone', 'Farida Khan', 'Motorbike trail through forest noted.', 'Fencing planned.', 'Preventive Action', 'Ooty Forest Office', NOW(), NOW()),
(16, '2025-06-11', 'Namdapha East Ridge', 'Tashi Bhutia', 'Illegal paths carved for tree transport.', 'Mapping & watch tower planned.', 'Monitoring', 'Arunachal FD', NOW(), NOW()),
(17, '2025-05-31', 'Bhitar Kanika Island Side', 'Maria Pinto', 'Sundari trees damaged.', 'Local community questioned.', 'Under Investigation', 'Odisha Forest Circle', NOW(), NOW()),
(18, '2025-06-09', 'Sariska Hillside', 'Dinesh Chauhan', 'Small trucks moving after dusk.', 'Checkpost alerts issued.', 'Watch Initiated', 'Sariska Anti-Poaching Cell', NOW(), NOW()),
(19, '2025-06-03', 'Koundinya Wildlife Stretch', 'Ajay Reddy', 'Noise and illegal axe use heard by tourist.', 'Spot sealed for now.', 'Pending', 'Andhra FD Enforcement', NOW(), NOW()),
(20, '2025-06-13', 'Kanha Zone C2', 'Meena Verma', 'Tree markings for cutting seen in core area.', 'Markings removed, patrol intensified.', 'Resolved', 'Kanha Tiger Reserve Control', NOW(), NOW());

-- to display table data
select * from IllegalLoggingReports;

-- to remove complete records from table
truncate table IllegalLoggingReports;

-- to remove complete records and attributes from table
drop table IllegalLoggingReports;

-- 1. Create table
CREATE TABLE IllegalLoggingReports (
  id INT PRIMARY KEY,
  report_date DATE,
  location VARCHAR(100),
  reporter_name VARCHAR(100),
  description TEXT,
  action_taken TEXT,
  status VARCHAR(20),
  authority_contacted VARCHAR(100),
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add 'severity' column
ALTER TABLE IllegalLoggingReports ADD severity VARCHAR(20);

-- 3. Make reporter_name NOT NULL
ALTER TABLE IllegalLoggingReports MODIFY reporter_name VARCHAR(100) NOT NULL;

-- 4. Change status length
ALTER TABLE IllegalLoggingReports MODIFY status VARCHAR(30);

-- 5. Drop the 'severity' column
ALTER TABLE IllegalLoggingReports DROP COLUMN severity;

-- 6. Rename table to `LoggingReports`
ALTER TABLE IllegalLoggingReports RENAME TO LoggingReports;

-- 7. Insert a new report
INSERT INTO LoggingReports 
VALUES (21,'2025-06-14','Gir North Edge','A. Kumar','Trees marked','Analysis pending','Pending','Gir Forest Office',NOW(),NOW());

-- 8. Batch insert two reports
INSERT INTO LoggingReports  VALUES
(22,'2025-06-15','Bandipur Core','R. Singh','Axing heard','Patrol dispatched','Under Investigation','Bandipur HQ',NOW(),NOW()),
(23,'2025-06-16','Kaziranga East','M. Sharma','Logs loaded','Checkpoint set','Monitoring','Kaziranga Dept',NOW(),NOW());

-- 9. Update resolved reports
UPDATE LoggingReports
SET status='Resolved', updated_at=NOW()
WHERE id = 2;

-- 10. Append resolution info
UPDATE LoggingReports
SET action_taken = CONCAT(action_taken, ' - Follow-up scheduled.'), updated_at=NOW()
WHERE status = 'Monitoring';

-- 11. Delete outdated records
DELETE FROM LoggingReports
WHERE report_date < '2025-05-01';

-- 12. Remove test entries
DELETE FROM LoggingReports WHERE id > 20;

-- 13. View all reports
SELECT * FROM LoggingReports;

-- 14. Pending investigations
SELECT * FROM LoggingReports WHERE status='Pending';

-- 15. Recent reports last week
SELECT * FROM LoggingReports
WHERE report_date >= CURDATE() - INTERVAL 7 DAY;

-- 16. Count by status
SELECT status, COUNT(*) AS count
FROM LoggingReports GROUP BY status;

-- 17. Earliest and latest report dates
SELECT MIN(report_date) AS first_report, MAX(report_date) AS last_report
FROM LoggingReports;

-- 18. Reports per location
SELECT location, COUNT(*) AS total
FROM LoggingReports GROUP BY location HAVING total > 2;

-- 19. Reports involving 'axes'
SELECT * FROM LoggingReports
WHERE description LIKE '%axe%';

-- 20. Mask reporter contact
SELECT id, reporter_name, CONCAT(LEFT(reporter_name,2),'***') AS reporter_mask
FROM LoggingReports;

-- 21. Days since report
SELECT id, DATEDIFF(CURDATE(), report_date) AS days_ago
FROM LoggingReports;

-- 22. Latest updates
SELECT id, updated_at FROM LoggingReports ORDER BY updated_at DESC LIMIT 5;

-- 23. Reports per authority
SELECT authority_contacted, COUNT(*) AS cnt
FROM LoggingReports GROUP BY authority_contacted;

-- 24. Join with Ranger table
SELECT lr.*, r.name AS ranger_name
FROM LoggingReports lr
JOIN Rangers r ON lr.location LIKE CONCAT('%', r.zone_assigned, '%');

-- 25. Locations without reports
SELECT z.zone_name
FROM Zones z
LEFT JOIN LoggingReports lr ON z.zone_name = lr.location
WHERE lr.id IS NULL;

-- 26. Reports older than average days
SELECT *
FROM LoggingReports
WHERE DATEDIFF(CURDATE(), report_date) >
      (SELECT AVG(DATEDIFF(CURDATE(), report_date)) FROM LoggingReports);

-- 27. Latest report per location
SELECT lr1.*
FROM LoggingReports lr1
WHERE report_date = (
  SELECT MAX(report_date)
  FROM LoggingReports lr2
  WHERE lr2.location = lr1.location
);

-- 28. Under investigation count per authority
SELECT authority_contacted, COUNT(*) AS pending
FROM LoggingReports
WHERE status LIKE '%Investigation%'
GROUP BY authority_contacted;

-- 29. Create responses with cascade
CREATE TABLE ReportResponses (
  response_id INT PRIMARY KEY,
  report_id INT,
  responder VARCHAR(100),
  response_time DATETIME,
  notes TEXT,
  FOREIGN KEY(report_id)
    REFERENCES LoggingReports(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 30. Insert a response
INSERT INTO ReportResponses VALUES (1,1,'Forest Office','2025-06-02','Confirmed patrol');

-- 31. Deleting a report cascades
DELETE FROM LoggingReports WHERE id = 1;

-- 32. Updating report ID cascades
UPDATE LoggingReports SET id = 3 WHERE id = 2;

-- 33. Rank reports by recency per location
SELECT id, location, report_date,
  RANK() OVER (PARTITION BY location ORDER BY report_date DESC) AS rank_loc
FROM LoggingReports;

-- 34. Previous report date per location
SELECT id, location, report_date,
  LAG(report_date) OVER (PARTITION BY location ORDER BY report_date) AS prev_report
FROM LoggingReports;

-- 35. Days between reports
SELECT id, location, report_date,
  DATEDIFF(report_date,
    LAG(report_date) OVER (PARTITION BY location ORDER BY report_date)
  ) AS days_since_prev
FROM LoggingReports;

-- 36. Cumulative report count
SELECT location, report_date,
  COUNT(*) OVER (PARTITION BY location ORDER BY report_date) AS cum_count
FROM LoggingReports;

-- 37. Locations with >2 reports
WITH loc_counts AS (
  SELECT location, COUNT(*) AS cnt
  FROM LoggingReports GROUP BY location
)
SELECT * FROM loc_counts WHERE cnt > 2;

-- 38. Average days to update report
WITH avg_update AS (
  SELECT AVG(DATEDIFF(updated_at, report_date)) AS avg_days
  FROM LoggingReports
  WHERE status='Resolved'
)
SELECT avg_days FROM avg_update;

-- 39. Sequence generator 1–5
WITH RECURSIVE seq(n) AS (
  SELECT 1
  UNION ALL
  SELECT n+1 FROM seq WHERE n < 5
)
SELECT * FROM seq;

-- 40. Hypothetical report chain by time
WITH RECURSIVE report_chain AS (
  SELECT id, report_date FROM LoggingReports WHERE id = 1
  UNION ALL
  SELECT lr.id, lr.report_date
  FROM LoggingReports lr
  JOIN report_chain rc ON lr.report_date > rc.report_date
)
SELECT * FROM report_chain;

-- 41. Union of resolved and escalated
SELECT * FROM LoggingReports WHERE status='Resolved'
UNION
SELECT * FROM LoggingReports WHERE status='Escalated';

-- 42. Intersection: pending and under investigation
SELECT id FROM LoggingReports WHERE status LIKE '%Investigation%';

-- 43. Exclude closed statuses
SELECT * FROM LoggingReports WHERE status IN ('Resolved','Escalated');

-- 44. Pagination example
SELECT * FROM LoggingReports ORDER BY report_date DESC LIMIT 10 OFFSET 10;

-- 45. Delete reports with no authority contacted
DELETE FROM LoggingReports WHERE authority_contacted IS NULL;

-- 46. Flag urgent reports
UPDATE LoggingReports
SET status = 'Urgent', updated_at = NOW()
WHERE status='Pending' AND report_date < CURDATE() - INTERVAL 7 DAY;

-- 47. Top 3 recent per location
WITH ranked AS (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY location ORDER BY report_date DESC) AS rn
  FROM LoggingReports
)
SELECT id, location, report_date FROM ranked WHERE rn <= 3;

-- 48. Days to next report per location
SELECT id, location, report_date,
  DATEDIFF(
    LEAD(report_date) OVER (PARTITION BY location ORDER BY report_date),
    report_date
  ) AS days_to_next
FROM LoggingReports;

-- 49. Delete single-report locations
DELETE FROM LoggingReports
WHERE location IN (
  SELECT location FROM LoggingReports GROUP BY location HAVING COUNT(*) = 1
);

-- 50. Archive old resolved reports
UPDATE LoggingReports
SET status='Archived', updated_at=NOW()
WHERE status='Resolved' AND report_date < DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- Table 23: ForestBoundaries
CREATE TABLE  ForestBoundaries (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    area_sq_km FLOAT,
    boundary_type VARCHAR(50),
    established_date DATE,
    location VARCHAR(100),
    map_reference TEXT,
    status VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO ForestBoundaries (id, name, area_sq_km, boundary_type, established_date, location, map_reference, status, created_at, updated_at) VALUES
(1, 'Kanha North Boundary', 245.6, 'Core', '2005-03-15', 'Kanha Zone A1', 'MAP_KNH_001', 'Active', NOW(), NOW()),
(2, 'Bandipur Eastern Line', 187.3, 'Buffer', '2010-08-21', 'Bandipur Zone B2', 'MAP_BDP_002', 'Active', NOW(), NOW()),
(3, 'Gir West Outer Ring', 302.1, 'Protected', '2008-01-10', 'Gir Zone C3', 'MAP_GIR_003', 'Active', NOW(), NOW()),
(4, 'Kaziranga Floodplain Boundary', 275.9, 'Seasonal', '2012-07-05', 'Kaziranga Zone D4', 'MAP_KZR_004', 'Monitoring', NOW(), NOW()),
(5, 'Sundarbans Delta Limit', 430.2, 'Coastal', '2001-12-01', 'Sundarbans South Block', 'MAP_SDB_005', 'Active', NOW(), NOW()),
(6, 'Periyar Wildlife Line', 215.4, 'Core', '2007-06-18', 'Periyar Zone E5', 'MAP_PRY_006', 'Active', NOW(), NOW()),
(7, 'Satpura Inner Circle', 168.8, 'Buffer', '2003-11-22', 'Satpura Zone F6', 'MAP_STP_007', 'Under Survey', NOW(), NOW()),
(8, 'Melghat Edge Border', 291.5, 'Protected', '2006-04-13', 'Melghat Zone G7', 'MAP_MGT_008', 'Active', NOW(), NOW()),
(9, 'Silent Valley Perimeter', 123.7, 'Core', '2011-09-30', 'Silent Valley Zone H8', 'MAP_SLV_009', 'Active', NOW(), NOW()),
(10, 'Simlipal Wildlife Line', 332.6, 'Core', '2009-02-17', 'Simlipal Zone I9', 'MAP_SMP_010', 'Monitoring', NOW(), NOW()),
(11, 'Palamau Tiger Fence', 210.0, 'Protected', '2013-05-14', 'Palamau Zone J10', 'MAP_PLM_011', 'Active', NOW(), NOW()),
(12, 'Dudhwa Outer Ring', 298.1, 'Buffer', '2005-08-01', 'Dudhwa Zone K11', 'MAP_DDW_012', 'Active', NOW(), NOW()),
(13, 'Nilgiri Hills Line', 320.3, 'Mountain', '2010-10-25', 'Nilgiri Zone L12', 'MAP_NLG_013', 'Active', NOW(), NOW()),
(14, 'Namdapha Eastern Ridge', 175.9, 'Core', '2014-06-09', 'Namdapha Zone M13', 'MAP_NDP_014', 'Monitoring', NOW(), NOW()),
(15, 'Anamalai East Division', 240.5, 'Protected', '2015-01-30', 'Anamalai Zone N14', 'MAP_ANM_015', 'Active', NOW(), NOW()),
(16, 'Bhitar Kanika Creek Line', 198.7, 'Coastal', '2002-12-10', 'Bhitar Kanika Zone O15', 'MAP_BTK_016', 'Active', NOW(), NOW()),
(17, 'Koundinya Trail Border', 265.4, 'Core', '2006-03-22', 'Koundinya Zone P16', 'MAP_KDY_017', 'Under Review', NOW(), NOW()),
(18, 'Sariska Western Limit', 155.8, 'Buffer', '2004-07-11', 'Sariska Zone Q17', 'MAP_SRS_018', 'Active', NOW(), NOW()),
(19, 'Bhadra South Segment', 223.0, 'Core', '2008-09-16', 'Bhadra Zone R18', 'MAP_BHD_019', 'Monitoring', NOW(), NOW()),
(20, 'Kanha Buffer Expansion', 300.2, 'Buffer', '2020-03-03', 'Kanha Zone A2', 'MAP_KNH_020', 'Proposed', NOW(), NOW());

-- to display table data
select * from ForestBoundaries;

-- to remove complete records from table
truncate table ForestBoundaries;

-- to remove complete records and attributes from table
drop table ForestBoundaries;

-- 1. Create the ForestBoundaries table
CREATE TABLE ForestBoundaries (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  area_sq_km FLOAT,
  boundary_type VARCHAR(50),
  established_date DATE,
  location VARCHAR(100),
  map_reference TEXT,
  status VARCHAR(20),
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add a 'region' column
ALTER TABLE ForestBoundaries ADD region VARCHAR(50);

-- 3. Make 'status' NOT NULL
ALTER TABLE ForestBoundaries MODIFY status VARCHAR(20) NOT NULL;

-- 4. Change 'area_sq_km' precision
ALTER TABLE ForestBoundaries MODIFY area_sq_km DECIMAL(7,2);

-- 5. Rename 'map_reference' to 'map_id'
ALTER TABLE ForestBoundaries CHANGE map_reference map_id VARCHAR(50);

-- 6. Rename table to `Boundaries`
ALTER TABLE ForestBoundaries RENAME TO Boundaries;

-- 7. Insert a new boundary
INSERT INTO Boundaries VALUES (21, 'Demo Boundary', 110.5, 'Core', '2021-01-01','Demo Zone','MAP_DEMO','Proposed',NOW(),NOW());

-- 8. Bulk insert two records
INSERT INTO Boundaries VALUES
(22,'Test Boundary','Buffer',120.0,'2022-02-02','Test Zone','MAP_TST','Monitoring',NOW(),NOW()),
(23,'East Boundary','Protected',130.0,'2023-03-03','East Zone','MAP_EST','Active',NOW(),NOW());

-- 9. Update boundary status to 'Archived'
UPDATE Boundaries
SET status='Archived', updated_at=NOW()
WHERE established_date < '2005-01-01';

-- 10. Increase area by 5% for buffer types
UPDATE Boundaries
SET area_sq_km = area_sq_km * 1.05, updated_at=NOW()
WHERE boundary_type='Buffer';

-- 11. Delete old proposed boundaries
DELETE FROM Boundaries WHERE status='Proposed';

-- 12. Clean up test records
DELETE FROM Boundaries WHERE id > 20;

-- 13. View all boundaries
SELECT * FROM Boundaries;

-- 14. Filter by boundary_type='Core'
SELECT * FROM Boundaries WHERE boundary_type='Core';

-- 15. Boundaries established after 2010
SELECT * FROM Boundaries WHERE established_date > '2010-01-01';

-- 16. Count by status
SELECT status, COUNT(*) AS cnt FROM Boundaries GROUP BY status;

-- 17. Max & min area_sq_km
SELECT MAX(area_sq_km) AS max_area, MIN(area_sq_km) AS min_area FROM Boundaries;

-- 18. Average area by type
SELECT boundary_type, AVG(area_sq_km) AS avg_area GROUP BY boundary_type;

-- 19. Recent boundaries (last 5 years)
SELECT * FROM Boundaries WHERE established_date >= CURDATE() - INTERVAL 5 YEAR;

-- 20. Alias area as size_km2
SELECT id, name, area_sq_km AS size_km2 FROM Boundaries;

-- 21. Name length in characters
SELECT id, CHAR_LENGTH(name) AS name_len FROM Boundaries;

-- 22. Locations grouped by status
SELECT status, GROUP_CONCAT(DISTINCT location) AS locations FROM Boundaries GROUP BY status;

-- 23. Only large Core areas
SELECT * FROM Boundaries WHERE boundary_type='Core' AND area_sq_km > 200;

-- 24. Join to Zones table
SELECT b.*, z.zone_manager
FROM Boundaries b
JOIN Zones z ON b.location = z.zone_name;

-- 25. Locations missing boundaries
SELECT z.zone_name
FROM Zones z
LEFT JOIN Boundaries b ON b.location = z.zone_name
WHERE b.id IS NULL;

-- 26. Areas larger than average
SELECT * FROM Boundaries
WHERE area_sq_km > (SELECT AVG(area_sq_km) FROM Boundaries);

-- 27. Latest boundary per type
SELECT * FROM Boundaries x
WHERE established_date = (
  SELECT MAX(established_date) FROM Boundaries y WHERE y.boundary_type = x.boundary_type
);

-- 28. Count buffers per region
SELECT region, COUNT(*) AS buffer_count
FROM Boundaries WHERE boundary_type='Buffer'
GROUP BY region;

-- 29. Create logs with cascade
CREATE TABLE BoundaryLogs (
  log_id INT PRIMARY KEY,
  boundary_id INT,
  event_date DATETIME,
  note TEXT,
  FOREIGN KEY(boundary_id)
    REFERENCES Boundaries(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 30. Insert a log entry
INSERT INTO BoundaryLogs VALUES (1,1,NOW(),'Updated GPS reference');

-- 31. Deletion cascades to logs
DELETE FROM Boundaries WHERE id = 1;

-- 32. ID update cascades to logs
UPDATE Boundaries SET id = 5 WHERE id = 2;

-- 33. Rank by area within type
SELECT id, boundary_type, area_sq_km,
  RANK() OVER(PARTITION BY boundary_type ORDER BY area_sq_km DESC) AS rk
FROM Boundaries;  -- window functions :contentReference[oaicite:4]{index=4}

-- 34. Previous area by type
SELECT id, boundary_type, area_sq_km,
  LAG(area_sq_km) OVER(PARTITION BY boundary_type ORDER BY area_sq_km) AS prev_area
FROM Boundaries;  -- LAG/LEAD usage :contentReference[oaicite:5]{index=5}

-- 35. Area difference to previous
SELECT id, boundary_type, area_sq_km,
  area_sq_km - LAG(area_sq_km) OVER(PARTITION BY boundary_type ORDER BY area_sq_km) AS diff_prev
FROM Boundaries;

-- 36. Count boundaries by type via CTE
WITH type_counts AS (
  SELECT boundary_type, COUNT(*) AS cnt
  FROM Boundaries GROUP BY boundary_type
)
SELECT * FROM type_counts WHERE cnt > 2;

-- 37. Large cores established recently
WITH recent_cores AS (
  SELECT * FROM Boundaries
  WHERE boundary_type='Core' AND established_date > '2015-01-01'
)
SELECT COUNT(*) AS num_recent FROM recent_cores;

-- 38. Generate numbers 1–5
WITH RECURSIVE seq(n) AS (
  SELECT 1
  UNION ALL
  SELECT n+1 FROM seq WHERE n < 5
)
SELECT * FROM seq;  -- example of recursive CTE

-- 39. Hypothetical boundary chain by date
WITH RECURSIVE bc(id, established_date) AS (
  SELECT id, established_date FROM Boundaries WHERE id=1
  UNION ALL
  SELECT b.id, b.established_date
  FROM Boundaries b
  JOIN bc ON b.established_date > bc.established_date
)
SELECT * FROM bc;

-- 40. Union Active & Monitoring
SELECT * FROM Boundaries WHERE status='Active'
UNION
SELECT * FROM Boundaries WHERE status='Monitoring';

-- 41. Intersection: Buffer & large
SELECT id FROM Boundaries WHERE area_sq_km > 250;

-- 42. Exclude small boundaries
SELECT * FROM Boundaries WHERE area_sq_km < 150;

-- 43. Show rows 11–20
SELECT * FROM Boundaries ORDER BY id LIMIT 10 OFFSET 10;  -- pagination :contentReference[oaicite:6]{index=6}

-- 44. Delete boundaries unestablished
DELETE FROM Boundaries WHERE established_date IS NULL;

-- 45. Flag large cores
UPDATE Boundaries
SET status='LargeCore', updated_at=NOW()
WHERE boundary_type='Core' AND area_sq_km > 300;

-- 46. Top 3 largest per type
WITH ranked AS (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY boundary_type ORDER BY area_sq_km DESC) AS rn
  FROM Boundaries
)
SELECT * FROM ranked WHERE rn <= 3;

-- 47. Gap in establishment per type
SELECT id, boundary_type, established_date,
  DATEDIFF(established_date,
    LAG(established_date) OVER (PARTITION BY boundary_type ORDER BY established_date)
  ) AS days_since_prev
FROM Boundaries;

-- 48. Delete single-boundary regions
DELETE FROM Boundaries
WHERE location IN (
  SELECT location FROM Boundaries GROUP BY location HAVING COUNT(*) = 1
);

-- 49. Label old vs new
SELECT *, CASE WHEN established_date > DATE_SUB(CURDATE(), INTERVAL 10 YEAR) THEN 'New' ELSE 'Old' END AS age_class
FROM Boundaries;

-- 50. Archive old monitoring entries
UPDATE Boundaries
SET status='Archived', updated_at=NOW()
WHERE status='Monitoring' AND established_date < DATE_SUB(CURDATE(), INTERVAL 15 YEAR);


-- Table 24: CommunityOutreach
CREATE TABLE CommunityOutreach (
    id INT PRIMARY KEY,
    program_name VARCHAR(100),
    target_group VARCHAR(100),
    event_date DATE,
    location VARCHAR(100),
    activities TEXT,
    feedback TEXT,
    status VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO CommunityOutreach (id, program_name, target_group, event_date, location, activities, feedback, status, created_at, updated_at) VALUES
(1, 'Forest Awareness Camp', 'Local Villagers', '2025-06-01', 'Kanha Zone B1', 'Tree planting, wildlife talk, quiz', 'Highly appreciated by attendees', 'Completed', NOW(), NOW()),
(2, 'Wildlife Safety Training', 'Forest Guards', '2025-05-22', 'Bandipur Training Center', 'Safety drills, first aid, rescue methods', 'Very informative', 'Completed', NOW(), NOW()),
(3, 'Student Nature Walk', 'School Children', '2025-06-05', 'Gir Forest Trail', 'Guided forest walk, animal spotting', 'Students enjoyed the experience', 'Completed', NOW(), NOW()),
(4, 'Anti-Poaching Workshop', 'Tribal Youth', '2025-06-10', 'Kaziranga Community Hall', 'Talks by officers, awareness videos', 'Encouraging feedback', 'Completed', NOW(), NOW()),
(5, 'Mangrove Day Celebration', 'Fishermen Families', '2025-05-30', 'Sundarbans Delta Village', 'Poster making, eco games', 'Good participation', 'Completed', NOW(), NOW()),
(6, 'Medicinal Plant Awareness', 'Women Self-Help Group', '2025-06-15', 'Silent Valley Eco Center', 'Herb ID session, cultivation demo', 'Very useful and requested follow-up', 'Completed', NOW(), NOW()),
(7, 'Eco-Warrior Training', 'College Students', '2025-06-08', 'Satpura Forest Base Camp', 'Camp setup, camera trapping, trekking', 'Well-organized', 'Completed', NOW(), NOW()),
(8, 'Rainwater Harvesting Drive', 'Village Elders', '2025-05-28', 'Melghat Gram Panchayat', 'Model setup, expert lecture', 'Positive reception', 'Completed', NOW(), NOW()),
(9, 'Forest Rights Dialogue', 'Tribal Representatives', '2025-06-12', 'Simlipal Auditorium', 'Open discussion, legal overview', 'Productive interaction', 'Completed', NOW(), NOW()),
(10, 'Fire Safety Demo', 'Rural Schools', '2025-06-03', 'Palamau Block High School', 'Live demo, evacuation drill', 'Highly engaging', 'Completed', NOW(), NOW()),
(11, 'Photography Contest', 'Nature Enthusiasts', '2025-06-11', 'Dudhwa Nature Park', 'Photo walk, exhibition, prizes', 'Well-attended event', 'Completed', NOW(), NOW()),
(12, 'Eco Quiz Challenge', 'High School Students', '2025-05-25', 'Periyar Zilla School', 'Forest-related quiz, prizes', 'Very enthusiastic participants', 'Completed', NOW(), NOW()),
(13, 'Green Crafts Workshop', 'Rural Women', '2025-06-06', 'Nilgiri Forest Resource Center', 'Making products from forest waste', 'Skillful and well-received', 'Completed', NOW(), NOW()),
(14, 'Butterfly Watching Tour', 'College Naturalists', '2025-06-14', 'Anamalai Hills Edge', 'Field tour, species ID session', 'Beautiful experience', 'Completed', NOW(), NOW()),
(15, 'Eco Film Screening', 'Youth Clubs', '2025-06-09', 'Bhitar Kanika Village Center', 'Screening, group discussion', 'Very impactful', 'Completed', NOW(), NOW()),
(16, 'Wildlife Protection Pledge', 'School Children', '2025-06-02', 'Sariska Govt School', 'Talk, oath ceremony, poster activity', 'Memorable for kids', 'Completed', NOW(), NOW()),
(17, 'Clean Forest Campaign', 'Forest Department Staff', '2025-06-04', 'Namdapha Zone', 'Forest cleaning, waste audit', 'Great teamwork', 'Completed', NOW(), NOW()),
(18, 'Bird Watching Workshop', 'Photography Club', '2025-06-13', 'Koundinya Watch Point', 'Binocular training, bird call ID', 'Loved by all', 'Completed', NOW(), NOW()),
(19, 'Forest Fair', 'General Public', '2025-06-07', 'Kanha Visitor Center', 'Stalls, games, food, awareness', 'Huge turnout', 'Completed', NOW(), NOW()),
(20, 'Eco Literacy Drive', 'Rural Schools', '2025-06-16', 'Bhadra Taluka', 'Storytelling, drawing, booklet distribution', 'Engaged students effectively', 'Completed', NOW(), NOW());

-- to display table data
select * from  CommunityOutreach;

-- to remove complete records from table
truncate table  CommunityOutreach;

-- to remove complete records and attributes from table
drop table  CommunityOutreach;

-- 1. Create table
CREATE TABLE CommunityOutreach (
  id INT PRIMARY KEY,
  program_name VARCHAR(100),
  target_group VARCHAR(100),
  event_date DATE,
  location VARCHAR(100),
  activities TEXT,
  feedback TEXT,
  status VARCHAR(20),
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add 'organizer' column
ALTER TABLE CommunityOutreach ADD organizer VARCHAR(100);

-- 3. Make status NOT NULL
ALTER TABLE CommunityOutreach MODIFY status VARCHAR(20) NOT NULL;

-- 4. Extend event_date precision
ALTER TABLE CommunityOutreach MODIFY event_date DATETIME;

-- 5. Rename 'feedback' to 'participant_feedback'
ALTER TABLE CommunityOutreach CHANGE feedback participant_feedback TEXT;

-- 6. Rename table to `OutreachPrograms`
ALTER TABLE CommunityOutreach RENAME TO OutreachPrograms;

-- 7. Insert a new program
INSERT INTO OutreachPrograms
VALUES (21,'Forest Clean-up','Local Volunteers','2025-06-20','Gir Forest','Clean drive','Great turnout','Completed',NOW(),NOW(),'NGO Partner');

-- 8. Bulk insert two programs
INSERT INTO OutreachPrograms VALUES
(22,'Bird Day','Bird Watchers','2025-06-18','Bhadra','Bird talk','Informative','Completed',NOW(),NOW(),'Ornithology Club'),
(23,'Eco Film Fest','General Public','2025-06-17','Sundarbans','Film screening','Well-received','Completed',NOW(),NOW(),'Forest Dept');

-- 9. Update upcoming events to scheduled
UPDATE OutreachPrograms
SET status='Scheduled', updated_at=NOW()
WHERE event_date > CURDATE();

-- 10. Append feedback to completed events
UPDATE OutreachPrograms
SET participant_feedback = CONCAT(participant_feedback, ' Thank you!'), updated_at=NOW()
WHERE status='Completed';

-- 11. Delete old events before June 1, 2025
DELETE FROM OutreachPrograms WHERE event_date < '2025-06-01';

-- 12. Cleanup test IDs
DELETE FROM OutreachPrograms WHERE id > 20;

-- 13. Select all events
SELECT * FROM OutreachPrograms;

-- 14. Completed events only
SELECT * FROM OutreachPrograms WHERE status='Completed';

-- 15. Events in June 2025
SELECT * FROM OutreachPrograms
WHERE event_date BETWEEN '2025-06-01' AND '2025-06-30';

-- 16. Count events per status
SELECT status, COUNT(*) AS total FROM OutreachPrograms GROUP BY status;

-- 17. Earliest and latest program
SELECT MIN(event_date) AS earliest, MAX(event_date) AS latest FROM OutreachPrograms;

-- 18. Events per target group
SELECT target_group, COUNT(*) AS cnt
FROM OutreachPrograms GROUP BY target_group;

-- 19. Programs with 'forest' in name
SELECT * FROM OutreachPrograms WHERE program_name LIKE '%Forest%';

-- 20. Program name lengths
SELECT id, CHAR_LENGTH(program_name) AS name_len FROM OutreachPrograms;

-- 21. Events without feedback
SELECT * FROM OutreachPrograms WHERE participant_feedback IS NULL OR participant_feedback = '';

-- 22. Days since program date
SELECT id, DATEDIFF(CURDATE(), event_date) AS days_ago FROM OutreachPrograms;

-- 23. List upcoming events
SELECT * FROM OutreachPrograms WHERE event_date > CURDATE() ORDER BY event_date ASC;

-- 24. Join with Zones to fetch zone manager
SELECT o.*, z.manager
FROM OutreachPrograms o
JOIN Zones z ON o.location = z.zone_name;

-- 25. Find locations with no outreach
SELECT z.zone_name
FROM Zones z
LEFT JOIN OutreachPrograms o ON z.zone_name = o.location
WHERE o.id IS NULL;

-- 26. Programs with above-average attendance (if attendance column existed)
SELECT * FROM OutreachPrograms
WHERE attendance > (SELECT AVG(attendance) FROM OutreachPrograms);

-- 27. Most recent event per target group
SELECT o1.*
FROM OutreachPrograms o1
WHERE event_date = (
  SELECT MAX(event_date)
  FROM OutreachPrograms o2
  WHERE o2.target_group = o1.target_group
);

-- 28. Completed count per organizer
SELECT organizer, COUNT(*) AS completed_count
FROM OutreachPrograms
WHERE status='Completed'
GROUP BY organizer;

-- 29. Create child table with cascade delete
CREATE TABLE OutreachFeedback (
  feedback_id INT PRIMARY KEY,
  outreach_id INT,
  feedback_text TEXT,
  feedback_date DATETIME,
  FOREIGN KEY (outreach_id)
    REFERENCES OutreachPrograms(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 30. Insert a feedback record
INSERT INTO OutreachFeedback VALUES (1,1,'Loved the event','2025-06-02');

-- 31. Deleting outreach cascades feedback
DELETE FROM OutreachPrograms WHERE id = 1;

-- 32. Updating primary key cascades update
UPDATE OutreachPrograms SET id = 5 WHERE id = 2;

-- 33. Rank programs by date in each target group
SELECT id, target_group, event_date,
  RANK() OVER (PARTITION BY target_group ORDER BY event_date DESC) AS date_rank
FROM OutreachPrograms;  -- window functions supported across SQL platforms :contentReference[oaicite:8]{index=8}

-- 34. Previous event date per group
SELECT id, target_group, event_date,
  LAG(event_date) OVER (PARTITION BY target_group ORDER BY event_date) AS prev_event
FROM OutreachPrograms;

-- 35. Next event date per group
SELECT id, target_group, event_date,
  LEAD(event_date) OVER (PARTITION BY target_group ORDER BY event_date) AS next_event
FROM OutreachPrograms;

-- 36. Count events per group via CTE
WITH grp_counts AS (
  SELECT target_group, COUNT(*) AS cnt
  FROM OutreachPrograms
  GROUP BY target_group
)
SELECT * FROM grp_counts WHERE cnt > 1;

-- 37. Identify recent completed events
WITH recent AS (
  SELECT * FROM OutreachPrograms
  WHERE status='Completed' AND event_date >= CURDATE() - INTERVAL 30 DAY
)
SELECT COUNT(*) AS recent_count FROM recent;

-- 38. Generate numbers 1–5
WITH RECURSIVE seq(n) AS (
  SELECT 1
  UNION ALL
  SELECT n+1 FROM seq WHERE n < 5
)
SELECT * FROM seq;

-- 39. Build event chain over time
WITH RECURSIVE chain AS (
  SELECT id, event_date FROM OutreachPrograms WHERE id = 1
  UNION ALL
  SELECT o.id, o.event_date
  FROM OutreachPrograms o
  JOIN chain c ON o.event_date > c.event_date
)
SELECT * FROM chain;

-- 40. Union of Completed & Scheduled
SELECT * FROM OutreachPrograms WHERE status='Completed'
UNION
SELECT * FROM OutreachPrograms WHERE status='Scheduled';

-- 41. Intersection of Completed & in June
SELECT id FROM OutreachPrograms WHERE status='Completed';

-- 42. Exclude old events
SELECT * FROM OutreachPrograms WHERE event_date < '2025-06-01';

-- 43. Pagination: rows 11–20
SELECT * FROM OutreachPrograms ORDER BY event_date DESC LIMIT 10 OFFSET 10;  

-- 44. Delete events with no feedback
DELETE FROM OutreachPrograms WHERE participant_feedback IS NULL;

-- 45. Flag long programs
UPDATE OutreachPrograms
SET status='Flagged', updated_at=NOW()
WHERE CHAR_LENGTH(activities) > 200;

-- 46. Top 3 most recent events per group
WITH ranked AS (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY target_group ORDER BY event_date DESC) AS rn
  FROM OutreachPrograms
)
SELECT * FROM ranked WHERE rn <= 3;

-- 47. Gap between events per group
SELECT id, target_group, event_date,
  DATEDIFF(
    event_date,
    LAG(event_date) OVER (PARTITION BY target_group ORDER BY event_date)
  ) AS days_since_last
FROM OutreachPrograms;

-- 48. Delete groups with single event
DELETE FROM OutreachPrograms
WHERE target_group IN (
  SELECT target_group FROM OutreachPrograms
  GROUP BY target_group HAVING COUNT(*) = 1
);

-- 49. Classify events as recent or old
SELECT *,
  CASE WHEN event_date > DATE_SUB(CURDATE(), INTERVAL 30 DAY) THEN 'Recent' ELSE 'Old' END AS age_class
FROM OutreachPrograms;

-- 50. Archive completed events older than 60 days
UPDATE OutreachPrograms
SET status='Archived', updated_at=NOW()
WHERE status='Completed' AND event_date < DATE_SUB(CURDATE(), INTERVAL 60 DAY);

-- Table 25: BudgetAllocations
CREATE TABLE BudgetAllocations (
    id INT PRIMARY KEY,
    department VARCHAR(100),
    allocation_amount DECIMAL(12,2),
    fiscal_year VARCHAR(20),
    spent_amount DECIMAL(12,2),
    purpose TEXT,
    remarks TEXT,
    status VARCHAR(20),
    created_at DATETIME,
    updated_at DATETIME
);

-- Insert 20 sample records
INSERT INTO BudgetAllocations (id, department, allocation_amount, fiscal_year, spent_amount, purpose, remarks, status, created_at, updated_at) VALUES
(1, 'Wildlife Conservation', 12000000.00, '2024-2025', 9500000.00, 'Animal habitat preservation and patrolling upgrades', 'Remaining funds to be used for surveillance drones', 'Partially Utilized', NOW(), NOW()),
(2, 'Forest Development', 8500000.00, '2024-2025', 8500000.00, 'Afforestation and reforestation projects', 'Target achieved in 9 zones', 'Utilized', NOW(), NOW()),
(3, 'Eco-Tourism', 4500000.00, '2024-2025', 2750000.00, 'Eco-tourism infrastructure and staff training', 'Phase 2 pending', 'In Progress', NOW(), NOW()),
(4, 'Research Division', 3000000.00, '2024-2025', 2950000.00, 'Species monitoring and climate impact studies', 'Final report in review', 'Utilized', NOW(), NOW()),
(5, 'Fire Control', 6200000.00, '2024-2025', 6100000.00, 'Forest fire response equipment and training', 'Fire drills completed in 14 zones', 'Utilized', NOW(), NOW()),
(6, 'Water Resources', 4200000.00, '2024-2025', 3000000.00, 'Renovation of water bodies inside forests', 'Delayed due to monsoons', 'Partially Utilized', NOW(), NOW()),
(7, 'Community Outreach', 2500000.00, '2024-2025', 2400000.00, 'Educational and awareness programs', 'Feedback positive across districts', 'Utilized', NOW(), NOW()),
(8, 'Anti-Poaching Unit', 9800000.00, '2024-2025', 8100000.00, 'Surveillance, hiring, and technology upgrades', 'Night vision units pending', 'In Progress', NOW(), NOW()),
(9, 'Nursery Management', 1600000.00, '2024-2025', 1600000.00, 'Maintenance and seedling production', 'Stock targets exceeded', 'Utilized', NOW(), NOW()),
(10, 'Forest Boundary Mapping', 5000000.00, '2024-2025', 4500000.00, 'Satellite imagery and GIS mapping', 'Reports due next quarter', 'Ongoing', NOW(), NOW()),
(11, 'IT Infrastructure', 2700000.00, '2024-2025', 2650000.00, 'System upgrades, portals, and DBMS licenses', 'Successful cloud transition', 'Utilized', NOW(), NOW()),
(12, 'Training & Development', 1900000.00, '2024-2025', 1700000.00, 'Workshops for forest officers and staff', '2 sessions postponed', 'In Progress', NOW(), NOW()),
(13, 'Vehicles & Patrol', 7600000.00, '2024-2025', 7100000.00, 'Jeeps, bikes, and patrolling logistics', 'Final batch pending delivery', 'In Progress', NOW(), NOW()),
(14, 'Tree Species Research', 2100000.00, '2024-2025', 1850000.00, 'Cataloging and DNA mapping of native species', 'Laboratory report awaited', 'Ongoing', NOW(), NOW()),
(15, 'Weather Station Setup', 3100000.00, '2024-2025', 2900000.00, 'Automated weather stations across regions', '15 stations installed', 'Utilized', NOW(), NOW()),
(16, 'Legal & Land Rights', 2200000.00, '2024-2025', 1800000.00, 'Legal review and tribal rights coordination', 'Awaiting district nods', 'Partially Utilized', NOW(), NOW()),
(17, 'Green Belt Development', 4700000.00, '2024-2025', 4400000.00, 'Perimeter plantations and fencing', 'Ongoing in southern divisions', 'In Progress', NOW(), NOW()),
(18, 'Forest Monitoring Drones', 5200000.00, '2024-2025', 5200000.00, 'Drone procurement and training', 'Completed under budget', 'Utilized', NOW(), NOW()),
(19, 'Public Relations & Media', 1300000.00, '2024-2025', 1100000.00, 'Forest awareness campaigns via media', 'TV campaign rolled out', 'Ongoing', NOW(), NOW()),
(20, 'Emergency Response Reserve', 3000000.00, '2024-2025', 0.00, 'Contingency fund for fire/flood response', 'Kept in reserve', 'Unutilized', NOW(), NOW());

-- to display table data
select * from BudgetAllocations;

-- to remove complete records from table
truncate table BudgetAllocations;

-- to remove complete records and attributes from table
drop table BudgetAllocations;

-- 1. Create table
CREATE TABLE BudgetAllocations (
  id INT PRIMARY KEY,
  department VARCHAR(100),
  allocation_amount DECIMAL(12,2),
  fiscal_year VARCHAR(20),
  spent_amount DECIMAL(12,2),
  purpose TEXT,
  remarks TEXT,
  status VARCHAR(20),
  created_at DATETIME,
  updated_at DATETIME
);

-- 2. Add a 'remaining_amount' column
ALTER TABLE BudgetAllocations ADD remaining_amount DECIMAL(12,2);

-- 3. Make status NOT NULL
ALTER TABLE BudgetAllocations MODIFY status VARCHAR(20) NOT NULL;

-- 4. Increase remarks length
ALTER TABLE BudgetAllocations MODIFY remarks TEXT;

-- 5. Rename 'remarks' to 'notes'
ALTER TABLE BudgetAllocations CHANGE remarks notes TEXT;

-- 6. Rename table to 'DeptBudgets'
ALTER TABLE BudgetAllocations RENAME TO DeptBudgets;

-- 7. Insert a new budget record
INSERT INTO DeptBudgets 
VALUES (21,'Training',1000000.00,'2024-2025',0.00,'Officer training','Reserved','Unutilized',NOW(),NOW(),1000000.00);

-- 8. Batch insert two records
INSERT INTO DeptBudgets VALUES
(22,'IT Support',2000000.00,'2024-2025',1500000.00,'System upgrades','In-progress','In Progress',NOW(),NOW(),500000.00),
(23,'Legal Affairs',1200000.00,'2024-2025',800000.00,'Land rights cases','Active','In Progress',NOW(),NOW(),400000.00);

-- 9. Mark fully utilized budgets as 'Utilized'
UPDATE DeptBudgets
SET status='Utilized', updated_at=NOW()
WHERE spent_amount >= allocation_amount;

-- 10. Calculate remaining amounts
UPDATE DeptBudgets
SET remaining_amount = allocation_amount - spent_amount, updated_at=NOW();

-- 11. Remove placeholder entries
DELETE FROM DeptBudgets WHERE department LIKE 'Test%';

-- 12. Clear old fiscal year records
DELETE FROM DeptBudgets WHERE fiscal_year = '2022-2023';

-- 13. View all budgets
SELECT * FROM DeptBudgets;

-- 14. Find partially utilized budgets
SELECT * FROM DeptBudgets WHERE status='Partially Utilized';

-- 15. Budgets with >50% spent
SELECT *, (spent_amount/allocation_amount)*100 AS pct_spent
FROM DeptBudgets WHERE (spent_amount/allocation_amount) > 0.5;

-- 16. Total allocation per fiscal year
SELECT fiscal_year, SUM(allocation_amount) AS total_allocated
FROM DeptBudgets GROUP BY fiscal_year;

-- 17. Departments overspending
SELECT department, spent_amount - allocation_amount AS over_by
FROM DeptBudgets WHERE spent_amount > allocation_amount;

-- 18. Average utilization
SELECT status, AVG(spent_amount/allocation_amount)*100 AS avg_util_pct
FROM DeptBudgets GROUP BY status;

-- 19. Notes length
SELECT id, CHAR_LENGTH(notes) AS note_chars FROM DeptBudgets;

-- 20. Budgets with zero spending
SELECT * FROM DeptBudgets WHERE spent_amount = 0;

-- 21. Most recent updates
SELECT department, updated_at FROM DeptBudgets ORDER BY updated_at DESC LIMIT 5;

-- 22. Dept & remaining amt
SELECT department, remaining_amount FROM DeptBudgets;

-- 23. Fully reserved budgets
SELECT * FROM DeptBudgets WHERE status='Unutilized';

-- 24. Join with Departments table
SELECT b.*, d.manager
FROM DeptBudgets b
JOIN Departments d ON b.department = d.name;

-- 25. Budget entries missing reports
SELECT b.* FROM DeptBudgets b
LEFT JOIN ExpenseReports e ON b.id = e.budget_id
WHERE e.id IS NULL;

-- 26. Budgets above average allocation
SELECT * FROM DeptBudgets
WHERE allocation_amount > (SELECT AVG(allocation_amount) FROM DeptBudgets);

-- 27. Dept with highest remaining amount
SELECT * FROM DeptBudgets WHERE remaining_amount = (
  SELECT MAX(remaining_amount) FROM DeptBudgets
);

-- 28. Partial utilization count per fiscal year
SELECT fiscal_year, COUNT(*) AS cnt
FROM DeptBudgets WHERE status='Partially Utilized'
GROUP BY fiscal_year;

-- 29. Create expense reports with FK cascade
CREATE TABLE ExpenseReports (
  report_id INT PRIMARY KEY,
  budget_id INT,
  expense_date DATE,
  amount DECIMAL(12,2),
  description TEXT,
  FOREIGN KEY(budget_id)
    REFERENCES DeptBudgets(id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 30. Insert a sample expense
INSERT INTO ExpenseReports VALUES (1,1,'2025-06-30',500000,'Drone batteries purchase');

-- 31. Deleting a budget cascades report deletion
DELETE FROM DeptBudgets WHERE id = 1;

-- 32. Updating dept ID cascades to reports
UPDATE DeptBudgets SET id = 2 WHERE id = 3;

-- 33. Rank departments by remaining funds
SELECT department, remaining_amount,
  RANK() OVER (ORDER BY remaining_amount DESC) AS rank_remain
FROM DeptBudgets;  -- window function usage :contentReference[oaicite:2]{index=2}

-- 34. Cumulative spent across fiscal years
SELECT id, fiscal_year, spent_amount,
  SUM(spent_amount) OVER (ORDER BY fiscal_year) AS cum_spent
FROM DeptBudgets;

-- 35. Previous year's allocation per dept
SELECT id, department, allocation_amount,
  LAG(allocation_amount) OVER (PARTITION BY department ORDER BY fiscal_year) AS prev_alloc
FROM DeptBudgets;  -- LAG example :contentReference[oaicite:3]{index=3}

-- 36. Departments needing review
WITH need_review AS (
  SELECT id, department, status
  FROM DeptBudgets
  WHERE remaining_amount > 1000000
)
SELECT * FROM need_review;

-- 37. Pending budget for 'In Progress'
WITH in_prog AS (
  SELECT department, (allocation_amount - spent_amount) AS pending
  FROM DeptBudgets
  WHERE status='In Progress'
)
SELECT AVG(pending) AS avg_pending FROM in_prog;

-- 38. Sequence generator 1–5
WITH RECURSIVE seq(n) AS (
  SELECT 1 UNION ALL SELECT n+1 FROM seq WHERE n < 5
)
SELECT * FROM seq;

-- 39. Budget growth chain (example)
WITH RECURSIVE chain(id, allocation_amount) AS (
  SELECT id, allocation_amount FROM DeptBudgets WHERE id=1
  UNION ALL
  SELECT b.id, b.allocation_amount
  FROM DeptBudgets b JOIN chain c
  ON b.allocation_amount > c.allocation_amount
)
SELECT * FROM chain;

-- 40. Union of utilized & unutilized
SELECT * FROM DeptBudgets WHERE status='Utilized'
UNION
SELECT * FROM DeptBudgets WHERE status='Unutilized';

-- 41. Intersection of In Progress & high allocation
SELECT id FROM DeptBudgets WHERE allocation_amount > 5000000;

-- 42. Exclude small-budget items
SELECT * FROM DeptBudgets WHERE allocation_amount < 2000000;

-- 43. Paginate rows 11–20
SELECT * FROM DeptBudgets ORDER BY id LIMIT 10 OFFSET 10;

-- 44. Delete fully spent budgets
DELETE FROM DeptBudgets WHERE spent_amount >= allocation_amount;

-- 45. Flag big budgets
UPDATE DeptBudgets
SET status='High Budget', updated_at=NOW()
WHERE allocation_amount > 8000000;

-- 46. Top 3 budgets remaining
WITH ranked AS (
  SELECT *, ROW_NUMBER() OVER (ORDER BY remaining_amount DESC) AS rn
  FROM DeptBudgets
)
SELECT department, remaining_amount FROM ranked WHERE rn <= 3;

-- 47. Gap in allocations per department
SELECT id, department, allocation_amount,
  allocation_amount - LAG(allocation_amount) OVER (ORDER BY allocation_amount) AS diff_prev
FROM DeptBudgets;

-- 48. Remove departments with single record
DELETE FROM DeptBudgets
WHERE department IN (
  SELECT department FROM DeptBudgets GROUP BY department HAVING COUNT(*) = 1
);

-- 49. Classify budgets as low or high
SELECT *,
  CASE WHEN allocation_amount > 5000000 THEN 'High' ELSE 'Low' END AS budget_tier
FROM DeptBudgets;

-- 50. Archive old fiscal year budgets
UPDATE DeptBudgets
SET status='Archived', updated_at=NOW()
WHERE fiscal_year < '2024-2025';
