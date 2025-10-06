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

-- 1. Simple SELECT
SELECT * FROM ForestZones;

-- 2. SELECT only active zones
SELECT * FROM ForestZones WHERE status='Active';

-- 3. Count of zones by zone_type
SELECT zone_type, COUNT(*) AS count_zones FROM ForestZones GROUP BY zone_type;

-- 4. Count zones by location
SELECT location, COUNT(*) AS count_location FROM ForestZones GROUP BY location;

-- 5. Max area zone
SELECT * FROM ForestZones WHERE area_sq_km=(SELECT MAX(area_sq_km) FROM ForestZones);

-- 6. Min area zone
SELECT * FROM ForestZones WHERE area_sq_km=(SELECT MIN(area_sq_km) FROM ForestZones);

-- 7. Average area
SELECT AVG(area_sq_km) AS avg_area FROM ForestZones;

-- 8. Sum of all areas
SELECT SUM(area_sq_km) AS total_area FROM ForestZones;

-- 9. Zones established after 2000
SELECT * FROM ForestZones WHERE established_date>'2000-01-01';

-- 10. Zones in Odisha
SELECT * FROM ForestZones WHERE location='Odisha';

-- 11. Order zones by area descending
SELECT * FROM ForestZones ORDER BY area_sq_km DESC;

-- 12. Order zones by name ascending
SELECT * FROM ForestZones ORDER BY name ASC;

-- 13. First 5 zones by area
SELECT * FROM ForestZones ORDER BY area_sq_km DESC LIMIT 5;

-- 14. Zones with zone_type containing 'Reserve'
SELECT * FROM ForestZones WHERE zone_type LIKE '%Reserve%';

-- 15. Zones with description length >50
SELECT * FROM ForestZones WHERE LENGTH(description)>50;

-- 16. View: Active Zones
CREATE VIEW ActiveZones AS SELECT id, name, location, zone_type, area_sq_km FROM ForestZones WHERE status='Active';

-- 17. Query the view
SELECT * FROM ActiveZones;

-- 18. CTE: Zones with large area (>1000 sq km)
WITH LargeZones AS (
    SELECT id, name, area_sq_km FROM ForestZones WHERE area_sq_km>1000
)
SELECT * FROM LargeZones;

-- 19. Window function: rank zones by area
SELECT name, area_sq_km, RANK() OVER(ORDER BY area_sq_km DESC) AS area_rank FROM ForestZones;

-- 20. Window function: dense rank by zone_type
SELECT name, zone_type, DENSE_RANK() OVER(PARTITION BY zone_type ORDER BY area_sq_km DESC) AS type_rank FROM ForestZones;

-- 21. Window function: row_number
SELECT name, location, ROW_NUMBER() OVER(ORDER BY established_date ASC) AS row_num FROM ForestZones;

-- 22. Stored procedure: get zones by type
DELIMITER //
CREATE PROCEDURE GetZonesByType(IN ztype VARCHAR(50))
BEGIN
    SELECT * FROM ForestZones WHERE zone_type=ztype;
END;
//
DELIMITER ;

-- 23. Call stored procedure
CALL GetZonesByType('National Park');

-- 24. Stored procedure: get zones by status
DELIMITER //
CREATE PROCEDURE GetZonesByStatus(IN zstatus VARCHAR(20))
BEGIN
    SELECT * FROM ForestZones WHERE status=zstatus;
END;
//
DELIMITER ;

-- 25. Call stored procedure
CALL GetZonesByStatus('Active');

-- 26. Update status of a zone
UPDATE ForestZones SET status='Inactive' WHERE id=10;

-- 27. Delete a zone
DELETE FROM ForestZones WHERE id=20;

-- 28. Insert a new zone
INSERT INTO ForestZones (id,name,location,area_sq_km,zone_type,established_date,status,description,created_at,updated_at)
VALUES (21,'Test Zone','Testland',100.0,'Wildlife Sanctuary','2025-01-01','Active','Test description',NOW(),NOW());

-- 29. Transaction control: commit
START TRANSACTION;
UPDATE ForestZones SET status='Inactive' WHERE id=5;
COMMIT;

-- 30. Transaction control: rollback
START TRANSACTION;
UPDATE ForestZones SET status='Active' WHERE id=12;
ROLLBACK;

-- 31. Grant SELECT on ForestZones to user 'guest'
GRANT SELECT ON ForestZones TO 'guest'@'localhost';

-- 32. Revoke SELECT from user 'guest'
REVOKE SELECT ON ForestZones FROM 'guest'@'localhost';

-- 33. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_zone_insert BEFORE INSERT ON ForestZones
FOR EACH ROW
BEGIN
    SET NEW.created_at = NOW();
    SET NEW.updated_at = NOW();
END;
//
DELIMITER ;

-- 34. Trigger: before update
DELIMITER //
CREATE TRIGGER before_zone_update BEFORE UPDATE ON ForestZones
FOR EACH ROW
BEGIN
    SET NEW.updated_at = NOW();
END;
//
DELIMITER ;

-- 35. Subquery: zones with area greater than average
SELECT * FROM ForestZones WHERE area_sq_km > (SELECT AVG(area_sq_km) FROM ForestZones);

-- 36. Subquery: zones with max area in each type
SELECT * FROM ForestZones f1
WHERE area_sq_km = (SELECT MAX(area_sq_km) FROM ForestZones f2 WHERE f1.zone_type=f2.zone_type);

-- 37. Count zones by location with HAVING
SELECT location, COUNT(*) AS loc_count FROM ForestZones GROUP BY location HAVING COUNT(*)>2;

-- 38. Use COALESCE to handle nulls
SELECT id, name, COALESCE(description,'No Description') AS zone_description FROM ForestZones;

-- 39. Use IFNULL to replace nulls
SELECT id, name, IFNULL(status,'Unknown') AS zone_status FROM ForestZones;

-- 40. Subquery: latest established zone
SELECT * FROM ForestZones WHERE established_date=(SELECT MAX(established_date) FROM ForestZones);

-- 41. Union: select names of active and inactive zones
SELECT name, status FROM ForestZones WHERE status='Active'
UNION
SELECT name, status FROM ForestZones WHERE status='Inactive';

-- 42. Stored procedure: increase area by percentage
DELIMITER //
CREATE PROCEDURE IncreaseArea(IN pid INT, IN perc FLOAT)
BEGIN
    UPDATE ForestZones SET area_sq_km = area_sq_km * (1+perc/100) WHERE id=pid;
END;
//
DELIMITER ;

-- 43. Call procedure to increase area by 10%
CALL IncreaseArea(1,10);

-- 44. Window function: cumulative sum of area
SELECT name, area_sq_km, SUM(area_sq_km) OVER(ORDER BY area_sq_km) AS cum_area FROM ForestZones;

-- 45. Window function: average area by zone_type
SELECT name, zone_type, AVG(area_sq_km) OVER(PARTITION BY zone_type) AS avg_type_area FROM ForestZones;

-- 46. Create view: Tiger Reserves
CREATE VIEW TigerReserves AS SELECT id,name,location,area_sq_km FROM ForestZones WHERE zone_type='Tiger Reserve';

-- 47. Query TigerReserves view
SELECT * FROM TigerReserves;

-- 48. CTE: Top 3 largest zones
WITH TopZones AS (
    SELECT id,name,area_sq_km, RANK() OVER(ORDER BY area_sq_km DESC) AS rk FROM ForestZones
)
SELECT * FROM TopZones WHERE rk<=3;

-- 49. Trigger: log deleted zones
CREATE TABLE ZoneLog(id INT AUTO_INCREMENT PRIMARY KEY, zone_name VARCHAR(100), deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_zone_delete AFTER DELETE ON ForestZones
FOR EACH ROW
BEGIN
    INSERT INTO ZoneLog(zone_name,deleted_at) VALUES (OLD.name,NOW());
END;
//
DELIMITER ;

-- 50. Execute delete to test trigger
DELETE FROM ForestZones WHERE id=21;



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

-- 1. Select all staff
SELECT * FROM Staff;

-- 2. Active staff only
SELECT * FROM Staff WHERE status='Active';

-- 3. Count staff per department
SELECT department, COUNT(*) AS dept_count FROM Staff GROUP BY department;

-- 4. Count staff per location
SELECT location, COUNT(*) AS loc_count FROM Staff GROUP BY location;

-- 5. Max contact number (just example)
SELECT * FROM Staff WHERE contact=(SELECT MAX(contact) FROM Staff);

-- 6. Min contact number
SELECT * FROM Staff WHERE contact=(SELECT MIN(contact) FROM Staff);

-- 7. Average length of names
SELECT AVG(LENGTH(name)) AS avg_name_length FROM Staff;

-- 8. Total staff count
SELECT COUNT(*) AS total_staff FROM Staff;

-- 9. Staff in Pune
SELECT * FROM Staff WHERE location='Pune';

-- 10. Staff in Nagpur with Active status
SELECT * FROM Staff WHERE location='Nagpur' AND status='Active';

-- 11. Order by name ascending
SELECT * FROM Staff ORDER BY name ASC;

-- 12. Order by designation descending
SELECT * FROM Staff ORDER BY designation DESC;

-- 13. First 5 staff ordered by created_at
SELECT * FROM Staff ORDER BY created_at ASC LIMIT 5;

-- 14. Staff with department containing 'Admin'
SELECT * FROM Staff WHERE department LIKE '%Admin%';

-- 15. Staff with name length >10
SELECT * FROM Staff WHERE LENGTH(name)>10;

-- 16. View: ActiveStaff
CREATE VIEW ActiveStaff AS SELECT id, name, designation, department, location FROM Staff WHERE status='Active';

-- 17. Query the view
SELECT * FROM ActiveStaff;

-- 18. CTE: Staff by department 'Research'
WITH ResearchStaff AS (
    SELECT * FROM Staff WHERE department='Research'
)
SELECT * FROM ResearchStaff;

-- 19. Window function: rank by created_at
SELECT name, created_at, RANK() OVER(ORDER BY created_at ASC) AS join_rank FROM Staff;

-- 20. Window function: dense rank by department
SELECT name, department, DENSE_RANK() OVER(PARTITION BY department ORDER BY created_at ASC) AS dept_rank FROM Staff;

-- 21. Window function: row_number
SELECT name, department, ROW_NUMBER() OVER(ORDER BY name ASC) AS row_num FROM Staff;

-- 22. Stored procedure: get staff by department
DELIMITER //
CREATE PROCEDURE GetStaffByDept(IN dept_name VARCHAR(50))
BEGIN
    SELECT * FROM Staff WHERE department=dept_name;
END;
//
DELIMITER ;

-- 23. Call stored procedure
CALL GetStaffByDept('Research');

-- 24. Stored procedure: get staff by status
DELIMITER //
CREATE PROCEDURE GetStaffByStatus(IN stat VARCHAR(20))
BEGIN
    SELECT * FROM Staff WHERE status=stat;
END;
//
DELIMITER ;

-- 25. Call procedure
CALL GetStaffByStatus('Inactive');

-- 26. Update staff status
UPDATE Staff SET status='Inactive' WHERE id=5;

-- 27. Delete a staff member
DELETE FROM Staff WHERE id=20;

-- 28. Insert new staff
INSERT INTO Staff (id,name,designation,department,location,contact,email,status,created_at,updated_at)
VALUES (21,'Test User','Intern','Research','Test City','9999999999','test.user@forest.gov.in','Active',NOW(),NOW());

-- 29. Transaction: commit example
START TRANSACTION;
UPDATE Staff SET status='Inactive' WHERE id=6;
COMMIT;

-- 30. Transaction: rollback example
START TRANSACTION;
UPDATE Staff SET status='Active' WHERE id=12;
ROLLBACK;

-- 31. Grant SELECT to guest
GRANT SELECT ON Staff TO 'guest'@'localhost';

-- 32. Revoke SELECT from guest
REVOKE SELECT ON Staff FROM 'guest'@'localhost';

-- 33. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_staff_insert BEFORE INSERT ON Staff
FOR EACH ROW
BEGIN
    SET NEW.created_at = NOW();
    SET NEW.updated_at = NOW();
END;
//
DELIMITER ;

-- 34. Trigger: before update
DELIMITER //
CREATE TRIGGER before_staff_update BEFORE UPDATE ON Staff
FOR EACH ROW
BEGIN
    SET NEW.updated_at = NOW();
END;
//
DELIMITER ;

-- 35. Subquery: staff with earliest created_at
SELECT * FROM Staff WHERE created_at=(SELECT MIN(created_at) FROM Staff);

-- 36. Subquery: staff in same department as id=1
SELECT * FROM Staff WHERE department=(SELECT department FROM Staff WHERE id=1);

-- 37. Count staff per location HAVING >1
SELECT location, COUNT(*) AS loc_count FROM Staff GROUP BY location HAVING COUNT(*)>1;

-- 38. Use COALESCE for null emails
SELECT id, name, COALESCE(email,'noemail@domain.com') AS staff_email FROM Staff;

-- 39. IFNULL example for status
SELECT id, name, IFNULL(status,'Unknown') AS staff_status FROM Staff;

-- 40. Latest joined staff
SELECT * FROM Staff WHERE created_at=(SELECT MAX(created_at) FROM Staff);

-- 41. Union: Active and Inactive staff names
SELECT name, status FROM Staff WHERE status='Active'
UNION
SELECT name, status FROM Staff WHERE status='Inactive';

-- 42. Stored procedure: change designation
DELIMITER //
CREATE PROCEDURE ChangeDesignation(IN sid INT, IN new_desig VARCHAR(50))
BEGIN
    UPDATE Staff SET designation=new_desig WHERE id=sid;
END;
//
DELIMITER ;

-- 43. Call procedure to update designation
CALL ChangeDesignation(1,'Senior Forest Officer');

-- 44. Window function: cumulative count by department
SELECT name, department, COUNT(*) OVER(PARTITION BY department ORDER BY id) AS cum_count FROM Staff;

-- 45. Window function: average contact length by department
SELECT name, department, AVG(LENGTH(contact)) OVER(PARTITION BY department) AS avg_contact_len FROM Staff;

-- 46. View: HRStaff
CREATE VIEW HRStaff AS SELECT id,name,department,designation FROM Staff WHERE department='Human Resources';

-- 47. Query HRStaff view
SELECT * FROM HRStaff;

-- 48. CTE: Top 3 newest staff
WITH NewStaff AS (
    SELECT id,name,created_at, RANK() OVER(ORDER BY created_at DESC) AS rk FROM Staff
)
SELECT * FROM NewStaff WHERE rk<=3;

-- 49. Trigger: log deleted staff
CREATE TABLE StaffLog(id INT AUTO_INCREMENT PRIMARY KEY, staff_name VARCHAR(100), deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_staff_delete AFTER DELETE ON Staff
FOR EACH ROW
BEGIN
    INSERT INTO StaffLog(staff_name,deleted_at) VALUES (OLD.name,NOW());
END;
//
DELIMITER ;

-- 50. Delete staff to test trigger
DELETE FROM Staff WHERE id=21;


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

-- 1. Select all wildlife species
SELECT * FROM WildlifeSpecies;

-- 2. Active species only
SELECT * FROM WildlifeSpecies WHERE status='Active';

-- 3. Count species by type
SELECT species_type, COUNT(*) AS type_count FROM WildlifeSpecies GROUP BY species_type;

-- 4. Count species by conservation status
SELECT conservation_status, COUNT(*) AS status_count FROM WildlifeSpecies GROUP BY conservation_status;

-- 5. Species with highest population
SELECT * FROM WildlifeSpecies WHERE population_estimate=(SELECT MAX(population_estimate) FROM WildlifeSpecies);

-- 6. Species with lowest population
SELECT * FROM WildlifeSpecies WHERE population_estimate=(SELECT MIN(population_estimate) FROM WildlifeSpecies);

-- 7. Average population
SELECT AVG(population_estimate) AS avg_population FROM WildlifeSpecies;

-- 8. Total number of species
SELECT COUNT(*) AS total_species FROM WildlifeSpecies;

-- 9. Species native to Western Ghats
SELECT * FROM WildlifeSpecies WHERE native_region LIKE '%Western Ghats%';

-- 10. Endangered mammals
SELECT * FROM WildlifeSpecies WHERE species_type='Mammal' AND conservation_status='Endangered';

-- 11. Order by name
SELECT * FROM WildlifeSpecies ORDER BY name ASC;

-- 12. Order by population descending
SELECT * FROM WildlifeSpecies ORDER BY population_estimate DESC;

-- 13. First 5 species by created_at
SELECT * FROM WildlifeSpecies ORDER BY created_at ASC LIMIT 5;

-- 14. Species with name containing 'Indian'
SELECT * FROM WildlifeSpecies WHERE name LIKE '%Indian%';

-- 15. Species with population >5000
SELECT * FROM WildlifeSpecies WHERE population_estimate>5000;

-- 16. View: ActiveSpecies
CREATE VIEW ActiveSpecies AS 
SELECT id, name, species_type, native_region, population_estimate 
FROM WildlifeSpecies WHERE status='Active';

-- 17. Query the view
SELECT * FROM ActiveSpecies;

-- 18. CTE: EndangeredSpecies
WITH EndangeredSpecies AS (
    SELECT * FROM WildlifeSpecies WHERE conservation_status='Endangered'
)
SELECT * FROM EndangeredSpecies;

-- 19. Window function: rank by population
SELECT name, population_estimate, RANK() OVER(ORDER BY population_estimate DESC) AS pop_rank FROM WildlifeSpecies;

-- 20. Window function: dense rank by species type
SELECT name, species_type, DENSE_RANK() OVER(PARTITION BY species_type ORDER BY population_estimate DESC) AS type_rank FROM WildlifeSpecies;

-- 21. Window function: row_number
SELECT name, species_type, ROW_NUMBER() OVER(ORDER BY name ASC) AS row_num FROM WildlifeSpecies;

-- 22. Stored procedure: get species by type
DELIMITER //
CREATE PROCEDURE GetSpeciesByType(IN sp_type VARCHAR(50))
BEGIN
    SELECT * FROM WildlifeSpecies WHERE species_type=sp_type;
END;
//
DELIMITER ;

-- 23. Call stored procedure
CALL GetSpeciesByType('Mammal');

-- 24. Stored procedure: get species by status
DELIMITER //
CREATE PROCEDURE GetSpeciesByStatus(IN stat VARCHAR(20))
BEGIN
    SELECT * FROM WildlifeSpecies WHERE status=stat;
END;
//
DELIMITER ;

-- 25. Call procedure
CALL GetSpeciesByStatus('Active');

-- 26. Update species status
UPDATE WildlifeSpecies SET status='Inactive' WHERE id=6;

-- 27. Delete a species
DELETE FROM WildlifeSpecies WHERE id=20;

-- 28. Insert new species
INSERT INTO WildlifeSpecies (id,name,species_type,conservation_status,native_region,population_estimate,description,status,created_at,updated_at)
VALUES (21,'Test Species','Reptile','Vulnerable','Test Region',100,'Test Description','Active',NOW(),NOW());

-- 29. Transaction: commit example
START TRANSACTION;
UPDATE WildlifeSpecies SET status='Inactive' WHERE id=7;
COMMIT;

-- 30. Transaction: rollback example
START TRANSACTION;
UPDATE WildlifeSpecies SET status='Active' WHERE id=12;
ROLLBACK;

-- 31. Grant SELECT to guest
GRANT SELECT ON WildlifeSpecies TO 'guest'@'localhost';

-- 32. Revoke SELECT from guest
REVOKE SELECT ON WildlifeSpecies FROM 'guest'@'localhost';

-- 33. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_species_insert BEFORE INSERT ON WildlifeSpecies
FOR EACH ROW
BEGIN
    SET NEW.created_at = NOW();
    SET NEW.updated_at = NOW();
END;
//
DELIMITER ;

-- 34. Trigger: before update
DELIMITER //
CREATE TRIGGER before_species_update BEFORE UPDATE ON WildlifeSpecies
FOR EACH ROW
BEGIN
    SET NEW.updated_at = NOW();
END;
//
DELIMITER ;

-- 35. Subquery: species with earliest created_at
SELECT * FROM WildlifeSpecies WHERE created_at=(SELECT MIN(created_at) FROM WildlifeSpecies);

-- 36. Subquery: species in same native region as id=1
SELECT * FROM WildlifeSpecies WHERE native_region=(SELECT native_region FROM WildlifeSpecies WHERE id=1);

-- 37. Count species by type HAVING >2
SELECT species_type, COUNT(*) AS type_count FROM WildlifeSpecies GROUP BY species_type HAVING COUNT(*)>2;

-- 38. COALESCE for null description
SELECT id,name,COALESCE(description,'No description') AS species_desc FROM WildlifeSpecies;

-- 39. IFNULL for status
SELECT id,name,IFNULL(status,'Unknown') AS species_status FROM WildlifeSpecies;

-- 40. Latest added species
SELECT * FROM WildlifeSpecies WHERE created_at=(SELECT MAX(created_at) FROM WildlifeSpecies);

-- 41. Union: Active and Inactive species
SELECT name,status FROM WildlifeSpecies WHERE status='Active'
UNION
SELECT name,status FROM WildlifeSpecies WHERE status='Inactive';

-- 42. Stored procedure: change conservation status
DELIMITER //
CREATE PROCEDURE ChangeConservationStatus(IN sid INT, IN new_status VARCHAR(50))
BEGIN
    UPDATE WildlifeSpecies SET conservation_status=new_status WHERE id=sid;
END;
//
DELIMITER ;

-- 43. Call procedure to update status
CALL ChangeConservationStatus(1,'Vulnerable');

-- 44. Window function: cumulative count by species type
SELECT name,species_type,COUNT(*) OVER(PARTITION BY species_type ORDER BY id) AS cum_count FROM WildlifeSpecies;

-- 45. Window function: average population by species type
SELECT name,species_type,AVG(population_estimate) OVER(PARTITION BY species_type) AS avg_population_type FROM WildlifeSpecies;

-- 46. View: EndangeredMammals
CREATE VIEW EndangeredMammals AS 
SELECT id,name,species_type,population_estimate FROM WildlifeSpecies WHERE species_type='Mammal' AND conservation_status='Endangered';

-- 47. Query EndangeredMammals view
SELECT * FROM EndangeredMammals;

-- 48. CTE: Top 3 largest populations
WITH TopSpecies AS (
    SELECT id,name,population_estimate,RANK() OVER(ORDER BY population_estimate DESC) AS rk FROM WildlifeSpecies
)
SELECT * FROM TopSpecies WHERE rk<=3;

-- 49. Trigger: log deleted species
CREATE TABLE SpeciesLog(id INT AUTO_INCREMENT PRIMARY KEY, species_name VARCHAR(100), deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_species_delete AFTER DELETE ON WildlifeSpecies
FOR EACH ROW
BEGIN
    INSERT INTO SpeciesLog(species_name,deleted_at) VALUES (OLD.name,NOW());
END;
//
DELIMITER ;

-- 50. Delete species to test trigger
DELETE FROM WildlifeSpecies WHERE id=21;

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

-- 1. Select all patrol records
SELECT * FROM PatrolRecords;

-- 2. Completed patrols only
SELECT * FROM PatrolRecords WHERE status='Completed';

-- 3. Count patrols by team
SELECT patrol_team, COUNT(*) AS patrol_count FROM PatrolRecords GROUP BY patrol_team;

-- 4. Count patrols by status
SELECT status, COUNT(*) AS status_count FROM PatrolRecords GROUP BY status;

-- 5. Patrol with maximum incidents reported length
SELECT * FROM PatrolRecords WHERE CHAR_LENGTH(incidents_reported)=(SELECT MAX(CHAR_LENGTH(incidents_reported)) FROM PatrolRecords);

-- 6. Patrol with earliest date
SELECT * FROM PatrolRecords WHERE date=(SELECT MIN(date) FROM PatrolRecords);

-- 7. Average patrol per team
SELECT patrol_team, COUNT(*)/COUNT(DISTINCT date) AS avg_patrols FROM PatrolRecords GROUP BY patrol_team;

-- 8. Total number of patrols
SELECT COUNT(*) AS total_patrols FROM PatrolRecords;

-- 9. Patrols in Zone A1
SELECT * FROM PatrolRecords WHERE area_covered LIKE '%Zone A1%';

-- 10. Patrols using Jeep
SELECT * FROM PatrolRecords WHERE vehicle_used='Jeep';

-- 11. Order patrols by date
SELECT * FROM PatrolRecords ORDER BY date ASC;

-- 12. Order patrols by team
SELECT * FROM PatrolRecords ORDER BY patrol_team ASC;

-- 13. First 5 patrols by created_at
SELECT * FROM PatrolRecords ORDER BY created_at ASC LIMIT 5;

-- 14. Patrols with notes containing 'alert'
SELECT * FROM PatrolRecords WHERE notes LIKE '%alert%';

-- 15. Patrols with status 'Reported' or 'Investigated'
SELECT * FROM PatrolRecords WHERE status IN ('Reported','Investigated');

-- 16. View: CompletedPatrols
CREATE VIEW CompletedPatrols AS 
SELECT id, patrol_team, date, area_covered, incidents_reported FROM PatrolRecords WHERE status='Completed';

-- 17. Query the view
SELECT * FROM CompletedPatrols;

-- 18. CTE: InvestigatedPatrols
WITH InvestigatedPatrols AS (
    SELECT * FROM PatrolRecords WHERE status='Investigated'
)
SELECT * FROM InvestigatedPatrols;

-- 19. Window function: rank by date
SELECT patrol_team, date, RANK() OVER(ORDER BY date ASC) AS patrol_rank FROM PatrolRecords;

-- 20. Window function: dense rank by status
SELECT patrol_team, status, DENSE_RANK() OVER(PARTITION BY status ORDER BY date ASC) AS status_rank FROM PatrolRecords;

-- 21. Window function: row_number
SELECT patrol_team, date, ROW_NUMBER() OVER(ORDER BY date ASC) AS row_num FROM PatrolRecords;

-- 22. Stored procedure: get patrols by team
DELIMITER //
CREATE PROCEDURE GetPatrolsByTeam(IN team_name VARCHAR(100))
BEGIN
    SELECT * FROM PatrolRecords WHERE patrol_team=team_name;
END;
//
DELIMITER ;

-- 23. Call stored procedure
CALL GetPatrolsByTeam('Team Alpha');

-- 24. Stored procedure: get patrols by status
DELIMITER //
CREATE PROCEDURE GetPatrolsByStatus(IN patrol_status VARCHAR(20))
BEGIN
    SELECT * FROM PatrolRecords WHERE status=patrol_status;
END;
//
DELIMITER ;

-- 25. Call procedure
CALL GetPatrolsByStatus('Completed');

-- 26. Update patrol status
UPDATE PatrolRecords SET status='Resolved' WHERE id=8;

-- 27. Delete a patrol record
DELETE FROM PatrolRecords WHERE id=20;

-- 28. Insert new patrol record
INSERT INTO PatrolRecords (id,patrol_team,date,area_covered,incidents_reported,status,vehicle_used,notes,created_at,updated_at)
VALUES (21,'Team Zenith','2025-06-21','Zone Z1 - Test','Test incident','Completed','Jeep','Routine check',NOW(),NOW());

-- 29. Transaction: commit example
START TRANSACTION;
UPDATE PatrolRecords SET status='Completed' WHERE id=12;
COMMIT;

-- 30. Transaction: rollback example
START TRANSACTION;
UPDATE PatrolRecords SET status='Action Taken' WHERE id=6;
ROLLBACK;

-- 31. Grant SELECT to guest
GRANT SELECT ON PatrolRecords TO 'guest'@'localhost';

-- 32. Revoke SELECT from guest
REVOKE SELECT ON PatrolRecords FROM 'guest'@'localhost';

-- 33. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_patrol_insert BEFORE INSERT ON PatrolRecords
FOR EACH ROW
BEGIN
    SET NEW.created_at = NOW();
    SET NEW.updated_at = NOW();
END;
//
DELIMITER ;

-- 34. Trigger: before update
DELIMITER //
CREATE TRIGGER before_patrol_update BEFORE UPDATE ON PatrolRecords
FOR EACH ROW
BEGIN
    SET NEW.updated_at = NOW();
END;
//
DELIMITER ;

-- 35. Subquery: patrol with earliest created_at
SELECT * FROM PatrolRecords WHERE created_at=(SELECT MIN(created_at) FROM PatrolRecords);

-- 36. Subquery: patrols in same area as id=1
SELECT * FROM PatrolRecords WHERE area_covered=(SELECT area_covered FROM PatrolRecords WHERE id=1);

-- 37. Count patrols by vehicle HAVING >2
SELECT vehicle_used, COUNT(*) AS vehicle_count FROM PatrolRecords GROUP BY vehicle_used HAVING COUNT(*)>2;

-- 38. COALESCE for null notes
SELECT id,patrol_team,COALESCE(notes,'No notes') AS patrol_notes FROM PatrolRecords;

-- 39. IFNULL for status
SELECT id,patrol_team,IFNULL(status,'Unknown') AS patrol_status FROM PatrolRecords;

-- 40. Latest patrol
SELECT * FROM PatrolRecords WHERE created_at=(SELECT MAX(created_at) FROM PatrolRecords);

-- 41. Union: Completed and Reported patrols
SELECT patrol_team,status FROM PatrolRecords WHERE status='Completed'
UNION
SELECT patrol_team,status FROM PatrolRecords WHERE status='Reported';

-- 42. Stored procedure: change patrol status
DELIMITER //
CREATE PROCEDURE ChangePatrolStatus(IN pid INT, IN new_status VARCHAR(20))
BEGIN
    UPDATE PatrolRecords SET status=new_status WHERE id=pid;
END;
//
DELIMITER ;

-- 43. Call procedure to update status
CALL ChangePatrolStatus(3,'Resolved');

-- 44. Window function: cumulative count by patrol_team
SELECT patrol_team,date,COUNT(*) OVER(PARTITION BY patrol_team ORDER BY id) AS cum_count FROM PatrolRecords;

-- 45. Window function: count per status
SELECT patrol_team,status,COUNT(*) OVER(PARTITION BY status ORDER BY date) AS status_count FROM PatrolRecords;

-- 46. View: ReportedPatrols
CREATE VIEW ReportedPatrols AS 
SELECT id,patrol_team,date,area_covered,incidents_reported FROM PatrolRecords WHERE status='Reported';

-- 47. Query ReportedPatrols view
SELECT * FROM ReportedPatrols;

-- 48. CTE: Top 3 teams by patrol count
WITH TopTeams AS (
    SELECT patrol_team, COUNT(*) AS total_patrols, RANK() OVER(ORDER BY COUNT(*) DESC) AS rk FROM PatrolRecords GROUP BY patrol_team
)
SELECT * FROM TopTeams WHERE rk<=3;

-- 49. Trigger: log deleted patrol
CREATE TABLE PatrolLog(id INT AUTO_INCREMENT PRIMARY KEY, patrol_team VARCHAR(100), deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_patrol_delete AFTER DELETE ON PatrolRecords
FOR EACH ROW
BEGIN
    INSERT INTO PatrolLog(patrol_team,deleted_at) VALUES (OLD.patrol_team,NOW());
END;
//
DELIMITER ;

-- 50. Delete patrol to test trigger
DELETE FROM PatrolRecords WHERE id=21;

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

-- 1. Select all incidents
SELECT * FROM Incidents;

-- 2. Filter incidents by status 'Investigated'
SELECT * FROM Incidents WHERE status='Investigated';

-- 3. Count incidents by type
SELECT incident_type, COUNT(*) AS incident_count FROM Incidents GROUP BY incident_type;

-- 4. Count incidents by location
SELECT location, COUNT(*) AS location_count FROM Incidents GROUP BY location;

-- 5. Incident with longest description
SELECT * FROM Incidents WHERE CHAR_LENGTH(description)=(SELECT MAX(CHAR_LENGTH(description)) FROM Incidents);

-- 6. Incident with earliest date
SELECT * FROM Incidents WHERE date=(SELECT MIN(date) FROM Incidents);

-- 7. Average incidents reported per reporter
SELECT reported_by, COUNT(*)/COUNT(DISTINCT date) AS avg_incidents FROM Incidents GROUP BY reported_by;

-- 8. Total number of incidents
SELECT COUNT(*) AS total_incidents FROM Incidents;

-- 9. Incidents at 'Sundarbans Zone A1'
SELECT * FROM Incidents WHERE location LIKE '%Sundarbans Zone A1%';

-- 10. Incidents of type 'Poaching'
SELECT * FROM Incidents WHERE incident_type='Poaching';

-- 11. Order incidents by date
SELECT * FROM Incidents ORDER BY date ASC;

-- 12. Order incidents by reporter
SELECT * FROM Incidents ORDER BY reported_by ASC;

-- 13. First 5 incidents by created_at
SELECT * FROM Incidents ORDER BY created_at ASC LIMIT 5;

-- 14. Incidents containing 'fire' in description
SELECT * FROM Incidents WHERE description LIKE '%fire%';

-- 15. Status 'Reported' or 'Resolved'
SELECT * FROM Incidents WHERE status IN ('Reported','Resolved');

-- 16. View: InvestigatedIncidents
CREATE VIEW InvestigatedIncidents AS
SELECT id, incident_type, location, date, reported_by FROM Incidents WHERE status='Investigated';

-- 17. Query view
SELECT * FROM InvestigatedIncidents;

-- 18. CTE: ResolvedIncidents
WITH ResolvedIncidents AS (
    SELECT * FROM Incidents WHERE status='Resolved'
)
SELECT * FROM ResolvedIncidents;

-- 19. Window function: rank by date
SELECT id, incident_type, RANK() OVER(ORDER BY date ASC) AS incident_rank FROM Incidents;

-- 20. Window function: dense rank by status
SELECT id, status, DENSE_RANK() OVER(PARTITION BY status ORDER BY date ASC) AS status_rank FROM Incidents;

-- 21. Window function: row_number
SELECT id, reported_by, ROW_NUMBER() OVER(ORDER BY date ASC) AS row_num FROM Incidents;

-- 22. Stored procedure: get incidents by reporter
DELIMITER //
CREATE PROCEDURE GetIncidentsByReporter(IN reporter_name VARCHAR(100))
BEGIN
    SELECT * FROM Incidents WHERE reported_by=reporter_name;
END;
//
DELIMITER ;

-- 23. Call procedure
CALL GetIncidentsByReporter('Rajesh Verma');

-- 24. Stored procedure: get incidents by status
DELIMITER //
CREATE PROCEDURE GetIncidentsByStatus(IN incident_status VARCHAR(20))
BEGIN
    SELECT * FROM Incidents WHERE status=incident_status;
END;
//
DELIMITER ;

-- 25. Call procedure
CALL GetIncidentsByStatus('Resolved');

-- 26. Update incident status
UPDATE Incidents SET status='Completed' WHERE id=6;

-- 27. Delete an incident record
DELETE FROM Incidents WHERE id=20;

-- 28. Insert new incident
INSERT INTO Incidents (id,incident_type,location,date,reported_by,description,status,action_taken,created_at,updated_at)
VALUES (21,'Forest Fire','Test Zone','2025-06-21','Test User','Test incident','Reported','Action initiated',NOW(),NOW());

-- 29. Transaction: commit example
START TRANSACTION;
UPDATE Incidents SET status='Resolved' WHERE id=12;
COMMIT;

-- 30. Transaction: rollback example
START TRANSACTION;
UPDATE Incidents SET status='Investigated' WHERE id=3;
ROLLBACK;

-- 31. Grant SELECT on Incidents
GRANT SELECT ON Incidents TO 'guest'@'localhost';

-- 32. Revoke SELECT
REVOKE SELECT ON Incidents FROM 'guest'@'localhost';

-- 33. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_incident_insert BEFORE INSERT ON Incidents
FOR EACH ROW
BEGIN
    SET NEW.created_at = NOW();
    SET NEW.updated_at = NOW();
END;
//
DELIMITER ;

-- 34. Trigger: before update
DELIMITER //
CREATE TRIGGER before_incident_update BEFORE UPDATE ON Incidents
FOR EACH ROW
BEGIN
    SET NEW.updated_at = NOW();
END;
//
DELIMITER ;

-- 35. Subquery: incident with earliest created_at
SELECT * FROM Incidents WHERE created_at=(SELECT MIN(created_at) FROM Incidents);

-- 36. Subquery: incidents in same location as id=1
SELECT * FROM Incidents WHERE location=(SELECT location FROM Incidents WHERE id=1);

-- 37. Count incidents by type HAVING >1
SELECT incident_type, COUNT(*) AS type_count FROM Incidents GROUP BY incident_type HAVING COUNT(*)>1;

-- 38. COALESCE for null action_taken
SELECT id,incident_type,COALESCE(action_taken,'No action') AS action_status FROM Incidents;

-- 39. IFNULL for status
SELECT id,incident_type,IFNULL(status,'Unknown') AS incident_status FROM Incidents;

-- 40. Latest incident
SELECT * FROM Incidents WHERE created_at=(SELECT MAX(created_at) FROM Incidents);

-- 41. Union: Resolved and Reported incidents
SELECT id,status FROM Incidents WHERE status='Resolved'
UNION
SELECT id,status FROM Incidents WHERE status='Reported';

-- 42. Stored procedure: change incident status
DELIMITER //
CREATE PROCEDURE ChangeIncidentStatus(IN iid INT, IN new_status VARCHAR(20))
BEGIN
    UPDATE Incidents SET status=new_status WHERE id=iid;
END;
//
DELIMITER ;

-- 43. Call procedure to update status
CALL ChangeIncidentStatus(4,'Monitored');

-- 44. Window function: cumulative count by reporter
SELECT reported_by,date,COUNT(*) OVER(PARTITION BY reported_by ORDER BY id) AS cum_count FROM Incidents;

-- 45. Window function: count per status
SELECT reported_by,status,COUNT(*) OVER(PARTITION BY status ORDER BY date) AS status_count FROM Incidents;

-- 46. View: ReportedIncidents
CREATE VIEW ReportedIncidents AS
SELECT id,incident_type,location,date,reported_by FROM Incidents WHERE status='Reported';

-- 47. Query ReportedIncidents view
SELECT * FROM ReportedIncidents;

-- 48. CTE: Top 3 reporters by incident count
WITH TopReporters AS (
    SELECT reported_by, COUNT(*) AS total_incidents, RANK() OVER(ORDER BY COUNT(*) DESC) AS rk FROM Incidents GROUP BY reported_by
)
SELECT * FROM TopReporters WHERE rk<=3;

-- 49. Trigger: log deleted incident
CREATE TABLE IncidentLog(id INT AUTO_INCREMENT PRIMARY KEY, incident_type VARCHAR(50), deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_incident_delete AFTER DELETE ON Incidents
FOR EACH ROW
BEGIN
    INSERT INTO IncidentLog(incident_type,deleted_at) VALUES (OLD.incident_type,NOW());
END;
//
DELIMITER ;

-- 50. Delete incident to test trigger
DELETE FROM Incidents WHERE id=21;

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

-- 1. Select all projects
SELECT * FROM ConservationProjects;

-- 2. Filter ongoing projects
SELECT * FROM ConservationProjects WHERE status='Ongoing';

-- 3. Count projects by status
SELECT status, COUNT(*) AS count_status FROM ConservationProjects GROUP BY status;

-- 4. Count projects by lead scientist
SELECT lead_scientist, COUNT(*) AS project_count FROM ConservationProjects GROUP BY lead_scientist;

-- 5. Project with highest budget
SELECT * FROM ConservationProjects WHERE budget=(SELECT MAX(budget) FROM ConservationProjects);

-- 6. Project with earliest start_date
SELECT * FROM ConservationProjects WHERE start_date=(SELECT MIN(start_date) FROM ConservationProjects);

-- 7. Average budget
SELECT AVG(budget) AS avg_budget FROM ConservationProjects;

-- 8. Total number of projects
SELECT COUNT(*) AS total_projects FROM ConservationProjects;

-- 9. Projects starting after 2023-01-01
SELECT * FROM ConservationProjects WHERE start_date>'2023-01-01';

-- 10. Completed projects
SELECT * FROM ConservationProjects WHERE status='Completed';

-- 11. Order projects by start_date
SELECT * FROM ConservationProjects ORDER BY start_date ASC;

-- 12. Order projects by budget DESC
SELECT * FROM ConservationProjects ORDER BY budget DESC;

-- 13. First 5 projects by created_at
SELECT * FROM ConservationProjects ORDER BY created_at ASC LIMIT 5;

-- 14. Projects containing 'forest' in objective
SELECT * FROM ConservationProjects WHERE objective LIKE '%forest%';

-- 15. Projects with budget > 1,000,000
SELECT * FROM ConservationProjects WHERE budget>1000000;

-- 16. View: OngoingProjects
CREATE VIEW OngoingProjects AS SELECT id,name,objective,status,lead_scientist FROM ConservationProjects WHERE status='Ongoing';

-- 17. Query view
SELECT * FROM OngoingProjects;

-- 18. CTE: HighBudgetProjects
WITH HighBudgetProjects AS (SELECT * FROM ConservationProjects WHERE budget>2000000)
SELECT * FROM HighBudgetProjects;

-- 19. Window function: rank by budget
SELECT id,name,budget,RANK() OVER(ORDER BY budget DESC) AS budget_rank FROM ConservationProjects;

-- 20. Window function: dense rank by status
SELECT id,status,DENSE_RANK() OVER(PARTITION BY status ORDER BY budget DESC) AS status_rank FROM ConservationProjects;

-- 21. Window function: row_number by start_date
SELECT id,name,ROW_NUMBER() OVER(ORDER BY start_date ASC) AS row_num FROM ConservationProjects;

-- 22. Stored procedure: get projects by lead
DELIMITER //
CREATE PROCEDURE GetProjectsByLead(IN lead_name VARCHAR(100))
BEGIN
    SELECT * FROM ConservationProjects WHERE lead_scientist=lead_name;
END;
//
DELIMITER ;

-- 23. Call procedure
CALL GetProjectsByLead('Dr. Neha Sharma');

-- 24. Stored procedure: get projects by status
DELIMITER //
CREATE PROCEDURE GetProjectsByStatus(IN proj_status VARCHAR(20))
BEGIN
    SELECT * FROM ConservationProjects WHERE status=proj_status;
END;
//
DELIMITER ;

-- 25. Call procedure
CALL GetProjectsByStatus('Completed');

-- 26. Update project status
UPDATE ConservationProjects SET status='Completed' WHERE id=2;

-- 27. Delete a project record
DELETE FROM ConservationProjects WHERE id=20;

-- 28. Insert new project
INSERT INTO ConservationProjects (id,name,objective,start_date,end_date,budget,status,lead_scientist,created_at,updated_at)
VALUES (21,'Test Project','Test objective','2025-07-01','2026-06-30',500000,'Ongoing','Test Scientist',NOW(),NOW());

-- 29. Transaction: commit example
START TRANSACTION;
UPDATE ConservationProjects SET status='Ongoing' WHERE id=5;
COMMIT;

-- 30. Transaction: rollback example
START TRANSACTION;
UPDATE ConservationProjects SET status='Completed' WHERE id=3;
ROLLBACK;

-- 31. Grant SELECT on table
GRANT SELECT ON ConservationProjects TO 'guest'@'localhost';

-- 32. Revoke SELECT
REVOKE SELECT ON ConservationProjects FROM 'guest'@'localhost';

-- 33. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_project_insert BEFORE INSERT ON ConservationProjects
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Trigger: before update
DELIMITER //
CREATE TRIGGER before_project_update BEFORE UPDATE ON ConservationProjects
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 35. Subquery: project with max end_date
SELECT * FROM ConservationProjects WHERE end_date=(SELECT MAX(end_date) FROM ConservationProjects);

-- 36. Subquery: projects with same lead as id=1
SELECT * FROM ConservationProjects WHERE lead_scientist=(SELECT lead_scientist FROM ConservationProjects WHERE id=1);

-- 37. Count projects by status HAVING >2
SELECT status, COUNT(*) AS status_count FROM ConservationProjects GROUP BY status HAVING COUNT(*)>2;

-- 38. COALESCE for null objective
SELECT id,name,COALESCE(objective,'No objective') AS project_objective FROM ConservationProjects;

-- 39. IFNULL for status
SELECT id,name,IFNULL(status,'Unknown') AS project_status FROM ConservationProjects;

-- 40. Latest project by created_at
SELECT * FROM ConservationProjects WHERE created_at=(SELECT MAX(created_at) FROM ConservationProjects);

-- 41. Union: Ongoing and Completed projects
SELECT id,status FROM ConservationProjects WHERE status='Ongoing'
UNION
SELECT id,status FROM ConservationProjects WHERE status='Completed';

-- 42. Stored procedure: change project status
DELIMITER //
CREATE PROCEDURE ChangeProjectStatus(IN pid INT, IN new_status VARCHAR(20))
BEGIN
    UPDATE ConservationProjects SET status=new_status WHERE id=pid;
END;
//
DELIMITER ;

-- 43. Call procedure to update status
CALL ChangeProjectStatus(4,'Completed');

-- 44. Window function: cumulative count by lead scientist
SELECT lead_scientist,id,COUNT(*) OVER(PARTITION BY lead_scientist ORDER BY id) AS cum_count FROM ConservationProjects;

-- 45. Window function: count per status
SELECT status,id,COUNT(*) OVER(PARTITION BY status ORDER BY start_date) AS status_count FROM ConservationProjects;

-- 46. View: CompletedProjects
CREATE VIEW CompletedProjects AS SELECT id,name,objective,status,lead_scientist FROM ConservationProjects WHERE status='Completed';

-- 47. Query CompletedProjects
SELECT * FROM CompletedProjects;

-- 48. CTE: Top 3 high budget projects
WITH TopBudgetProjects AS (
    SELECT id,name,budget,RANK() OVER(ORDER BY budget DESC) AS rk FROM ConservationProjects
)
SELECT * FROM TopBudgetProjects WHERE rk<=3;

-- 49. Trigger: log deleted project
CREATE TABLE ProjectLog(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_project_delete AFTER DELETE ON ConservationProjects
FOR EACH ROW
BEGIN
    INSERT INTO ProjectLog(name,deleted_at) VALUES(OLD.name,NOW());
END;
//
DELIMITER ;

-- 50. Delete project to test trigger
DELETE FROM ConservationProjects WHERE id=21;


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

-- 1. Select all research activities
SELECT * FROM ResearchActivities;

-- 2. Filter ongoing activities
SELECT * FROM ResearchActivities WHERE status='Ongoing';

-- 3. Count activities by status
SELECT status, COUNT(*) AS count_status FROM ResearchActivities GROUP BY status;

-- 4. Count activities by lead researcher
SELECT lead_researcher, COUNT(*) AS activity_count FROM ResearchActivities GROUP BY lead_researcher;

-- 5. Activity with longest duration
SELECT *, DATEDIFF(end_date,start_date) AS duration FROM ResearchActivities ORDER BY duration DESC LIMIT 1;

-- 6. Activity with earliest start_date
SELECT * FROM ResearchActivities WHERE start_date=(SELECT MIN(start_date) FROM ResearchActivities);

-- 7. Average duration of activities
SELECT AVG(DATEDIFF(end_date,start_date)) AS avg_duration FROM ResearchActivities;

-- 8. Total number of activities
SELECT COUNT(*) AS total_activities FROM ResearchActivities;

-- 9. Activities starting after 2023-01-01
SELECT * FROM ResearchActivities WHERE start_date>'2023-01-01';

-- 10. Completed activities
SELECT * FROM ResearchActivities WHERE status='Completed';

-- 11. Order activities by start_date
SELECT * FROM ResearchActivities ORDER BY start_date ASC;

-- 12. Order activities by end_date DESC
SELECT * FROM ResearchActivities ORDER BY end_date DESC;

-- 13. First 5 activities by created_at
SELECT * FROM ResearchActivities ORDER BY created_at ASC LIMIT 5;

-- 14. Activities with 'forest' in focus_area
SELECT * FROM ResearchActivities WHERE focus_area LIKE '%forest%';

-- 15. Activities longer than 365 days
SELECT * FROM ResearchActivities WHERE DATEDIFF(end_date,start_date)>365;

-- 16. View: OngoingActivities
CREATE VIEW OngoingActivities AS SELECT id,title,lead_researcher,status,focus_area FROM ResearchActivities WHERE status='Ongoing';

-- 17. Query view
SELECT * FROM OngoingActivities;

-- 18. CTE: LongDurationActivities
WITH LongDurationActivities AS (
  SELECT *, DATEDIFF(end_date,start_date) AS duration FROM ResearchActivities WHERE DATEDIFF(end_date,start_date)>365
)
SELECT * FROM LongDurationActivities;

-- 19. Window function: rank by duration
SELECT id,title,DATEDIFF(end_date,start_date) AS duration,RANK() OVER(ORDER BY DATEDIFF(end_date,start_date) DESC) AS duration_rank FROM ResearchActivities;

-- 20. Window function: dense rank by status
SELECT id,status,DENSE_RANK() OVER(PARTITION BY status ORDER BY start_date ASC) AS status_rank FROM ResearchActivities;

-- 21. Window function: row_number by start_date
SELECT id,title,ROW_NUMBER() OVER(ORDER BY start_date ASC) AS row_num FROM ResearchActivities;

-- 22. Stored procedure: get activities by lead
DELIMITER //
CREATE PROCEDURE GetActivitiesByLead(IN lead_name VARCHAR(100))
BEGIN
    SELECT * FROM ResearchActivities WHERE lead_researcher=lead_name;
END;
//
DELIMITER ;

-- 23. Call procedure
CALL GetActivitiesByLead('Dr. Neha Sharma');

-- 24. Stored procedure: get activities by status
DELIMITER //
CREATE PROCEDURE GetActivitiesByStatus(IN act_status VARCHAR(20))
BEGIN
    SELECT * FROM ResearchActivities WHERE status=act_status;
END;
//
DELIMITER ;

-- 25. Call procedure
CALL GetActivitiesByStatus('Completed');

-- 26. Update activity status
UPDATE ResearchActivities SET status='Completed' WHERE id=3;

-- 27. Delete an activity
DELETE FROM ResearchActivities WHERE id=20;

-- 28. Insert new activity
INSERT INTO ResearchActivities (id,title,lead_researcher,start_date,end_date,focus_area,status,findings,created_at,updated_at)
VALUES (21,'Test Activity','Test Lead','2025-07-01','2026-06-30','Test Area','Ongoing','Initial data collected',NOW(),NOW());

-- 29. Transaction: commit example
START TRANSACTION;
UPDATE ResearchActivities SET status='Ongoing' WHERE id=5;
COMMIT;

-- 30. Transaction: rollback example
START TRANSACTION;
UPDATE ResearchActivities SET status='Completed' WHERE id=4;
ROLLBACK;

-- 31. Grant SELECT
GRANT SELECT ON ResearchActivities TO 'guest'@'localhost';

-- 32. Revoke SELECT
REVOKE SELECT ON ResearchActivities FROM 'guest'@'localhost';

-- 33. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_activity_insert BEFORE INSERT ON ResearchActivities
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Trigger: before update
DELIMITER //
CREATE TRIGGER before_activity_update BEFORE UPDATE ON ResearchActivities
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 35. Subquery: activity with latest end_date
SELECT * FROM ResearchActivities WHERE end_date=(SELECT MAX(end_date) FROM ResearchActivities);

-- 36. Subquery: activities with same lead as id=1
SELECT * FROM ResearchActivities WHERE lead_researcher=(SELECT lead_researcher FROM ResearchActivities WHERE id=1);

-- 37. Count by status HAVING >2
SELECT status, COUNT(*) AS status_count FROM ResearchActivities GROUP BY status HAVING COUNT(*)>2;

-- 38. COALESCE for null findings
SELECT id,title,COALESCE(findings,'No findings yet') AS research_findings FROM ResearchActivities;

-- 39. IFNULL for focus_area
SELECT id,title,IFNULL(focus_area,'Unknown') AS research_area FROM ResearchActivities;

-- 40. Latest activity by created_at
SELECT * FROM ResearchActivities WHERE created_at=(SELECT MAX(created_at) FROM ResearchActivities);

-- 41. Union: Completed and Ongoing
SELECT id,status FROM ResearchActivities WHERE status='Ongoing'
UNION
SELECT id,status FROM ResearchActivities WHERE status='Completed';

-- 42. Stored procedure: change status
DELIMITER //
CREATE PROCEDURE ChangeActivityStatus(IN aid INT, IN new_status VARCHAR(20))
BEGIN
    UPDATE ResearchActivities SET status=new_status WHERE id=aid;
END;
//
DELIMITER ;

-- 43. Call procedure
CALL ChangeActivityStatus(4,'Completed');

-- 44. Window function: cumulative count by lead_researcher
SELECT lead_researcher,id,COUNT(*) OVER(PARTITION BY lead_researcher ORDER BY id) AS cum_count FROM ResearchActivities;

-- 45. Window function: count per status
SELECT status,id,COUNT(*) OVER(PARTITION BY status ORDER BY start_date) AS status_count FROM ResearchActivities;

-- 46. View: CompletedActivities
CREATE VIEW CompletedActivities AS SELECT id,title,lead_researcher,status,focus_area FROM ResearchActivities WHERE status='Completed';

-- 47. Query CompletedActivities
SELECT * FROM CompletedActivities;

-- 48. CTE: Top 3 long duration activities
WITH TopDurationActivities AS (
    SELECT id,title,DATEDIFF(end_date,start_date) AS duration,RANK() OVER(ORDER BY DATEDIFF(end_date,start_date) DESC) AS rk
    FROM ResearchActivities
)
SELECT * FROM TopDurationActivities WHERE rk<=3;

-- 49. Trigger: log deleted activity
CREATE TABLE ActivityLog(id INT AUTO_INCREMENT PRIMARY KEY,title VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_activity_delete AFTER DELETE ON ResearchActivities
FOR EACH ROW
BEGIN
    INSERT INTO ActivityLog(title,deleted_at) VALUES(OLD.title,NOW());
END;
//
DELIMITER ;

-- 50. Delete activity to test trigger
DELETE FROM ResearchActivities WHERE id=21;


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

-- 1. Select all visitor logs
SELECT * FROM VisitorLogs;

-- 2. Filter visits in June 2025
SELECT * FROM VisitorLogs WHERE visit_date BETWEEN '2025-06-01' AND '2025-06-30';

-- 3. Count visitors by zone
SELECT zone_visited, COUNT(*) AS visitor_count FROM VisitorLogs GROUP BY zone_visited;

-- 4. Count visits per guide
SELECT guide_name, COUNT(*) AS visits_count FROM VisitorLogs GROUP BY guide_name;

-- 5. Latest visit
SELECT * FROM VisitorLogs ORDER BY visit_date DESC LIMIT 1;

-- 6. Earliest visit
SELECT * FROM VisitorLogs ORDER BY visit_date ASC LIMIT 1;

-- 7. Total visitors
SELECT COUNT(*) AS total_visitors FROM VisitorLogs;

-- 8. Visitors with feedback containing 'excellent'
SELECT * FROM VisitorLogs WHERE feedback LIKE '%excellent%';

-- 9. Visitors for Wildlife Photography
SELECT * FROM VisitorLogs WHERE purpose='Wildlife Photography';

-- 10. Visitors per day
SELECT visit_date, COUNT(*) AS visits_per_day FROM VisitorLogs GROUP BY visit_date;

-- 11. Visitors by zone and purpose
SELECT zone_visited,purpose,COUNT(*) AS cnt FROM VisitorLogs GROUP BY zone_visited,purpose;

-- 12. Visitors with duplicate contact numbers
SELECT contact, COUNT(*) AS cnt FROM VisitorLogs GROUP BY contact HAVING cnt>1;

-- 13. Visitors order by created_at
SELECT * FROM VisitorLogs ORDER BY created_at ASC;

-- 14. Top 5 zones by visitor count
SELECT zone_visited, COUNT(*) AS cnt FROM VisitorLogs GROUP BY zone_visited ORDER BY cnt DESC LIMIT 5;

-- 15. View: JuneVisits
CREATE VIEW JuneVisits AS SELECT * FROM VisitorLogs WHERE MONTH(visit_date)=6 AND YEAR(visit_date)=2025;

-- 16. Query view
SELECT * FROM JuneVisits;

-- 17. CTE: TopGuides
WITH TopGuides AS (
  SELECT guide_name, COUNT(*) AS visit_count FROM VisitorLogs GROUP BY guide_name
)
SELECT * FROM TopGuides WHERE visit_count>=2;

-- 18. Window function: row_number per zone
SELECT *, ROW_NUMBER() OVER(PARTITION BY zone_visited ORDER BY visit_date ASC) AS rn FROM VisitorLogs;

-- 19. Window function: rank per guide
SELECT *, RANK() OVER(PARTITION BY guide_name ORDER BY visit_date ASC) AS visit_rank FROM VisitorLogs;

-- 20. Window function: cumulative count by zone
SELECT zone_visited, visit_date, COUNT(*) OVER(PARTITION BY zone_visited ORDER BY visit_date) AS cum_visits FROM VisitorLogs;

-- 21. Window function: dense rank by purpose
SELECT purpose,id,DENSE_RANK() OVER(PARTITION BY purpose ORDER BY visit_date ASC) AS purpose_rank FROM VisitorLogs;

-- 22. Stored procedure: get visits by guide
DELIMITER //
CREATE PROCEDURE GetVisitsByGuide(IN gname VARCHAR(100))
BEGIN
    SELECT * FROM VisitorLogs WHERE guide_name=gname;
END;
//
DELIMITER ;

-- 23. Call procedure
CALL GetVisitsByGuide('Ravi Sharma');

-- 24. Stored procedure: get visits by zone
DELIMITER //
CREATE PROCEDURE GetVisitsByZone(IN zname VARCHAR(100))
BEGIN
    SELECT * FROM VisitorLogs WHERE zone_visited=zname;
END;
//
DELIMITER ;

-- 25. Call procedure
CALL GetVisitsByZone('Sundarbans Zone A1');

-- 26. Update visitor feedback
UPDATE VisitorLogs SET feedback='Excellent guided tour!' WHERE id=1;

-- 27. Delete a visitor log
DELETE FROM VisitorLogs WHERE id=20;

-- 28. Insert new visitor log
INSERT INTO VisitorLogs (id, visitor_name,contact,visit_date,zone_visited,purpose,guide_name,feedback,created_at,updated_at)
VALUES (21,'Test Visitor','9998887776','2025-06-21','Test Zone','Test Purpose','Test Guide','Test feedback',NOW(),NOW());

-- 29. Transaction commit example
START TRANSACTION;
UPDATE VisitorLogs SET purpose='Research Visit' WHERE id=5;
COMMIT;

-- 30. Transaction rollback example
START TRANSACTION;
UPDATE VisitorLogs SET purpose='Photography' WHERE id=6;
ROLLBACK;

-- 31. Grant SELECT
GRANT SELECT ON VisitorLogs TO 'guest'@'localhost';

-- 32. Revoke SELECT
REVOKE SELECT ON VisitorLogs FROM 'guest'@'localhost';

-- 33. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_visitor_insert BEFORE INSERT ON VisitorLogs
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Trigger: before update
DELIMITER //
CREATE TRIGGER before_visitor_update BEFORE UPDATE ON VisitorLogs
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 35. Subquery: visitor with latest visit
SELECT * FROM VisitorLogs WHERE visit_date=(SELECT MAX(visit_date) FROM VisitorLogs);

-- 36. Subquery: visitors with same guide as id=1
SELECT * FROM VisitorLogs WHERE guide_name=(SELECT guide_name FROM VisitorLogs WHERE id=1);

-- 37. Count by purpose HAVING >2
SELECT purpose, COUNT(*) AS purpose_count FROM VisitorLogs GROUP BY purpose HAVING COUNT(*)>2;

-- 38. COALESCE for null feedback
SELECT id,visitor_name,COALESCE(feedback,'No feedback') AS visitor_feedback FROM VisitorLogs;

-- 39. IFNULL for zone_visited
SELECT id,visitor_name,IFNULL(zone_visited,'Unknown Zone') AS zone FROM VisitorLogs;

-- 40. Latest log by created_at
SELECT * FROM VisitorLogs WHERE created_at=(SELECT MAX(created_at) FROM VisitorLogs);

-- 41. Union: Photography and Bird Watching
SELECT id,purpose FROM VisitorLogs WHERE purpose='Photography'
UNION
SELECT id,purpose FROM VisitorLogs WHERE purpose='Bird Watching';

-- 42. Stored procedure: change purpose
DELIMITER //
CREATE PROCEDURE ChangeVisitorPurpose(IN vid INT, IN new_purpose VARCHAR(100))
BEGIN
    UPDATE VisitorLogs SET purpose=new_purpose WHERE id=vid;
END;
//
DELIMITER ;

-- 43. Call procedure
CALL ChangeVisitorPurpose(2,'Eco-tourism');

-- 44. Window function: cumulative visits by guide
SELECT guide_name,id,COUNT(*) OVER(PARTITION BY guide_name ORDER BY visit_date) AS cum_visits FROM VisitorLogs;

-- 45. Window function: count per purpose
SELECT purpose,id,COUNT(*) OVER(PARTITION BY purpose ORDER BY visit_date) AS purpose_count FROM VisitorLogs;

-- 46. View: RecentVisits
CREATE VIEW RecentVisits AS SELECT * FROM VisitorLogs WHERE visit_date>=DATE_SUB(NOW(), INTERVAL 7 DAY);

-- 47. Query RecentVisits
SELECT * FROM RecentVisits;

-- 48. CTE: TopZones by visitor count
WITH TopZones AS (
    SELECT zone_visited, COUNT(*) AS cnt FROM VisitorLogs GROUP BY zone_visited
)
SELECT * FROM TopZones ORDER BY cnt DESC LIMIT 3;

-- 49. Trigger: log deleted visitor
CREATE TABLE VisitorLogAudit(id INT AUTO_INCREMENT PRIMARY KEY,visitor_name VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_visitor_delete AFTER DELETE ON VisitorLogs
FOR EACH ROW
BEGIN
    INSERT INTO VisitorLogAudit(visitor_name,deleted_at) VALUES(OLD.visitor_name,NOW());
END;
//
DELIMITER ;

-- 50. Delete visitor to test trigger
DELETE FROM VisitorLogs WHERE id=21;

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

-- 1. Select all permits
SELECT * FROM PermitsIssued;

-- 2. Active permits
SELECT * FROM PermitsIssued WHERE status='Active';

-- 3. Expired permits
SELECT * FROM PermitsIssued WHERE status='Expired';

-- 4. Permits expiring this month
SELECT * FROM PermitsIssued WHERE MONTH(expiry_date)=MONTH(NOW()) AND YEAR(expiry_date)=YEAR(NOW());

-- 5. Count permits by type
SELECT permit_type, COUNT(*) AS total FROM PermitsIssued GROUP BY permit_type;

-- 6. Count permits by issuing officer
SELECT issuing_officer, COUNT(*) AS total FROM PermitsIssued GROUP BY issuing_officer;

-- 7. Latest issued permit
SELECT * FROM PermitsIssued ORDER BY issue_date DESC LIMIT 1;

-- 8. Earliest issued permit
SELECT * FROM PermitsIssued ORDER BY issue_date ASC LIMIT 1;

-- 9. Total permits
SELECT COUNT(*) AS total_permits FROM PermitsIssued;

-- 10. Permits for Research
SELECT * FROM PermitsIssued WHERE permit_type='Research';

-- 11. Permits for Photography
SELECT * FROM PermitsIssued WHERE permit_type='Photography';

-- 12. Permits expiring within 30 days
SELECT * FROM PermitsIssued WHERE expiry_date BETWEEN NOW() AND DATE_ADD(NOW(), INTERVAL 30 DAY);

-- 13. View: ActivePermits
CREATE VIEW ActivePermits AS SELECT * FROM PermitsIssued WHERE status='Active';

-- 14. Query view
SELECT * FROM ActivePermits;

-- 15. View: ExpiringSoon
CREATE VIEW ExpiringSoon AS SELECT * FROM PermitsIssued WHERE expiry_date BETWEEN NOW() AND DATE_ADD(NOW(), INTERVAL 30 DAY);

-- 16. Query view
SELECT * FROM ExpiringSoon;

-- 17. CTE: TopOfficers
WITH TopOfficers AS (
    SELECT issuing_officer, COUNT(*) AS permit_count FROM PermitsIssued GROUP BY issuing_officer
)
SELECT * FROM TopOfficers WHERE permit_count>=2;

-- 18. CTE: ActiveResearchPermits
WITH ActiveResearchPermits AS (
    SELECT * FROM PermitsIssued WHERE permit_type='Research' AND status='Active'
)
SELECT * FROM ActiveResearchPermits;

-- 19. Window function: row_number by permit_type
SELECT *, ROW_NUMBER() OVER(PARTITION BY permit_type ORDER BY issue_date ASC) AS rn FROM PermitsIssued;

-- 20. Window function: rank by expiry_date
SELECT *, RANK() OVER(PARTITION BY permit_type ORDER BY expiry_date DESC) AS expiry_rank FROM PermitsIssued;

-- 21. Window function: cumulative permits by officer
SELECT issuing_officer, id, COUNT(*) OVER(PARTITION BY issuing_officer ORDER BY issue_date) AS cum_permits FROM PermitsIssued;

-- 22. Window function: dense rank by status
SELECT status,id,DENSE_RANK() OVER(PARTITION BY status ORDER BY issue_date ASC) AS status_rank FROM PermitsIssued;

-- 23. Stored procedure: GetPermitsByOfficer
DELIMITER //
CREATE PROCEDURE GetPermitsByOfficer(IN officer_name VARCHAR(100))
BEGIN
    SELECT * FROM PermitsIssued WHERE issuing_officer=officer_name;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetPermitsByOfficer('Ravi Sharma');

-- 25. Stored procedure: GetPermitsByType
DELIMITER //
CREATE PROCEDURE GetPermitsByType(IN ptype VARCHAR(50))
BEGIN
    SELECT * FROM PermitsIssued WHERE permit_type=ptype;
END;
//
DELIMITER ;

-- 26. Call procedure
CALL GetPermitsByType('Research');

-- 27. Update permit status
UPDATE PermitsIssued SET status='Completed' WHERE id=7;

-- 28. Delete a permit
DELETE FROM PermitsIssued WHERE id=18;

-- 29. Insert new permit
INSERT INTO PermitsIssued (id, permit_type, issued_to, issue_date, expiry_date, purpose, status, issuing_officer, created_at, updated_at)
VALUES (21,'Photography','Test User','2025-06-21','2025-07-01','Test Purpose','Active','Test Officer',NOW(),NOW());

-- 30. Transaction commit example
START TRANSACTION;
UPDATE PermitsIssued SET status='Expired' WHERE id=3;
COMMIT;

-- 31. Transaction rollback example
START TRANSACTION;
UPDATE PermitsIssued SET status='Active' WHERE id=8;
ROLLBACK;

-- 32. Grant SELECT
GRANT SELECT ON PermitsIssued TO 'guest'@'localhost';

-- 33. Revoke SELECT
REVOKE SELECT ON PermitsIssued FROM 'guest'@'localhost';

-- 34. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_permit_insert BEFORE INSERT ON PermitsIssued
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 35. Trigger: before update
DELIMITER //
CREATE TRIGGER before_permit_update BEFORE UPDATE ON PermitsIssued
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 36. Subquery: latest permit
SELECT * FROM PermitsIssued WHERE issue_date=(SELECT MAX(issue_date) FROM PermitsIssued);

-- 37. Subquery: permits by same officer as id=1
SELECT * FROM PermitsIssued WHERE issuing_officer=(SELECT issuing_officer FROM PermitsIssued WHERE id=1);

-- 38. Count by permit type HAVING >2
SELECT permit_type, COUNT(*) AS type_count FROM PermitsIssued GROUP BY permit_type HAVING COUNT(*)>2;

-- 39. COALESCE for null purpose
SELECT id,issued_to,COALESCE(purpose,'No purpose') AS purpose_value FROM PermitsIssued;

-- 40. IFNULL for permit_type
SELECT id,issued_to,IFNULL(permit_type,'Unknown') AS permit_type_value FROM PermitsIssued;

-- 41. Latest permit by created_at
SELECT * FROM PermitsIssued WHERE created_at=(SELECT MAX(created_at) FROM PermitsIssued);

-- 42. Union: Active and Completed
SELECT id,status FROM PermitsIssued WHERE status='Active'
UNION
SELECT id,status FROM PermitsIssued WHERE status='Completed';

-- 43. Stored procedure: change permit status
DELIMITER //
CREATE PROCEDURE ChangePermitStatus(IN pid INT, IN new_status VARCHAR(20))
BEGIN
    UPDATE PermitsIssued SET status=new_status WHERE id=pid;
END;
//
DELIMITER ;

-- 44. Call procedure
CALL ChangePermitStatus(14,'Active');

-- 45. Window function: cumulative permits by type
SELECT permit_type,id,COUNT(*) OVER(PARTITION BY permit_type ORDER BY issue_date) AS cum_permits FROM PermitsIssued;

-- 46. Window function: count per status
SELECT status,id,COUNT(*) OVER(PARTITION BY status ORDER BY issue_date) AS status_count FROM PermitsIssued;

-- 47. View: RecentPermits
CREATE VIEW RecentPermits AS SELECT * FROM PermitsIssued WHERE issue_date>=DATE_SUB(NOW(), INTERVAL 30 DAY);

-- 48. Query RecentPermits
SELECT * FROM RecentPermits;

-- 49. CTE: TopPermitTypes
WITH TopPermitTypes AS (
    SELECT permit_type, COUNT(*) AS cnt FROM PermitsIssued GROUP BY permit_type
)
SELECT * FROM TopPermitTypes ORDER BY cnt DESC LIMIT 3;

-- 50. Trigger: log deleted permit
CREATE TABLE PermitAudit(id INT AUTO_INCREMENT PRIMARY KEY,issued_to VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_permit_delete AFTER DELETE ON PermitsIssued
FOR EACH ROW
BEGIN
    INSERT INTO PermitAudit(issued_to,deleted_at) VALUES(OLD.issued_to,NOW());
END;
//
DELIMITER ;


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

-- 1. Select all reports
SELECT * FROM FireReports;

-- 2. Resolved fires
SELECT * FROM FireReports WHERE status='Resolved';

-- 3. Investigating fires
SELECT * FROM FireReports WHERE status='Investigating';

-- 4. Under Control fires
SELECT * FROM FireReports WHERE status='Under Control';

-- 5. Count reports by location
SELECT location, COUNT(*) AS total FROM FireReports GROUP BY location;

-- 6. Count reports by reported_by
SELECT reported_by, COUNT(*) AS total FROM FireReports GROUP BY reported_by;

-- 7. Latest fire report
SELECT * FROM FireReports ORDER BY report_date DESC LIMIT 1;

-- 8. Earliest fire report
SELECT * FROM FireReports ORDER BY report_date ASC LIMIT 1;

-- 9. Total fires reported
SELECT COUNT(*) AS total_fires FROM FireReports;

-- 10. Fires caused by campfire
SELECT * FROM FireReports WHERE cause LIKE '%campfire%';

-- 11. Fires caused by lightning
SELECT * FROM FireReports WHERE cause LIKE '%lightning%';

-- 12. Fires in March 2025
SELECT * FROM FireReports WHERE MONTH(report_date)=3 AND YEAR(report_date)=2025;

-- 13. View: ResolvedFires
CREATE VIEW ResolvedFires AS SELECT * FROM FireReports WHERE status='Resolved';

-- 14. Query view
SELECT * FROM ResolvedFires;

-- 15. View: InvestigatingFires
CREATE VIEW InvestigatingFires AS SELECT * FROM FireReports WHERE status='Investigated' OR status='Investigating';

-- 16. Query view
SELECT * FROM InvestigatingFires;

-- 17. CTE: TopReporters
WITH TopReporters AS (
    SELECT reported_by, COUNT(*) AS report_count FROM FireReports GROUP BY reported_by
)
SELECT * FROM TopReporters WHERE report_count>=2;

-- 18. CTE: LargeFires
WITH LargeFires AS (
    SELECT * FROM FireReports WHERE area_affected>3
)
SELECT * FROM LargeFires;

-- 19. Window function: row_number by location
SELECT *, ROW_NUMBER() OVER(PARTITION BY location ORDER BY report_date ASC) AS rn FROM FireReports;

-- 20. Window function: rank by area_affected
SELECT *, RANK() OVER(PARTITION BY location ORDER BY area_affected DESC) AS area_rank FROM FireReports;

-- 21. Window function: cumulative fires by reported_by
SELECT reported_by, id, COUNT(*) OVER(PARTITION BY reported_by ORDER BY report_date) AS cum_reports FROM FireReports;

-- 22. Window function: dense rank by status
SELECT status,id,DENSE_RANK() OVER(PARTITION BY status ORDER BY report_date ASC) AS status_rank FROM FireReports;

-- 23. Stored procedure: GetFiresByReporter
DELIMITER //
CREATE PROCEDURE GetFiresByReporter(IN reporter_name VARCHAR(100))
BEGIN
    SELECT * FROM FireReports WHERE reported_by=reporter_name;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetFiresByReporter('Ravi Sharma');

-- 25. Stored procedure: GetFiresByStatus
DELIMITER //
CREATE PROCEDURE GetFiresByStatus(IN fstatus VARCHAR(20))
BEGIN
    SELECT * FROM FireReports WHERE status=fstatus;
END;
//
DELIMITER ;

-- 26. Call procedure
CALL GetFiresByStatus('Resolved');

-- 27. Update fire status
UPDATE FireReports SET status='Under Control' WHERE id=4;

-- 28. Delete a fire report
DELETE FROM FireReports WHERE id=20;

-- 29. Insert new fire report
INSERT INTO FireReports (id, report_date, location, cause, area_affected, action_taken, status, reported_by, created_at, updated_at)
VALUES (21,'2025-06-01','Test Zone','Unknown','1.5','Test action','Investigating','Test Reporter',NOW(),NOW());

-- 30. Transaction commit example
START TRANSACTION;
UPDATE FireReports SET status='Resolved' WHERE id=10;
COMMIT;

-- 31. Transaction rollback example
START TRANSACTION;
UPDATE FireReports SET status='Investigating' WHERE id=6;
ROLLBACK;

-- 32. Grant SELECT
GRANT SELECT ON FireReports TO 'guest'@'localhost';

-- 33. Revoke SELECT
REVOKE SELECT ON FireReports FROM 'guest'@'localhost';

-- 34. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_fire_insert BEFORE INSERT ON FireReports
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 35. Trigger: before update
DELIMITER //
CREATE TRIGGER before_fire_update BEFORE UPDATE ON FireReports
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 36. Subquery: latest fire
SELECT * FROM FireReports WHERE report_date=(SELECT MAX(report_date) FROM FireReports);

-- 37. Subquery: fires by same reporter as id=1
SELECT * FROM FireReports WHERE reported_by=(SELECT reported_by FROM FireReports WHERE id=1);

-- 38. Count by cause HAVING >1
SELECT cause, COUNT(*) AS cause_count FROM FireReports GROUP BY cause HAVING COUNT(*)>1;

-- 39. COALESCE for null action_taken
SELECT id,location,COALESCE(action_taken,'No action') AS action_value FROM FireReports;

-- 40. IFNULL for cause
SELECT id,location,IFNULL(cause,'Unknown') AS cause_value FROM FireReports;

-- 41. Latest fire by created_at
SELECT * FROM FireReports WHERE created_at=(SELECT MAX(created_at) FROM FireReports);

-- 42. Union: Resolved and Investigating
SELECT id,status FROM FireReports WHERE status='Resolved'
UNION
SELECT id,status FROM FireReports WHERE status='Investigating';

-- 43. Stored procedure: change fire status
DELIMITER //
CREATE PROCEDURE ChangeFireStatus(IN fid INT, IN new_status VARCHAR(20))
BEGIN
    UPDATE FireReports SET status=new_status WHERE id=fid;
END;
//
DELIMITER ;

-- 44. Call procedure
CALL ChangeFireStatus(14,'Resolved');

-- 45. Window function: cumulative fires by cause
SELECT cause,id,COUNT(*) OVER(PARTITION BY cause ORDER BY report_date) AS cum_fires FROM FireReports;

-- 46. Window function: count per status
SELECT status,id,COUNT(*) OVER(PARTITION BY status ORDER BY report_date) AS status_count FROM FireReports;

-- 47. View: RecentFires
CREATE VIEW RecentFires AS SELECT * FROM FireReports WHERE report_date>=DATE_SUB(NOW(), INTERVAL 30 DAY);

-- 48. Query RecentFires
SELECT * FROM RecentFires;

-- 49. CTE: TopCauses
WITH TopCauses AS (
    SELECT cause, COUNT(*) AS cnt FROM FireReports GROUP BY cause
)
SELECT * FROM TopCauses ORDER BY cnt DESC LIMIT 3;

-- 50. Trigger: log deleted fire
CREATE TABLE FireAudit(id INT AUTO_INCREMENT PRIMARY KEY,location VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_fire_delete AFTER DELETE ON FireReports
FOR EACH ROW
BEGIN
    INSERT INTO FireAudit(location,deleted_at) VALUES(OLD.location,NOW());
END;
//
DELIMITER ;

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

-- 1. Select all water bodies
SELECT * FROM WaterBodies;

-- 2. Active water bodies
SELECT * FROM WaterBodies WHERE status='Active';

-- 3. Seasonal water bodies
SELECT * FROM WaterBodies WHERE status='Seasonal';

-- 4. Flowing water bodies
SELECT * FROM WaterBodies WHERE status='Flowing';

-- 5. Lakes only
SELECT * FROM WaterBodies WHERE type='Lake';

-- 6. Rivers only
SELECT * FROM WaterBodies WHERE type='River';

-- 7. Water bodies with area >5
SELECT * FROM WaterBodies WHERE area>5;

-- 8. Water bodies with depth >5
SELECT * FROM WaterBodies WHERE depth>5;

-- 9. Count water bodies by type
SELECT type, COUNT(*) AS total FROM WaterBodies GROUP BY type;

-- 10. Count water bodies by status
SELECT status, COUNT(*) AS total FROM WaterBodies GROUP BY status;

-- 11. Largest water body
SELECT * FROM WaterBodies ORDER BY area DESC LIMIT 1;

-- 12. Smallest water body
SELECT * FROM WaterBodies ORDER BY area ASC LIMIT 1;

-- 13. View: ActiveWaterBodies
CREATE VIEW ActiveWaterBodies AS SELECT * FROM WaterBodies WHERE status='Active';

-- 14. Query view
SELECT * FROM ActiveWaterBodies;

-- 15. View: SeasonalWaterBodies
CREATE VIEW SeasonalWaterBodies AS SELECT * FROM WaterBodies WHERE status='Seasonal';

-- 16. Query view
SELECT * FROM SeasonalWaterBodies;

-- 17. CTE: LargeWaterBodies
WITH LargeWaterBodies AS (
    SELECT * FROM WaterBodies WHERE area>5
)
SELECT * FROM LargeWaterBodies;

-- 18. CTE: DeepWaterBodies
WITH DeepWaterBodies AS (
    SELECT * FROM WaterBodies WHERE depth>5
)
SELECT * FROM DeepWaterBodies;

-- 19. Window function: row_number by type
SELECT *, ROW_NUMBER() OVER(PARTITION BY type ORDER BY area DESC) AS rn FROM WaterBodies;

-- 20. Window function: rank by area
SELECT *, RANK() OVER(PARTITION BY type ORDER BY area DESC) AS area_rank FROM WaterBodies;

-- 21. Window function: cumulative count by status
SELECT status,id,COUNT(*) OVER(PARTITION BY status ORDER BY id) AS cum_count FROM WaterBodies;

-- 22. Window function: dense rank by depth
SELECT id,name,depth,DENSE_RANK() OVER(PARTITION BY type ORDER BY depth DESC) AS depth_rank FROM WaterBodies;

-- 23. Stored procedure: GetWaterBodiesByType
DELIMITER //
CREATE PROCEDURE GetWaterBodiesByType(IN wtype VARCHAR(50))
BEGIN
    SELECT * FROM WaterBodies WHERE type=wtype;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetWaterBodiesByType('Lake');

-- 25. Stored procedure: GetWaterBodiesByStatus
DELIMITER //
CREATE PROCEDURE GetWaterBodiesByStatus(IN wstatus VARCHAR(20))
BEGIN
    SELECT * FROM WaterBodies WHERE status=wstatus;
END;
//
DELIMITER ;

-- 26. Call procedure
CALL GetWaterBodiesByStatus('Active');

-- 27. Update water quality
UPDATE WaterBodies SET water_quality='Excellent' WHERE id=2;

-- 28. Delete a water body
DELETE FROM WaterBodies WHERE id=20;

-- 29. Insert new water body
INSERT INTO WaterBodies (id,name,type,location,area,depth,water_quality,status,created_at,updated_at)
VALUES (21,'Test Lake','Lake','Test Zone',2.5,3.0,'Good','Active',NOW(),NOW());

-- 30. Transaction commit example
START TRANSACTION;
UPDATE WaterBodies SET status='Drying' WHERE id=9;
COMMIT;

-- 31. Transaction rollback example
START TRANSACTION;
UPDATE WaterBodies SET status='Seasonal' WHERE id=3;
ROLLBACK;

-- 32. Grant SELECT
GRANT SELECT ON WaterBodies TO 'guest'@'localhost';

-- 33. Revoke SELECT
REVOKE SELECT ON WaterBodies FROM 'guest'@'localhost';

-- 34. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_water_insert BEFORE INSERT ON WaterBodies
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 35. Trigger: before update
DELIMITER //
CREATE TRIGGER before_water_update BEFORE UPDATE ON WaterBodies
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 36. Subquery: largest water body
SELECT * FROM WaterBodies WHERE area=(SELECT MAX(area) FROM WaterBodies);

-- 37. Subquery: water bodies in same location as id=1
SELECT * FROM WaterBodies WHERE location=(SELECT location FROM WaterBodies WHERE id=1);

-- 38. Count by water quality HAVING >1
SELECT water_quality, COUNT(*) AS count_quality FROM WaterBodies GROUP BY water_quality HAVING COUNT(*)>1;

-- 39. COALESCE for null water_quality
SELECT id,name,COALESCE(water_quality,'Unknown') AS water_quality_value FROM WaterBodies;

-- 40. IFNULL for status
SELECT id,name,IFNULL(status,'Unknown') AS status_value FROM WaterBodies;

-- 41. Latest water body by created_at
SELECT * FROM WaterBodies WHERE created_at=(SELECT MAX(created_at) FROM WaterBodies);

-- 42. Union: Active and Seasonal
SELECT id,status FROM WaterBodies WHERE status='Active'
UNION
SELECT id,status FROM WaterBodies WHERE status='Seasonal';

-- 43. Stored procedure: change water status
DELIMITER //
CREATE PROCEDURE ChangeWaterStatus(IN wid INT, IN new_status VARCHAR(20))
BEGIN
    UPDATE WaterBodies SET status=new_status WHERE id=wid;
END;
//
DELIMITER ;

-- 44. Call procedure
CALL ChangeWaterStatus(18,'Drying');

-- 45. Window function: cumulative count by type
SELECT type,id,COUNT(*) OVER(PARTITION BY type ORDER BY id) AS type_count FROM WaterBodies;

-- 46. Window function: cumulative area by status
SELECT status,id,SUM(area) OVER(PARTITION BY status ORDER BY id) AS cum_area FROM WaterBodies;

-- 47. View: RecentWaterBodies
CREATE VIEW RecentWaterBodies AS SELECT * FROM WaterBodies WHERE created_at>=DATE_SUB(NOW(), INTERVAL 30 DAY);

-- 48. Query RecentWaterBodies
SELECT * FROM RecentWaterBodies;

-- 49. CTE: TopWaterQuality
WITH TopWaterQuality AS (
    SELECT water_quality, COUNT(*) AS cnt FROM WaterBodies GROUP BY water_quality
)
SELECT * FROM TopWaterQuality ORDER BY cnt DESC LIMIT 3;

-- 50. Trigger: log deleted water body
CREATE TABLE WaterAudit(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_water_delete AFTER DELETE ON WaterBodies
FOR EACH ROW
BEGIN
    INSERT INTO WaterAudit(name,deleted_at) VALUES(OLD.name,NOW());
END;
//
DELIMITER ;


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

-- 1. Select all tree species
SELECT * FROM TreeSpecies;

-- 2. Active tree species
SELECT * FROM TreeSpecies WHERE status='Active';

-- 3. Protected tree species
SELECT * FROM TreeSpecies WHERE status='Protected';

-- 4. Cultivated tree species
SELECT * FROM TreeSpecies WHERE status='Cultivated';

-- 5. Vulnerable species
SELECT * FROM TreeSpecies WHERE conservation_status='Vulnerable';

-- 6. Least Concern species
SELECT * FROM TreeSpecies WHERE conservation_status='Least Concern';

-- 7. Rare species
SELECT * FROM TreeSpecies WHERE conservation_status='Rare';

-- 8. Fast-growing species
SELECT * FROM TreeSpecies WHERE growth_rate='Fast';

-- 9. Medium-growing species
SELECT * FROM TreeSpecies WHERE growth_rate='Medium';

-- 10. Slow-growing species
SELECT * FROM TreeSpecies WHERE growth_rate='Slow';

-- 11. Count by status
SELECT status, COUNT(*) AS total FROM TreeSpecies GROUP BY status;

-- 12. Count by conservation_status
SELECT conservation_status, COUNT(*) AS total FROM TreeSpecies GROUP BY conservation_status;

-- 13. View: ActiveTrees
CREATE VIEW ActiveTrees AS SELECT * FROM TreeSpecies WHERE status='Active';

-- 14. Query ActiveTrees
SELECT * FROM ActiveTrees;

-- 15. View: ProtectedTrees
CREATE VIEW ProtectedTrees AS SELECT * FROM TreeSpecies WHERE status='Protected';

-- 16. Query ProtectedTrees
SELECT * FROM ProtectedTrees;

-- 17. CTE: FastGrowingTrees
WITH FastGrowingTrees AS (
    SELECT * FROM TreeSpecies WHERE growth_rate='Fast'
)
SELECT * FROM FastGrowingTrees;

-- 18. CTE: VulnerableTrees
WITH VulnerableTrees AS (
    SELECT * FROM TreeSpecies WHERE conservation_status='Vulnerable'
)
SELECT * FROM VulnerableTrees;

-- 19. Window function: row_number by conservation_status
SELECT *, ROW_NUMBER() OVER(PARTITION BY conservation_status ORDER BY id) AS rn FROM TreeSpecies;

-- 20. Window function: rank by growth_rate
SELECT *, RANK() OVER(PARTITION BY growth_rate ORDER BY id) AS growth_rank FROM TreeSpecies;

-- 21. Window function: cumulative count by status
SELECT status,id,COUNT(*) OVER(PARTITION BY status ORDER BY id) AS cum_count FROM TreeSpecies;

-- 22. Window function: dense rank by conservation_status
SELECT id,name,conservation_status,DENSE_RANK() OVER(PARTITION BY status ORDER BY id) AS cons_rank FROM TreeSpecies;

-- 23. Stored procedure: GetTreesByStatus
DELIMITER //
CREATE PROCEDURE GetTreesByStatus(IN tstatus VARCHAR(20))
BEGIN
    SELECT * FROM TreeSpecies WHERE status=tstatus;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetTreesByStatus('Active');

-- 25. Stored procedure: GetTreesByConservation
DELIMITER //
CREATE PROCEDURE GetTreesByConservation(IN cstatus VARCHAR(50))
BEGIN
    SELECT * FROM TreeSpecies WHERE conservation_status=cstatus;
END;
//
DELIMITER ;

-- 26. Call procedure
CALL GetTreesByConservation('Vulnerable');

-- 27. Update growth rate
UPDATE TreeSpecies SET growth_rate='Very Fast' WHERE id=12;

-- 28. Delete a tree species
DELETE FROM TreeSpecies WHERE id=20;

-- 29. Insert new tree species
INSERT INTO TreeSpecies (id,name,scientific_name,common_uses,native_region,conservation_status,growth_rate,status,created_at,updated_at)
VALUES (21,'Test Tree','Testus arbor','Testing','Test Region','Least Concern','Medium','Active',NOW(),NOW());

-- 30. Transaction commit example
START TRANSACTION;
UPDATE TreeSpecies SET status='Protected' WHERE id=3;
COMMIT;

-- 31. Transaction rollback example
START TRANSACTION;
UPDATE TreeSpecies SET status='Active' WHERE id=7;
ROLLBACK;

-- 32. Grant SELECT
GRANT SELECT ON TreeSpecies TO 'guest'@'localhost';

-- 33. Revoke SELECT
REVOKE SELECT ON TreeSpecies FROM 'guest'@'localhost';

-- 34. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_tree_insert BEFORE INSERT ON TreeSpecies
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 35. Trigger: before update
DELIMITER //
CREATE TRIGGER before_tree_update BEFORE UPDATE ON TreeSpecies
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 36. Subquery: vulnerable species
SELECT * FROM TreeSpecies WHERE conservation_status=(SELECT 'Vulnerable');

-- 37. Subquery: trees in same native_region as id=1
SELECT * FROM TreeSpecies WHERE native_region=(SELECT native_region FROM TreeSpecies WHERE id=1);

-- 38. Count by growth_rate HAVING >1
SELECT growth_rate, COUNT(*) AS count_growth FROM TreeSpecies GROUP BY growth_rate HAVING COUNT(*)>1;

-- 39. COALESCE for null common_uses
SELECT id,name,COALESCE(common_uses,'Not specified') AS uses FROM TreeSpecies;

-- 40. IFNULL for conservation_status
SELECT id,name,IFNULL(conservation_status,'Unknown') AS cons_status FROM TreeSpecies;

-- 41. Latest tree by created_at
SELECT * FROM TreeSpecies WHERE created_at=(SELECT MAX(created_at) FROM TreeSpecies);

-- 42. Union: Active and Protected
SELECT id,status FROM TreeSpecies WHERE status='Active'
UNION
SELECT id,status FROM TreeSpecies WHERE status='Protected';

-- 43. Stored procedure: change tree status
DELIMITER //
CREATE PROCEDURE ChangeTreeStatus(IN tid INT, IN new_status VARCHAR(20))
BEGIN
    UPDATE TreeSpecies SET status=new_status WHERE id=tid;
END;
//
DELIMITER ;

-- 44. Call procedure
CALL ChangeTreeStatus(19,'Protected');

-- 45. Window function: cumulative count by conservation_status
SELECT conservation_status,id,COUNT(*) OVER(PARTITION BY conservation_status ORDER BY id) AS cons_count FROM TreeSpecies;

-- 46. Window function: cumulative count by growth_rate
SELECT growth_rate,id,COUNT(*) OVER(PARTITION BY growth_rate ORDER BY id) AS growth_count FROM TreeSpecies;

-- 47. View: RecentTrees
CREATE VIEW RecentTrees AS SELECT * FROM TreeSpecies WHERE created_at>=DATE_SUB(NOW(), INTERVAL 30 DAY);

-- 48. Query RecentTrees
SELECT * FROM RecentTrees;

-- 49. CTE: TopConservationStatus
WITH TopConservationStatus AS (
    SELECT conservation_status, COUNT(*) AS cnt FROM TreeSpecies GROUP BY conservation_status
)
SELECT * FROM TopConservationStatus ORDER BY cnt DESC LIMIT 3;

-- 50. Trigger: log deleted tree
CREATE TABLE TreeAudit(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_tree_delete AFTER DELETE ON TreeSpecies
FOR EACH ROW
BEGIN
    INSERT INTO TreeAudit(name,deleted_at) VALUES(OLD.name,NOW());
END;
//
DELIMITER ;


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

-- 1. Select all nurseries
SELECT * FROM Nurseries;

-- 2. Nurseries with capacity > 15000
SELECT * FROM Nurseries WHERE capacity>15000;

-- 3. Active nurseries
SELECT * FROM Nurseries WHERE status='Active';

-- 4. Nurseries in Sundarbans
SELECT * FROM Nurseries WHERE location LIKE '%Sundarbans%';

-- 5. Nurseries established after 2015
SELECT * FROM Nurseries WHERE established_date>'2015-01-01';

-- 6. Count by manager
SELECT manager, COUNT(*) AS total FROM Nurseries GROUP BY manager;

-- 7. Count by status
SELECT status, COUNT(*) AS total FROM Nurseries GROUP BY status;

-- 8. Max capacity nursery
SELECT * FROM Nurseries ORDER BY capacity DESC LIMIT 1;

-- 9. Min capacity nursery
SELECT * FROM Nurseries ORDER BY capacity ASC LIMIT 1;

-- 10. Average capacity
SELECT AVG(capacity) AS avg_capacity FROM Nurseries;

-- 11. View: LargeNurseries
CREATE VIEW LargeNurseries AS SELECT * FROM Nurseries WHERE capacity>15000;

-- 12. Query LargeNurseries
SELECT * FROM LargeNurseries;

-- 13. View: RecentNurseries
CREATE VIEW RecentNurseries AS SELECT * FROM Nurseries WHERE established_date>=DATE_SUB(NOW(), INTERVAL 5 YEAR);

-- 14. Query RecentNurseries
SELECT * FROM RecentNurseries;

-- 15. CTE: HighCapacityNurseries
WITH HighCapacityNurseries AS (
    SELECT * FROM Nurseries WHERE capacity>12000
)
SELECT * FROM HighCapacityNurseries;

-- 16. CTE: ZoneNurseries
WITH ZoneNurseries AS (
    SELECT * FROM Nurseries WHERE location LIKE '%Zone A%'
)
SELECT * FROM ZoneNurseries;

-- 17. Window: row_number by capacity
SELECT *, ROW_NUMBER() OVER(PARTITION BY status ORDER BY capacity DESC) AS rn FROM Nurseries;

-- 18. Window: rank by established_date
SELECT *, RANK() OVER(PARTITION BY status ORDER BY established_date DESC) AS est_rank FROM Nurseries;

-- 19. Window: cumulative capacity by status
SELECT status, id, SUM(capacity) OVER(PARTITION BY status ORDER BY id) AS cum_capacity FROM Nurseries;

-- 20. Window: dense_rank by capacity
SELECT id,name,capacity,DENSE_RANK() OVER(PARTITION BY status ORDER BY capacity DESC) AS cap_rank FROM Nurseries;

-- 21. Stored Procedure: GetNurseriesByStatus
DELIMITER //
CREATE PROCEDURE GetNurseriesByStatus(IN nstatus VARCHAR(20))
BEGIN
    SELECT * FROM Nurseries WHERE status=nstatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetNurseriesByStatus('Active');

-- 23. Stored Procedure: GetNurseriesByManager
DELIMITER //
CREATE PROCEDURE GetNurseriesByManager(IN mgr VARCHAR(100))
BEGIN
    SELECT * FROM Nurseries WHERE manager=mgr;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetNurseriesByManager('Ravi Sharma');

-- 25. Update capacity
UPDATE Nurseries SET capacity=capacity+500 WHERE id=1;

-- 26. Delete a nursery
DELETE FROM Nurseries WHERE id=20;

-- 27. Insert new nursery
INSERT INTO Nurseries (id,name,location,capacity,established_date,manager,status,description,created_at,updated_at)
VALUES (21,'Test Nursery','Test Zone',10000,'2025-01-01','Test Manager','Active','Test description',NOW(),NOW());

-- 28. Transaction commit
START TRANSACTION;
UPDATE Nurseries SET status='Active' WHERE id=3;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE Nurseries SET status='Inactive' WHERE id=2;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON Nurseries TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON Nurseries FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_nursery_insert BEFORE INSERT ON Nurseries
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_nursery_update BEFORE UPDATE ON Nurseries
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Subquery: largest capacity nursery
SELECT * FROM Nurseries WHERE capacity=(SELECT MAX(capacity) FROM Nurseries);

-- 35. Subquery: nurseries in same zone as id=1
SELECT * FROM Nurseries WHERE location=(SELECT location FROM Nurseries WHERE id=1);

-- 36. Count nurseries HAVING capacity>10000
SELECT location, COUNT(*) AS total FROM Nurseries GROUP BY location HAVING COUNT(*)>1;

-- 37. COALESCE for description
SELECT id,name,COALESCE(description,'Not provided') AS desc FROM Nurseries;

-- 38. IFNULL for manager
SELECT id,name,IFNULL(manager,'Unknown') AS manager_name FROM Nurseries;

-- 39. Latest nursery added
SELECT * FROM Nurseries WHERE created_at=(SELECT MAX(created_at) FROM Nurseries);

-- 40. Union: Active and Inactive
SELECT id,status FROM Nurseries WHERE status='Active'
UNION
SELECT id,status FROM Nurseries WHERE status='Inactive';

-- 41. Stored procedure: change nursery status
DELIMITER //
CREATE PROCEDURE ChangeNurseryStatus(IN nid INT, IN nstatus VARCHAR(20))
BEGIN
    UPDATE Nurseries SET status=nstatus WHERE id=nid;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL ChangeNurseryStatus(19,'Inactive');

-- 43. Window: cumulative capacity by manager
SELECT manager,id,SUM(capacity) OVER(PARTITION BY manager ORDER BY id) AS cum_capacity FROM Nurseries;

-- 44. Window: cumulative count by status
SELECT status,id,COUNT(*) OVER(PARTITION BY status ORDER BY id) AS count_status FROM Nurseries;

-- 45. View: RecentNurseries30Days
CREATE VIEW RecentNurseries30Days AS SELECT * FROM Nurseries WHERE created_at>=DATE_SUB(NOW(), INTERVAL 30 DAY);

-- 46. Query RecentNurseries30Days
SELECT * FROM RecentNurseries30Days;

-- 47. CTE: TopManagers
WITH TopManagers AS (
    SELECT manager, COUNT(*) AS cnt FROM Nurseries GROUP BY manager
)
SELECT * FROM TopManagers ORDER BY cnt DESC LIMIT 3;

-- 48. Trigger: log deleted nursery
CREATE TABLE NurseryAudit(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_nursery_delete AFTER DELETE ON Nurseries
FOR EACH ROW
BEGIN
    INSERT INTO NurseryAudit(name,deleted_at) VALUES(OLD.name,NOW());
END;
//
DELIMITER ;

-- 49. Select nurseries with capacity > 12000
SELECT * FROM Nurseries WHERE capacity>12000;

-- 50. Select nurseries grouped by status
SELECT status, COUNT(*) AS total FROM Nurseries GROUP BY status;


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

-- 1. Select all ranger assignments
SELECT * FROM RangerAssignments;

-- 2. Active assignments
SELECT * FROM RangerAssignments WHERE status='Active';

-- 3. Assignments in Sundarbans
SELECT * FROM RangerAssignments WHERE zone_assigned LIKE '%Sundarbans%';

-- 4. Night shift assignments
SELECT * FROM RangerAssignments WHERE shift='Night';

-- 5. Assignments ending after June 2025
SELECT * FROM RangerAssignments WHERE end_date>'2025-06-30';

-- 6. Count by zone
SELECT zone_assigned, COUNT(*) AS total FROM RangerAssignments GROUP BY zone_assigned;

-- 7. Count by duty type
SELECT duty_type, COUNT(*) AS total FROM RangerAssignments GROUP BY duty_type;

-- 8. Max duration assignment
SELECT *, DATEDIFF(end_date,start_date) AS duration FROM RangerAssignments ORDER BY duration DESC LIMIT 1;

-- 9. Min duration assignment
SELECT *, DATEDIFF(end_date,start_date) AS duration FROM RangerAssignments ORDER BY duration ASC LIMIT 1;

-- 10. Average assignment duration
SELECT AVG(DATEDIFF(end_date,start_date)) AS avg_duration FROM RangerAssignments;

-- 11. View: ActiveRangers
CREATE VIEW ActiveRangers AS SELECT * FROM RangerAssignments WHERE status='Active';

-- 12. Query ActiveRangers
SELECT * FROM ActiveRangers;

-- 13. View: NightShiftRangers
CREATE VIEW NightShiftRangers AS SELECT * FROM RangerAssignments WHERE shift='Night';

-- 14. Query NightShiftRangers
SELECT * FROM NightShiftRangers;

-- 15. CTE: LongAssignments
WITH LongAssignments AS (
    SELECT *, DATEDIFF(end_date,start_date) AS duration FROM RangerAssignments WHERE DATEDIFF(end_date,start_date)>180
)
SELECT * FROM LongAssignments;

-- 16. CTE: ZoneA1Assignments
WITH ZoneA1Assignments AS (
    SELECT * FROM RangerAssignments WHERE zone_assigned LIKE '%Zone A1%'
)
SELECT * FROM ZoneA1Assignments;

-- 17. Window: row_number by start_date
SELECT *, ROW_NUMBER() OVER(PARTITION BY shift ORDER BY start_date ASC) AS rn FROM RangerAssignments;

-- 18. Window: rank by duration
SELECT *, RANK() OVER(PARTITION BY status ORDER BY DATEDIFF(end_date,start_date) DESC) AS duration_rank FROM RangerAssignments;

-- 19. Window: cumulative assignments by zone
SELECT zone_assigned,id,SUM(DATEDIFF(end_date,start_date)) OVER(PARTITION BY zone_assigned ORDER BY id) AS cum_duration FROM RangerAssignments;

-- 20. Window: dense_rank by end_date
SELECT id,ranger_name,end_date,DENSE_RANK() OVER(PARTITION BY shift ORDER BY end_date ASC) AS end_rank FROM RangerAssignments;

-- 21. Stored Procedure: GetAssignmentsByStatus
DELIMITER //
CREATE PROCEDURE GetAssignmentsByStatus(IN sstatus VARCHAR(20))
BEGIN
    SELECT * FROM RangerAssignments WHERE status=sstatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetAssignmentsByStatus('Active');

-- 23. Stored Procedure: GetAssignmentsByRanger
DELIMITER //
CREATE PROCEDURE GetAssignmentsByRanger(IN rname VARCHAR(100))
BEGIN
    SELECT * FROM RangerAssignments WHERE ranger_name=rname;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetAssignmentsByRanger('Ravi Sharma');

-- 25. Update assignment status
UPDATE RangerAssignments SET status='Completed' WHERE id=2;

-- 26. Delete an assignment
DELETE FROM RangerAssignments WHERE id=20;

-- 27. Insert new assignment
INSERT INTO RangerAssignments (id,ranger_name,zone_assigned,start_date,end_date,shift,duty_type,status,created_at,updated_at)
VALUES (21,'Test Ranger','Test Zone','2025-07-01','2025-12-31','Morning','Test Duty','Active',NOW(),NOW());

-- 28. Transaction commit
START TRANSACTION;
UPDATE RangerAssignments SET status='Active' WHERE id=3;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE RangerAssignments SET status='Inactive' WHERE id=1;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON RangerAssignments TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON RangerAssignments FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_ranger_insert BEFORE INSERT ON RangerAssignments
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_ranger_update BEFORE UPDATE ON RangerAssignments
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Subquery: longest assignment
SELECT * FROM RangerAssignments WHERE DATEDIFF(end_date,start_date)=(SELECT MAX(DATEDIFF(end_date,start_date)) FROM RangerAssignments);

-- 35. Subquery: assignments in same zone as id=1
SELECT * FROM RangerAssignments WHERE zone_assigned=(SELECT zone_assigned FROM RangerAssignments WHERE id=1);

-- 36. Count assignments HAVING more than 1 in a zone
SELECT zone_assigned, COUNT(*) AS total FROM RangerAssignments GROUP BY zone_assigned HAVING COUNT(*)>1;

-- 37. COALESCE for duty_type
SELECT id,ranger_name,COALESCE(duty_type,'Not assigned') AS duty FROM RangerAssignments;

-- 38. IFNULL for shift
SELECT id,ranger_name,IFNULL(shift,'Unknown') AS shift_name FROM RangerAssignments;

-- 39. Latest assignment added
SELECT * FROM RangerAssignments WHERE created_at=(SELECT MAX(created_at) FROM RangerAssignments);

-- 40. Union: Active and Completed
SELECT id,status FROM RangerAssignments WHERE status='Active'
UNION
SELECT id,status FROM RangerAssignments WHERE status='Completed';

-- 41. Stored procedure: change assignment status
DELIMITER //
CREATE PROCEDURE ChangeAssignmentStatus(IN aid INT, IN nstatus VARCHAR(20))
BEGIN
    UPDATE RangerAssignments SET status=nstatus WHERE id=aid;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL ChangeAssignmentStatus(5,'Completed');

-- 43. Window: cumulative duration by ranger
SELECT ranger_name,id,SUM(DATEDIFF(end_date,start_date)) OVER(PARTITION BY ranger_name ORDER BY id) AS cum_duration FROM RangerAssignments;

-- 44. Window: cumulative count by status
SELECT status,id,COUNT(*) OVER(PARTITION BY status ORDER BY id) AS count_status FROM RangerAssignments;

-- 45. View: RecentAssignments30Days
CREATE VIEW RecentAssignments30Days AS SELECT * FROM RangerAssignments WHERE created_at>=DATE_SUB(NOW(), INTERVAL 30 DAY);

-- 46. Query RecentAssignments30Days
SELECT * FROM RecentAssignments30Days;

-- 47. CTE: TopRangers
WITH TopRangers AS (
    SELECT ranger_name, COUNT(*) AS cnt FROM RangerAssignments GROUP BY ranger_name
)
SELECT * FROM TopRangers ORDER BY cnt DESC LIMIT 3;

-- 48. Trigger: log deleted assignment
CREATE TABLE RangerAudit(id INT AUTO_INCREMENT PRIMARY KEY,ranger_name VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_ranger_delete AFTER DELETE ON RangerAssignments
FOR EACH ROW
BEGIN
    INSERT INTO RangerAudit(ranger_name,deleted_at) VALUES(OLD.ranger_name,NOW());
END;
//
DELIMITER ;

-- 49. Select assignments longer than 180 days
SELECT * FROM RangerAssignments WHERE DATEDIFF(end_date,start_date)>180;

-- 50. Count assignments grouped by shift
SELECT shift, COUNT(*) AS total FROM RangerAssignments GROUP BY shift;


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

-- 1. Select all training programs
SELECT * FROM TrainingPrograms;

-- 2. Completed programs
SELECT * FROM TrainingPrograms WHERE status='Completed';

-- 3. Ongoing programs
SELECT * FROM TrainingPrograms WHERE status='Ongoing';

-- 4. Upcoming programs
SELECT * FROM TrainingPrograms WHERE status='Upcoming';

-- 5. Programs by Wildlife Division
SELECT * FROM TrainingPrograms WHERE department='Wildlife Division';

-- 6. Count programs by department
SELECT department, COUNT(*) AS total FROM TrainingPrograms GROUP BY department;

-- 7. Count programs by trainer
SELECT trainer, COUNT(*) AS total FROM TrainingPrograms GROUP BY trainer;

-- 8. Max duration program
SELECT *, DATEDIFF(end_date,start_date) AS duration FROM TrainingPrograms ORDER BY duration DESC LIMIT 1;

-- 9. Min duration program
SELECT *, DATEDIFF(end_date,start_date) AS duration FROM TrainingPrograms ORDER BY duration ASC LIMIT 1;

-- 10. Average duration
SELECT AVG(DATEDIFF(end_date,start_date)) AS avg_duration FROM TrainingPrograms;

-- 11. View: CompletedPrograms
CREATE VIEW CompletedPrograms AS SELECT * FROM TrainingPrograms WHERE status='Completed';

-- 12. Query CompletedPrograms
SELECT * FROM CompletedPrograms;

-- 13. View: OngoingPrograms
CREATE VIEW OngoingPrograms AS SELECT * FROM TrainingPrograms WHERE status='Ongoing';

-- 14. Query OngoingPrograms
SELECT * FROM OngoingPrograms;

-- 15. CTE: LongDurationPrograms
WITH LongDurationPrograms AS (
    SELECT *, DATEDIFF(end_date,start_date) AS duration FROM TrainingPrograms WHERE DATEDIFF(end_date,start_date)>5
)
SELECT * FROM LongDurationPrograms;

-- 16. CTE: TrainerPrograms
WITH TrainerPrograms AS (
    SELECT * FROM TrainingPrograms WHERE trainer='Dr. Tina Harris'
)
SELECT * FROM TrainerPrograms;

-- 17. Window: row_number by start_date
SELECT *, ROW_NUMBER() OVER(PARTITION BY department ORDER BY start_date ASC) AS rn FROM TrainingPrograms;

-- 18. Window: rank by duration
SELECT *, RANK() OVER(PARTITION BY status ORDER BY DATEDIFF(end_date,start_date) DESC) AS duration_rank FROM TrainingPrograms;

-- 19. Window: cumulative duration by department
SELECT department,id,SUM(DATEDIFF(end_date,start_date)) OVER(PARTITION BY department ORDER BY id) AS cum_duration FROM TrainingPrograms;

-- 20. Window: dense_rank by end_date
SELECT id,title,end_date,DENSE_RANK() OVER(PARTITION BY status ORDER BY end_date ASC) AS end_rank FROM TrainingPrograms;

-- 21. Stored Procedure: GetProgramsByStatus
DELIMITER //
CREATE PROCEDURE GetProgramsByStatus(IN pstatus VARCHAR(20))
BEGIN
    SELECT * FROM TrainingPrograms WHERE status=pstatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetProgramsByStatus('Completed');

-- 23. Stored Procedure: GetProgramsByTrainer
DELIMITER //
CREATE PROCEDURE GetProgramsByTrainer(IN ptrainer VARCHAR(100))
BEGIN
    SELECT * FROM TrainingPrograms WHERE trainer=ptrainer;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetProgramsByTrainer('Dr. Tina Harris');

-- 25. Update program status
UPDATE TrainingPrograms SET status='Completed' WHERE id=8;

-- 26. Delete a program
DELETE FROM TrainingPrograms WHERE id=20;

-- 27. Insert new program
INSERT INTO TrainingPrograms (id,title,trainer,start_date,end_date,department,description,status,created_at,updated_at)
VALUES (21,'Test Training','Test Trainer','2025-09-01','2025-09-05','Test Dept','Test description','Upcoming',NOW(),NOW());

-- 28. Transaction commit
START TRANSACTION;
UPDATE TrainingPrograms SET status='Ongoing' WHERE id=6;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE TrainingPrograms SET status='Completed' WHERE id=7;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON TrainingPrograms TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON TrainingPrograms FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_training_insert BEFORE INSERT ON TrainingPrograms
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_training_update BEFORE UPDATE ON TrainingPrograms
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Subquery: longest program
SELECT * FROM TrainingPrograms WHERE DATEDIFF(end_date,start_date)=(SELECT MAX(DATEDIFF(end_date,start_date)) FROM TrainingPrograms);

-- 35. Subquery: programs in same department as id=1
SELECT * FROM TrainingPrograms WHERE department=(SELECT department FROM TrainingPrograms WHERE id=1);

-- 36. Count programs HAVING more than 1 per trainer
SELECT trainer, COUNT(*) AS total FROM TrainingPrograms GROUP BY trainer HAVING COUNT(*)>1;

-- 37. COALESCE for description
SELECT id,title,COALESCE(description,'No description') AS desc_text FROM TrainingPrograms;

-- 38. IFNULL for trainer
SELECT id,title,IFNULL(trainer,'Unknown') AS trainer_name FROM TrainingPrograms;

-- 39. Latest program added
SELECT * FROM TrainingPrograms WHERE created_at=(SELECT MAX(created_at) FROM TrainingPrograms);

-- 40. Union: Completed and Upcoming
SELECT id,status FROM TrainingPrograms WHERE status='Completed'
UNION
SELECT id,status FROM TrainingPrograms WHERE status='Upcoming';

-- 41. Stored procedure: change program status
DELIMITER //
CREATE PROCEDURE ChangeProgramStatus(IN pid INT, IN nstatus VARCHAR(20))
BEGIN
    UPDATE TrainingPrograms SET status=nstatus WHERE id=pid;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL ChangeProgramStatus(6,'Completed');

-- 43. Window: cumulative duration by trainer
SELECT trainer,id,SUM(DATEDIFF(end_date,start_date)) OVER(PARTITION BY trainer ORDER BY id) AS cum_duration FROM TrainingPrograms;

-- 44. Window: cumulative count by status
SELECT status,id,COUNT(*) OVER(PARTITION BY status ORDER BY id) AS count_status FROM TrainingPrograms;

-- 45. View: RecentPrograms30Days
CREATE VIEW RecentPrograms30Days AS SELECT * FROM TrainingPrograms WHERE created_at>=DATE_SUB(NOW(), INTERVAL 30 DAY);

-- 46. Query RecentPrograms30Days
SELECT * FROM RecentPrograms30Days;

-- 47. CTE: TopTrainers
WITH TopTrainers AS (
    SELECT trainer, COUNT(*) AS cnt FROM TrainingPrograms GROUP BY trainer
)
SELECT * FROM TopTrainers ORDER BY cnt DESC LIMIT 3;

-- 48. Trigger: log deleted program
CREATE TABLE ProgramAudit(id INT AUTO_INCREMENT PRIMARY KEY,title VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_program_delete AFTER DELETE ON TrainingPrograms
FOR EACH ROW
BEGIN
    INSERT INTO ProgramAudit(title,deleted_at) VALUES(OLD.title,NOW());
END;
//
DELIMITER ;

-- 49. Select programs longer than 5 days
SELECT * FROM TrainingPrograms WHERE DATEDIFF(end_date,start_date)>5;

-- 50. Count programs grouped by department
SELECT department, COUNT(*) AS total FROM TrainingPrograms GROUP BY department;

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

-- 1. Select all eco-tourism spots
SELECT * FROM EcoTourismSpots;

-- 2. Open spots
SELECT * FROM EcoTourismSpots WHERE status='Open';

-- 3. Spots with entry fee > 500
SELECT * FROM EcoTourismSpots WHERE entry_fee>500;

-- 4. Spots by location 'Sundarbans Zone A1'
SELECT * FROM EcoTourismSpots WHERE location='Sundarbans Zone A1';

-- 5. Count spots by location
SELECT location, COUNT(*) AS total FROM EcoTourismSpots GROUP BY location;

-- 6. Count spots by status
SELECT status, COUNT(*) AS total FROM EcoTourismSpots GROUP BY status;

-- 7. Max entry fee
SELECT * FROM EcoTourismSpots ORDER BY entry_fee DESC LIMIT 1;

-- 8. Min entry fee
SELECT * FROM EcoTourismSpots ORDER BY entry_fee ASC LIMIT 1;

-- 9. Average entry fee
SELECT AVG(entry_fee) AS avg_fee FROM EcoTourismSpots;

-- 10. Spots with activity 'Photography'
SELECT * FROM EcoTourismSpots WHERE activities LIKE '%Photography%';

-- 11. View: OpenSpots
CREATE VIEW OpenSpots AS SELECT * FROM EcoTourismSpots WHERE status='Open';

-- 12. Query OpenSpots
SELECT * FROM OpenSpots;

-- 13. View: PaidSpots
CREATE VIEW PaidSpots AS SELECT * FROM EcoTourismSpots WHERE entry_fee>0;

-- 14. Query PaidSpots
SELECT * FROM PaidSpots;

-- 15. CTE: HighFeeSpots
WITH HighFeeSpots AS (
    SELECT * FROM EcoTourismSpots WHERE entry_fee>500
)
SELECT * FROM HighFeeSpots;

-- 16. CTE: MangroveSpots
WITH MangroveSpots AS (
    SELECT * FROM EcoTourismSpots WHERE name LIKE '%Mangrove%'
)
SELECT * FROM MangroveSpots;

-- 17. Window: row_number by entry_fee
SELECT *, ROW_NUMBER() OVER(PARTITION BY status ORDER BY entry_fee DESC) AS rn FROM EcoTourismSpots;

-- 18. Window: rank by entry_fee
SELECT *, RANK() OVER(PARTITION BY status ORDER BY entry_fee DESC) AS fee_rank FROM EcoTourismSpots;

-- 19. Window: cumulative entry fee by location
SELECT location,id,SUM(entry_fee) OVER(PARTITION BY location ORDER BY id) AS cum_fee FROM EcoTourismSpots;

-- 20. Window: dense_rank by entry_fee
SELECT id,name,entry_fee,DENSE_RANK() OVER(PARTITION BY status ORDER BY entry_fee DESC) AS fee_dense_rank FROM EcoTourismSpots;

-- 21. Stored Procedure: GetSpotsByStatus
DELIMITER //
CREATE PROCEDURE GetSpotsByStatus(IN pstatus VARCHAR(20))
BEGIN
    SELECT * FROM EcoTourismSpots WHERE status=pstatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetSpotsByStatus('Open');

-- 23. Stored Procedure: GetSpotsByLocation
DELIMITER //
CREATE PROCEDURE GetSpotsByLocation(IN plocation VARCHAR(100))
BEGIN
    SELECT * FROM EcoTourismSpots WHERE location=plocation;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetSpotsByLocation('Kanha Zone C3');

-- 25. Update spot status
UPDATE EcoTourismSpots SET status='Closed' WHERE id=5;

-- 26. Delete a spot
DELETE FROM EcoTourismSpots WHERE id=20;

-- 27. Insert new spot
INSERT INTO EcoTourismSpots (id,name,location,description,activities,entry_fee,contact,status,created_at,updated_at)
VALUES (21,'Test Spot','Test Zone','Test desc','Test activity',100.00,'9999999999','Open',NOW(),NOW());

-- 28. Transaction commit
START TRANSACTION;
UPDATE EcoTourismSpots SET entry_fee=200 WHERE id=6;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE EcoTourismSpots SET entry_fee=999 WHERE id=7;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON EcoTourismSpots TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON EcoTourismSpots FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_ecotour_insert BEFORE INSERT ON EcoTourismSpots
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_ecotour_update BEFORE UPDATE ON EcoTourismSpots
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Subquery: highest entry fee
SELECT * FROM EcoTourismSpots WHERE entry_fee=(SELECT MAX(entry_fee) FROM EcoTourismSpots);

-- 35. Subquery: spots in same location as id=1
SELECT * FROM EcoTourismSpots WHERE location=(SELECT location FROM EcoTourismSpots WHERE id=1);

-- 36. Count spots HAVING more than 1 per location
SELECT location, COUNT(*) AS total FROM EcoTourismSpots GROUP BY location HAVING COUNT(*)>1;

-- 37. COALESCE for description
SELECT id,name,COALESCE(description,'No description') AS desc_text FROM EcoTourismSpots;

-- 38. IFNULL for contact
SELECT id,name,IFNULL(contact,'Not Provided') AS contact_number FROM EcoTourismSpots;

-- 39. Latest spot added
SELECT * FROM EcoTourismSpots WHERE created_at=(SELECT MAX(created_at) FROM EcoTourismSpots);

-- 40. Union: Open and Paid spots
SELECT id,status FROM EcoTourismSpots WHERE status='Open'
UNION
SELECT id,status FROM EcoTourismSpots WHERE entry_fee>0;

-- 41. Stored procedure: change spot status
DELIMITER //
CREATE PROCEDURE ChangeSpotStatus(IN pid INT, IN nstatus VARCHAR(20))
BEGIN
    UPDATE EcoTourismSpots SET status=nstatus WHERE id=pid;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL ChangeSpotStatus(6,'Closed');

-- 43. Window: cumulative entry_fee by location
SELECT location,id,SUM(entry_fee) OVER(PARTITION BY location ORDER BY id) AS cum_fee FROM EcoTourismSpots;

-- 44. Window: cumulative count by status
SELECT status,id,COUNT(*) OVER(PARTITION BY status ORDER BY id) AS count_status FROM EcoTourismSpots;

-- 45. View: RecentSpots30Days
CREATE VIEW RecentSpots30Days AS SELECT * FROM EcoTourismSpots WHERE created_at>=DATE_SUB(NOW(), INTERVAL 30 DAY);

-- 46. Query RecentSpots30Days
SELECT * FROM RecentSpots30Days;

-- 47. CTE: TopLocations
WITH TopLocations AS (
    SELECT location, COUNT(*) AS cnt FROM EcoTourismSpots GROUP BY location
)
SELECT * FROM TopLocations ORDER BY cnt DESC LIMIT 3;

-- 48. Trigger: log deleted spot
CREATE TABLE EcoTourismAudit(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_ecotour_delete AFTER DELETE ON EcoTourismSpots
FOR EACH ROW
BEGIN
    INSERT INTO EcoTourismAudit(name,deleted_at) VALUES(OLD.name,NOW());
END;
//
DELIMITER ;

-- 49. Select high fee spots (>500)
SELECT * FROM EcoTourismSpots WHERE entry_fee>500;

-- 50. Count spots grouped by status
SELECT status, COUNT(*) AS total FROM EcoTourismSpots GROUP BY status;


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

-- 1. Select all check posts
SELECT * FROM CheckPosts;

-- 2. Active posts
SELECT * FROM CheckPosts WHERE status='Active';

-- 3. Posts with staff_count > 4
SELECT * FROM CheckPosts WHERE staff_count>4;

-- 4. Posts of type 'Patrol'
SELECT * FROM CheckPosts WHERE post_type='Patrol';

-- 5. Count posts by location
SELECT location, COUNT(*) AS total FROM CheckPosts GROUP BY location;

-- 6. Count posts by post_type
SELECT post_type, COUNT(*) AS total FROM CheckPosts GROUP BY post_type;

-- 7. Max staff count
SELECT * FROM CheckPosts ORDER BY staff_count DESC LIMIT 1;

-- 8. Min staff count
SELECT * FROM CheckPosts ORDER BY staff_count ASC LIMIT 1;

-- 9. Average staff count
SELECT AVG(staff_count) AS avg_staff FROM CheckPosts;

-- 10. Posts with 'GPS' in equipment
SELECT * FROM CheckPosts WHERE equipment_available LIKE '%GPS%';

-- 11. View: ActivePosts
CREATE VIEW ActivePosts AS SELECT * FROM CheckPosts WHERE status='Active';

-- 12. Query ActivePosts
SELECT * FROM ActivePosts;

-- 13. View: HighStaffPosts
CREATE VIEW HighStaffPosts AS SELECT * FROM CheckPosts WHERE staff_count>4;

-- 14. Query HighStaffPosts
SELECT * FROM HighStaffPosts;

-- 15. CTE: GPSPosts
WITH GPSPosts AS (
    SELECT * FROM CheckPosts WHERE equipment_available LIKE '%GPS%'
)
SELECT * FROM GPSPosts;

-- 16. CTE: PatrolPosts
WITH PatrolPosts AS (
    SELECT * FROM CheckPosts WHERE post_type='Patrol'
)
SELECT * FROM PatrolPosts;

-- 17. Window: row_number by staff_count
SELECT *, ROW_NUMBER() OVER(PARTITION BY status ORDER BY staff_count DESC) AS rn FROM CheckPosts;

-- 18. Window: rank by staff_count
SELECT *, RANK() OVER(PARTITION BY post_type ORDER BY staff_count DESC) AS staff_rank FROM CheckPosts;

-- 19. Window: cumulative staff count by location
SELECT location,id,SUM(staff_count) OVER(PARTITION BY location ORDER BY id) AS cum_staff FROM CheckPosts;

-- 20. Window: dense_rank by staff_count
SELECT id,location,staff_count,DENSE_RANK() OVER(PARTITION BY post_type ORDER BY staff_count DESC) AS staff_dense_rank FROM CheckPosts;

-- 21. Stored Procedure: GetPostsByStatus
DELIMITER //
CREATE PROCEDURE GetPostsByStatus(IN pstatus VARCHAR(20))
BEGIN
    SELECT * FROM CheckPosts WHERE status=pstatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetPostsByStatus('Active');

-- 23. Stored Procedure: GetPostsByType
DELIMITER //
CREATE PROCEDURE GetPostsByType(IN ptype VARCHAR(50))
BEGIN
    SELECT * FROM CheckPosts WHERE post_type=ptype;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetPostsByType('Patrol');

-- 25. Update post status
UPDATE CheckPosts SET status='Inactive' WHERE id=5;

-- 26. Delete a post
DELETE FROM CheckPosts WHERE id=20;

-- 27. Insert new post
INSERT INTO CheckPosts (id,location,post_type,staff_count,equipment_available,contact,status,created_at,updated_at,supervisor_name)
VALUES (21,'Test Zone','Observation',3,'Radio, Map','9999999999','Active',NOW(),NOW(),'Test Supervisor');

-- 28. Transaction commit
START TRANSACTION;
UPDATE CheckPosts SET staff_count=10 WHERE id=6;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE CheckPosts SET staff_count=99 WHERE id=7;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON CheckPosts TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON CheckPosts FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_checkpost_insert BEFORE INSERT ON CheckPosts
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_checkpost_update BEFORE UPDATE ON CheckPosts
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Subquery: highest staff_count
SELECT * FROM CheckPosts WHERE staff_count=(SELECT MAX(staff_count) FROM CheckPosts);

-- 35. Subquery: posts in same location as id=1
SELECT * FROM CheckPosts WHERE location=(SELECT location FROM CheckPosts WHERE id=1);

-- 36. Count posts HAVING more than 1 per location
SELECT location, COUNT(*) AS total FROM CheckPosts GROUP BY location HAVING COUNT(*)>1;

-- 37. COALESCE for equipment
SELECT id,location,COALESCE(equipment_available,'No equipment') AS equipment_text FROM CheckPosts;

-- 38. IFNULL for contact
SELECT id,location,IFNULL(contact,'Not Provided') AS contact_number FROM CheckPosts;

-- 39. Latest post added
SELECT * FROM CheckPosts WHERE created_at=(SELECT MAX(created_at) FROM CheckPosts);

-- 40. Union: Active and HighStaff posts
SELECT id,status FROM CheckPosts WHERE status='Active'
UNION
SELECT id,status FROM CheckPosts WHERE staff_count>4;

-- 41. Stored procedure: change post status
DELIMITER //
CREATE PROCEDURE ChangePostStatus(IN pid INT, IN nstatus VARCHAR(20))
BEGIN
    UPDATE CheckPosts SET status=nstatus WHERE id=pid;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL ChangePostStatus(6,'Inactive');

-- 43. Window: cumulative staff_count by location
SELECT location,id,SUM(staff_count) OVER(PARTITION BY location ORDER BY id) AS cum_staff FROM CheckPosts;

-- 44. Window: cumulative count by post_type
SELECT post_type,id,COUNT(*) OVER(PARTITION BY post_type ORDER BY id) AS count_type FROM CheckPosts;

-- 45. View: RecentPosts30Days
CREATE VIEW RecentPosts30Days AS SELECT * FROM CheckPosts WHERE created_at>=DATE_SUB(NOW(), INTERVAL 30 DAY);

-- 46. Query RecentPosts30Days
SELECT * FROM RecentPosts30Days;

-- 47. CTE: TopLocations
WITH TopLocations AS (
    SELECT location, COUNT(*) AS cnt FROM CheckPosts GROUP BY location
)
SELECT * FROM TopLocations ORDER BY cnt DESC LIMIT 3;

-- 48. Trigger: log deleted post
CREATE TABLE CheckPostsAudit(id INT AUTO_INCREMENT PRIMARY KEY,location VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_checkpost_delete AFTER DELETE ON CheckPosts
FOR EACH ROW
BEGIN
    INSERT INTO CheckPostsAudit(location,deleted_at) VALUES(OLD.location,NOW());
END;
//
DELIMITER ;

-- 49. Select posts with staff_count > 4
SELECT * FROM CheckPosts WHERE staff_count>4;

-- 50. Count posts grouped by status
SELECT status, COUNT(*) AS total FROM CheckPosts GROUP BY status;


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

-- 1. Select all equipment
SELECT * FROM EquipmentInventory;

-- 2. Items with quantity > 20
SELECT * FROM EquipmentInventory WHERE quantity>20;

-- 3. Items in 'Apparel' category
SELECT * FROM EquipmentInventory WHERE category='Apparel';

-- 4. Items purchased after 2024-01-01
SELECT * FROM EquipmentInventory WHERE purchase_date>'2024-01-01';

-- 5. Count items by category
SELECT category, COUNT(*) AS total FROM EquipmentInventory GROUP BY category;

-- 6. Max cost item
SELECT * FROM EquipmentInventory ORDER BY cost DESC LIMIT 1;

-- 7. Min cost item
SELECT * FROM EquipmentInventory ORDER BY cost ASC LIMIT 1;

-- 8. Average cost
SELECT AVG(cost) AS avg_cost FROM EquipmentInventory;

-- 9. Items supplied by 'TrekWear Co.'
SELECT * FROM EquipmentInventory WHERE supplier='TrekWear Co.';

-- 10. Items in 'Good' condition
SELECT * FROM EquipmentInventory WHERE conditions='Good';

-- 11. View: HighQuantityItems
CREATE VIEW HighQuantityItems AS SELECT * FROM EquipmentInventory WHERE quantity>30;

-- 12. Query HighQuantityItems
SELECT * FROM HighQuantityItems;

-- 13. View: RecentPurchases
CREATE VIEW RecentPurchases AS SELECT * FROM EquipmentInventory WHERE purchase_date>=DATE_SUB(NOW(), INTERVAL 6 MONTH);

-- 14. Query RecentPurchases
SELECT * FROM RecentPurchases;

-- 15. CTE: ExpensiveItems
WITH ExpensiveItems AS (
    SELECT * FROM EquipmentInventory WHERE cost>10000
)
SELECT * FROM ExpensiveItems;

-- 16. CTE: ApparelItems
WITH ApparelItems AS (
    SELECT * FROM EquipmentInventory WHERE category='Apparel'
)
SELECT * FROM ApparelItems;

-- 17. Window: row_number by cost
SELECT *, ROW_NUMBER() OVER(PARTITION BY category ORDER BY cost DESC) AS rn FROM EquipmentInventory;

-- 18. Window: rank by quantity
SELECT *, RANK() OVER(PARTITION BY category ORDER BY quantity DESC) AS qty_rank FROM EquipmentInventory;

-- 19. Window: cumulative quantity by category
SELECT category,item_name,SUM(quantity) OVER(PARTITION BY category ORDER BY id) AS cum_qty FROM EquipmentInventory;

-- 20. Window: dense_rank by cost
SELECT id,item_name,cost,DENSE_RANK() OVER(PARTITION BY category ORDER BY cost DESC) AS cost_dense_rank FROM EquipmentInventory;

-- 21. Stored Procedure: GetItemsByCategory
DELIMITER //
CREATE PROCEDURE GetItemsByCategory(IN pcategory VARCHAR(50))
BEGIN
    SELECT * FROM EquipmentInventory WHERE category=pcategory;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetItemsByCategory('Apparel');

-- 23. Stored Procedure: GetItemsBySupplier
DELIMITER //
CREATE PROCEDURE GetItemsBySupplier(IN psupplier VARCHAR(100))
BEGIN
    SELECT * FROM EquipmentInventory WHERE supplier=psupplier;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetItemsBySupplier('TrekWear Co.');

-- 25. Update item quantity
UPDATE EquipmentInventory SET quantity=quantity+10 WHERE id=5;

-- 26. Delete an item
DELETE FROM EquipmentInventory WHERE id=20;

-- 27. Insert new item
INSERT INTO EquipmentInventory (id,item_name,category,quantity,purchase_date,cost,supplier,conditions,created_at,updated_at)
VALUES (21,'GPS Tracker','Navigation',5,'2024-07-01',12000.00,'GeoTrack Solutions','New',NOW(),NOW());

-- 28. Transaction commit
START TRANSACTION;
UPDATE EquipmentInventory SET quantity=50 WHERE id=1;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE EquipmentInventory SET quantity=999 WHERE id=2;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON EquipmentInventory TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON EquipmentInventory FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_inventory_insert BEFORE INSERT ON EquipmentInventory
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_inventory_update BEFORE UPDATE ON EquipmentInventory
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Subquery: highest cost item
SELECT * FROM EquipmentInventory WHERE cost=(SELECT MAX(cost) FROM EquipmentInventory);

-- 35. Subquery: items in same category as id=5
SELECT * FROM EquipmentInventory WHERE category=(SELECT category FROM EquipmentInventory WHERE id=5);

-- 36. Count items HAVING quantity>20
SELECT category, COUNT(*) AS total FROM EquipmentInventory GROUP BY category HAVING SUM(quantity)>20;

-- 37. COALESCE for supplier
SELECT id,item_name,COALESCE(supplier,'Unknown') AS supplier_name FROM EquipmentInventory;

-- 38. IFNULL for conditions
SELECT id,item_name,IFNULL(conditions,'Not Provided') AS condition_text FROM EquipmentInventory;

-- 39. Latest purchase
SELECT * FROM EquipmentInventory WHERE purchase_date=(SELECT MAX(purchase_date) FROM EquipmentInventory);

-- 40. Union: Apparel and Lighting items
SELECT item_name,category FROM EquipmentInventory WHERE category='Apparel'
UNION
SELECT item_name,category FROM EquipmentInventory WHERE category='Lighting';

-- 41. Stored procedure: change item condition
DELIMITER //
CREATE PROCEDURE ChangeItemCondition(IN pid INT, IN ncondition VARCHAR(50))
BEGIN
    UPDATE EquipmentInventory SET conditions=ncondition WHERE id=pid;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL ChangeItemCondition(6,'New');

-- 43. Window: cumulative quantity by category
SELECT category,item_name,SUM(quantity) OVER(PARTITION BY category ORDER BY id) AS cum_qty FROM EquipmentInventory;

-- 44. Window: cumulative cost by category
SELECT category,item_name,SUM(cost) OVER(PARTITION BY category ORDER BY id) AS cum_cost FROM EquipmentInventory;

-- 45. View: RecentInventory30Days
CREATE VIEW RecentInventory30Days AS SELECT * FROM EquipmentInventory WHERE purchase_date>=DATE_SUB(NOW(), INTERVAL 30 DAY);

-- 46. Query RecentInventory30Days
SELECT * FROM RecentInventory30Days;

-- 47. CTE: TopSuppliers
WITH TopSuppliers AS (
    SELECT supplier, SUM(quantity) AS total_qty FROM EquipmentInventory GROUP BY supplier
)
SELECT * FROM TopSuppliers ORDER BY total_qty DESC LIMIT 3;

-- 48. Trigger: log deleted item
CREATE TABLE EquipmentInventoryAudit(id INT AUTO_INCREMENT PRIMARY KEY,item_name VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_inventory_delete AFTER DELETE ON EquipmentInventory
FOR EACH ROW
BEGIN
    INSERT INTO EquipmentInventoryAudit(item_name,deleted_at) VALUES(OLD.item_name,NOW());
END;
//
DELIMITER ;

-- 49. Select items with quantity>30
SELECT * FROM EquipmentInventory WHERE quantity>30;

-- 50. Count items grouped by conditions
SELECT conditions, COUNT(*) AS total FROM EquipmentInventory GROUP BY conditions;


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

-- 1. Select all tracked animals
SELECT * FROM AnimalTracking;

-- 2. Animals with health_status='Injured'
SELECT * FROM AnimalTracking WHERE health_status='Injured';

-- 3. Animals last seen today
SELECT * FROM AnimalTracking WHERE DATE(last_seen)=CURDATE();

-- 4. Tigers tracked
SELECT * FROM AnimalTracking WHERE species='Bengal Tiger';

-- 5. Count animals by species
SELECT species, COUNT(*) AS total FROM AnimalTracking GROUP BY species;

-- 6. Most recently seen animal
SELECT * FROM AnimalTracking ORDER BY last_seen DESC LIMIT 1;

-- 7. Earliest seen animal
SELECT * FROM AnimalTracking ORDER BY last_seen ASC LIMIT 1;

-- 8. Animals with unknown health status
SELECT * FROM AnimalTracking WHERE health_status='Unknown';

-- 9. Animals moving regularly
SELECT * FROM AnimalTracking WHERE movement_pattern LIKE '%regular%';

-- 10. Animals tracked in Kanha Zone
SELECT * FROM AnimalTracking WHERE last_location LIKE '%Kanha%';

-- 11. View: InjuredAnimals
CREATE VIEW InjuredAnimals AS SELECT * FROM AnimalTracking WHERE health_status='Injured';

-- 12. Query InjuredAnimals
SELECT * FROM InjuredAnimals;

-- 13. View: HealthyAnimals
CREATE VIEW HealthyAnimals AS SELECT * FROM AnimalTracking WHERE health_status='Healthy';

-- 14. Query HealthyAnimals
SELECT * FROM HealthyAnimals;

-- 15. CTE: Tigers
WITH Tigers AS (SELECT * FROM AnimalTracking WHERE species='Bengal Tiger')
SELECT * FROM Tigers;

-- 16. CTE: Elephants
WITH Elephants AS (SELECT * FROM AnimalTracking WHERE species='Asian Elephant')
SELECT * FROM Elephants;

-- 17. Window: row_number by last_seen per species
SELECT *, ROW_NUMBER() OVER(PARTITION BY species ORDER BY last_seen DESC) AS rn FROM AnimalTracking;

-- 18. Window: rank by last_seen
SELECT *, RANK() OVER(PARTITION BY species ORDER BY last_seen DESC) AS rnk FROM AnimalTracking;

-- 19. Window: cumulative count per species
SELECT species, COUNT(*) OVER(PARTITION BY species ORDER BY last_seen) AS cum_count FROM AnimalTracking;

-- 20. Window: dense_rank by last_seen
SELECT species, animal_id, DENSE_RANK() OVER(PARTITION BY species ORDER BY last_seen DESC) AS drnk FROM AnimalTracking;

-- 21. Stored Procedure: GetAnimalsBySpecies
DELIMITER //
CREATE PROCEDURE GetAnimalsBySpecies(IN pspecies VARCHAR(100))
BEGIN
    SELECT * FROM AnimalTracking WHERE species=pspecies;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetAnimalsBySpecies('Bengal Tiger');

-- 23. Stored Procedure: GetAnimalsByHealth
DELIMITER //
CREATE PROCEDURE GetAnimalsByHealth(IN pstatus VARCHAR(50))
BEGIN
    SELECT * FROM AnimalTracking WHERE health_status=pstatus;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetAnimalsByHealth('Healthy');

-- 25. Update animal location
UPDATE AnimalTracking SET last_location='Gir Zone B2' WHERE animal_id=1011;

-- 26. Delete a record
DELETE FROM AnimalTracking WHERE animal_id=1008;

-- 27. Insert new tracking record
INSERT INTO AnimalTracking (id,animal_id,species,tracker_id,last_location,last_seen,health_status,movement_pattern,created_at,updated_at)
VALUES (21,1021,'Black Panther','TRK-BLP-002','Sundarbans Zone A1',NOW(),'Healthy','Nocturnal movements',NOW(),NOW());

-- 28. Transaction commit
START TRANSACTION;
UPDATE AnimalTracking SET health_status='Under Observation' WHERE animal_id=1005;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE AnimalTracking SET health_status='Unknown' WHERE animal_id=1006;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON AnimalTracking TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON AnimalTracking FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_animal_insert BEFORE INSERT ON AnimalTracking
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_animal_update BEFORE UPDATE ON AnimalTracking
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Subquery: last seen latest
SELECT * FROM AnimalTracking WHERE last_seen=(SELECT MAX(last_seen) FROM AnimalTracking);

-- 35. Subquery: same species as animal_id=1003
SELECT * FROM AnimalTracking WHERE species=(SELECT species FROM AnimalTracking WHERE animal_id=1003);

-- 36. Count animals HAVING health_status='Healthy'
SELECT species, COUNT(*) AS total FROM AnimalTracking GROUP BY species HAVING SUM(CASE WHEN health_status='Healthy' THEN 1 ELSE 0 END)>0;

-- 37. COALESCE for health_status
SELECT id,animal_id,COALESCE(health_status,'Unknown') AS health_status FROM AnimalTracking;

-- 38. IFNULL for movement_pattern
SELECT id,animal_id,IFNULL(movement_pattern,'Not Tracked') AS movement FROM AnimalTracking;

-- 39. Latest last_seen animal
SELECT * FROM AnimalTracking WHERE last_seen=(SELECT MAX(last_seen) FROM AnimalTracking);

-- 40. Union: Tigers and Leopards
SELECT animal_id,species FROM AnimalTracking WHERE species='Bengal Tiger'
UNION
SELECT animal_id,species FROM AnimalTracking WHERE species='Leopard';

-- 41. Stored procedure: change health_status
DELIMITER //
CREATE PROCEDURE ChangeHealthStatus(IN pid INT, IN nstatus VARCHAR(50))
BEGIN
    UPDATE AnimalTracking SET health_status=nstatus WHERE animal_id=pid;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL ChangeHealthStatus(1003,'Healthy');

-- 43. Window: cumulative count of species
SELECT species, COUNT(animal_id) OVER(PARTITION BY species ORDER BY last_seen) AS cum_count FROM AnimalTracking;

-- 44. Window: cumulative count of injured animals
SELECT species, COUNT(*) OVER(PARTITION BY health_status ORDER BY last_seen) AS cum_injured FROM AnimalTracking;

-- 45. View: RecentSightings7Days
CREATE VIEW RecentSightings7Days AS SELECT * FROM AnimalTracking WHERE last_seen>=DATE_SUB(NOW(), INTERVAL 7 DAY);

-- 46. Query RecentSightings7Days
SELECT * FROM RecentSightings7Days;

-- 47. CTE: TopSpecies
WITH TopSpecies AS (
    SELECT species, COUNT(*) AS total FROM AnimalTracking GROUP BY species
)
SELECT * FROM TopSpecies ORDER BY total DESC LIMIT 3;

-- 48. Trigger: log deleted record
CREATE TABLE AnimalTrackingAudit(id INT AUTO_INCREMENT PRIMARY KEY,animal_id INT,species VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_animal_delete AFTER DELETE ON AnimalTracking
FOR EACH ROW
BEGIN
    INSERT INTO AnimalTrackingAudit(animal_id,species,deleted_at) VALUES(OLD.animal_id,OLD.species,NOW());
END;
//
DELIMITER ;

-- 49. Select animals seen in Nagarhole Zone
SELECT * FROM AnimalTracking WHERE last_location LIKE '%Nagarhole%';

-- 50. Count animals by health_status
SELECT health_status, COUNT(*) AS total FROM AnimalTracking GROUP BY health_status;


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

-- 1. Select all stations
SELECT * FROM WeatherStations;

-- 2. Active stations
SELECT * FROM WeatherStations WHERE status='Active';

-- 3. Inactive stations
SELECT * FROM WeatherStations WHERE status='Inactive';

-- 4. Stations in Kanha Zone
SELECT * FROM WeatherStations WHERE location LIKE '%Kanha%';

-- 5. Count stations by status
SELECT status, COUNT(*) AS total FROM WeatherStations GROUP BY status;

-- 6. Average temperature
SELECT AVG(temperature) AS avg_temp FROM WeatherStations;

-- 7. Maximum humidity
SELECT MAX(humidity) AS max_humidity FROM WeatherStations;

-- 8. Minimum temperature
SELECT MIN(temperature) AS min_temp FROM WeatherStations;

-- 9. Stations installed after 2022
SELECT * FROM WeatherStations WHERE installed_date>'2022-01-01';

-- 10. Stations with Temperature sensor
SELECT * FROM WeatherStations WHERE sensor_types LIKE '%Temperature%';

-- 11. View: ActiveStations
CREATE VIEW ActiveStations AS SELECT * FROM WeatherStations WHERE status='Active';

-- 12. Query ActiveStations
SELECT * FROM ActiveStations;

-- 13. View: InactiveStations
CREATE VIEW InactiveStations AS SELECT * FROM WeatherStations WHERE status='Inactive';

-- 14. Query InactiveStations
SELECT * FROM InactiveStations;

-- 15. CTE: RecentInstallations
WITH RecentInstallations AS (SELECT * FROM WeatherStations WHERE installed_date >= '2023-01-01')
SELECT * FROM RecentInstallations;

-- 16. CTE: KanhaStations
WITH KanhaStations AS (SELECT * FROM WeatherStations WHERE location LIKE '%Kanha%')
SELECT * FROM KanhaStations;

-- 17. Window: row_number by temperature
SELECT *, ROW_NUMBER() OVER(PARTITION BY status ORDER BY temperature DESC) AS rn FROM WeatherStations;

-- 18. Window: rank by humidity
SELECT *, RANK() OVER(PARTITION BY status ORDER BY humidity DESC) AS rnk FROM WeatherStations;

-- 19. Window: dense_rank by temperature
SELECT *, DENSE_RANK() OVER(PARTITION BY status ORDER BY temperature DESC) AS drnk FROM WeatherStations;

-- 20. Window: cumulative avg temperature
SELECT id,name,temperature,AVG(temperature) OVER(ORDER BY installed_date) AS cum_avg_temp FROM WeatherStations;

-- 21. Stored Procedure: GetStationsByStatus
DELIMITER //
CREATE PROCEDURE GetStationsByStatus(IN pstatus VARCHAR(20))
BEGIN
    SELECT * FROM WeatherStations WHERE status=pstatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetStationsByStatus('Active');

-- 23. Stored Procedure: GetStationsBySensor
DELIMITER //
CREATE PROCEDURE GetStationsBySensor(IN psensor VARCHAR(50))
BEGIN
    SELECT * FROM WeatherStations WHERE sensor_types LIKE CONCAT('%', psensor, '%');
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetStationsBySensor('Humidity');

-- 25. Update station temperature
UPDATE WeatherStations SET temperature=32.0 WHERE id=2;

-- 26. Delete a station
DELETE FROM WeatherStations WHERE id=7;

-- 27. Insert new station
INSERT INTO WeatherStations (id,name,location,sensor_types,installed_date,status,temperature,humidity,created_at,updated_at)
VALUES (21,'New Forest Station','New Zone X','Temperature, Wind Speed','2025-01-01','Active',30.0,70.0,NOW(),NOW());

-- 28. Transaction commit
START TRANSACTION;
UPDATE WeatherStations SET humidity=75.0 WHERE id=3;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE WeatherStations SET status='Inactive' WHERE id=1;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON WeatherStations TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON WeatherStations FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_weatherstation_insert BEFORE INSERT ON WeatherStations
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_weatherstation_update BEFORE UPDATE ON WeatherStations
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Subquery: station with max temperature
SELECT * FROM WeatherStations WHERE temperature=(SELECT MAX(temperature) FROM WeatherStations);

-- 35. Subquery: station with min humidity
SELECT * FROM WeatherStations WHERE humidity=(SELECT MIN(humidity) FROM WeatherStations);

-- 36. Count stations by sensor containing 'Rainfall'
SELECT COUNT(*) AS total_rainfall_stations FROM WeatherStations WHERE sensor_types LIKE '%Rainfall%';

-- 37. COALESCE for status
SELECT id,name,COALESCE(status,'Unknown') AS status FROM WeatherStations;

-- 38. IFNULL for temperature
SELECT id,name,IFNULL(temperature,0) AS temperature FROM WeatherStations;

-- 39. Latest installed station
SELECT * FROM WeatherStations ORDER BY installed_date DESC LIMIT 1;

-- 40. Union: Active and Inactive stations
SELECT id,name,status FROM WeatherStations WHERE status='Active'
UNION
SELECT id,name,status FROM WeatherStations WHERE status='Inactive';

-- 41. Stored procedure: UpdateTemperature
DELIMITER //
CREATE PROCEDURE UpdateTemperature(IN pid INT, IN ptemp FLOAT)
BEGIN
    UPDATE WeatherStations SET temperature=ptemp WHERE id=pid;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL UpdateTemperature(4,29.5);

-- 43. Window: cumulative humidity
SELECT id,name,humidity,SUM(humidity) OVER(ORDER BY installed_date) AS cum_humidity FROM WeatherStations;

-- 44. Window: cumulative temperature
SELECT id,name,temperature,SUM(temperature) OVER(ORDER BY installed_date) AS cum_temp FROM WeatherStations;

-- 45. View: HighTempStations
CREATE VIEW HighTempStations AS SELECT * FROM WeatherStations WHERE temperature>32.0;

-- 46. Query HighTempStations
SELECT * FROM HighTempStations;

-- 47. CTE: HumidityAbove80
WITH HumidityAbove80 AS (SELECT * FROM WeatherStations WHERE humidity>80)
SELECT * FROM HumidityAbove80;

-- 48. Trigger: log deleted station
CREATE TABLE WeatherStationAudit(id INT AUTO_INCREMENT PRIMARY KEY,station_id INT,name VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_weatherstation_delete AFTER DELETE ON WeatherStations
FOR EACH ROW
BEGIN
    INSERT INTO WeatherStationAudit(station_id,name,deleted_at) VALUES(OLD.id,OLD.name,NOW());
END;
//
DELIMITER ;

-- 49. Select stations in Bandipur Zone
SELECT * FROM WeatherStations WHERE location LIKE '%Bandipur%';

-- 50. Count stations by installed year
SELECT YEAR(installed_date) AS year, COUNT(*) AS total FROM WeatherStations GROUP BY YEAR(installed_date);


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

-- 1. Select all imagery
SELECT * FROM SatelliteImagery;

-- 2. Select analyzed imagery
SELECT * FROM SatelliteImagery WHERE status='Analyzed';

-- 3. Select pending imagery
SELECT * FROM SatelliteImagery WHERE status='Pending';

-- 4. Imagery from Kanha Zone
SELECT * FROM SatelliteImagery WHERE area_covered LIKE '%Kanha%';

-- 5. Count imagery by status
SELECT status, COUNT(*) AS total FROM SatelliteImagery GROUP BY status;

-- 6. Latest image date
SELECT MAX(image_date) AS latest_date FROM SatelliteImagery;

-- 7. Earliest image date
SELECT MIN(image_date) AS earliest_date FROM SatelliteImagery;

-- 8. Imagery with resolution <= 1m/pixel
SELECT * FROM SatelliteImagery WHERE resolution<='1m/pixel';

-- 9. Imagery captured by ISRO
SELECT * FROM SatelliteImagery WHERE captured_by LIKE '%ISRO%';

-- 10. Imagery captured by NASA
SELECT * FROM SatelliteImagery WHERE captured_by LIKE '%NASA%';

-- 11. View: AnalyzedImages
CREATE VIEW AnalyzedImages AS SELECT * FROM SatelliteImagery WHERE status='Analyzed';

-- 12. Query AnalyzedImages
SELECT * FROM AnalyzedImages;

-- 13. View: PendingImages
CREATE VIEW PendingImages AS SELECT * FROM SatelliteImagery WHERE status='Pending';

-- 14. Query PendingImages
SELECT * FROM PendingImages;

-- 15. CTE: RecentImages
WITH RecentImages AS (SELECT * FROM SatelliteImagery WHERE image_date>='2025-05-01')
SELECT * FROM RecentImages;

-- 16. CTE: KanhaImages
WITH KanhaImages AS (SELECT * FROM SatelliteImagery WHERE area_covered LIKE '%Kanha%')
SELECT * FROM KanhaImages;

-- 17. Window: row_number by image_date
SELECT *, ROW_NUMBER() OVER(PARTITION BY status ORDER BY image_date DESC) AS rn FROM SatelliteImagery;

-- 18. Window: rank by resolution
SELECT *, RANK() OVER(PARTITION BY status ORDER BY resolution) AS rnk FROM SatelliteImagery;

-- 19. Window: dense_rank by image_date
SELECT *, DENSE_RANK() OVER(PARTITION BY status ORDER BY image_date DESC) AS drnk FROM SatelliteImagery;

-- 20. Window: cumulative count of images
SELECT id,area_covered,COUNT(*) OVER(ORDER BY image_date) AS cum_count FROM SatelliteImagery;

-- 21. Stored Procedure: GetImagesByStatus
DELIMITER //
CREATE PROCEDURE GetImagesByStatus(IN pstatus VARCHAR(20))
BEGIN
    SELECT * FROM SatelliteImagery WHERE status=pstatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetImagesByStatus('Pending');

-- 23. Stored Procedure: GetImagesByArea
DELIMITER //
CREATE PROCEDURE GetImagesByArea(IN parea VARCHAR(100))
BEGIN
    SELECT * FROM SatelliteImagery WHERE area_covered LIKE CONCAT('%',parea,'%');
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetImagesByArea('Kanha');

-- 25. Update imagery status
UPDATE SatelliteImagery SET status='Analyzed' WHERE id=3;

-- 26. Delete a record
DELETE FROM SatelliteImagery WHERE id=7;

-- 27. Insert new imagery
INSERT INTO SatelliteImagery (id,image_date,area_covered,resolution,file_path,analysis_report,status,captured_by,created_at,updated_at)
VALUES (21,'2025-06-20','New Zone X','1m/pixel','/imagery/newzone_20250620.jpg','Initial observation','Pending','ISRO CartoSat-3',NOW(),NOW());

-- 28. Transaction commit
START TRANSACTION;
UPDATE SatelliteImagery SET status='Pending' WHERE id=5;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE SatelliteImagery SET status='Analyzed' WHERE id=4;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON SatelliteImagery TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON SatelliteImagery FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_satellite_insert BEFORE INSERT ON SatelliteImagery
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_satellite_update BEFORE UPDATE ON SatelliteImagery
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Subquery: latest image per area
SELECT * FROM SatelliteImagery WHERE image_date=(SELECT MAX(image_date) FROM SatelliteImagery WHERE area_covered='Kanha Zone C3');

-- 35. Subquery: highest resolution
SELECT * FROM SatelliteImagery WHERE resolution=(SELECT MIN(resolution) FROM SatelliteImagery);

-- 36. Count images captured by ISRO
SELECT COUNT(*) AS total_isro_images FROM SatelliteImagery WHERE captured_by LIKE '%ISRO%';

-- 37. COALESCE for analysis_report
SELECT id,area_covered,COALESCE(analysis_report,'No report') AS report FROM SatelliteImagery;

-- 38. IFNULL for status
SELECT id,area_covered,IFNULL(status,'Unknown') AS status FROM SatelliteImagery;

-- 39. Latest captured image
SELECT * FROM SatelliteImagery ORDER BY image_date DESC LIMIT 1;

-- 40. Union: Analyzed and Pending
SELECT id,area_covered,status FROM SatelliteImagery WHERE status='Analyzed'
UNION
SELECT id,area_covered,status FROM SatelliteImagery WHERE status='Pending';

-- 41. Stored procedure: UpdateStatus
DELIMITER //
CREATE PROCEDURE UpdateStatus(IN pid INT, IN pstatus VARCHAR(20))
BEGIN
    UPDATE SatelliteImagery SET status=pstatus WHERE id=pid;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL UpdateStatus(11,'Analyzed');

-- 43. Window: cumulative images by date
SELECT id,area_covered,COUNT(*) OVER(ORDER BY image_date) AS cum_images FROM SatelliteImagery;

-- 44. Window: cumulative analyzed images
SELECT id,area_covered,SUM(CASE WHEN status='Analyzed' THEN 1 ELSE 0 END) OVER(ORDER BY image_date) AS cum_analyzed FROM SatelliteImagery;

-- 45. View: HighResolutionImages
CREATE VIEW HighResolutionImages AS SELECT * FROM SatelliteImagery WHERE resolution<='1m/pixel';

-- 46. Query HighResolutionImages
SELECT * FROM HighResolutionImages;

-- 47. CTE: PendingImagesCTE
WITH PendingImagesCTE AS (SELECT * FROM SatelliteImagery WHERE status='Pending')
SELECT * FROM PendingImagesCTE;

-- 48. Trigger: log deleted imagery
CREATE TABLE SatelliteAudit(id INT AUTO_INCREMENT PRIMARY KEY,image_id INT,area_covered VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_satellite_delete AFTER DELETE ON SatelliteImagery
FOR EACH ROW
BEGIN
    INSERT INTO SatelliteAudit(image_id,area_covered,deleted_at) VALUES(OLD.id,OLD.area_covered,NOW());
END;
//
DELIMITER ;

-- 49. Select images from Bandipur Zone
SELECT * FROM SatelliteImagery WHERE area_covered LIKE '%Bandipur%';

-- 50. Count images by month
SELECT MONTH(image_date) AS month, COUNT(*) AS total FROM SatelliteImagery GROUP BY MONTH(image_date);

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

-- 1. Select all reports
SELECT * FROM IllegalLoggingReports;

-- 2. Select pending reports
SELECT * FROM IllegalLoggingReports WHERE status='Pending';

-- 3. Select resolved reports
SELECT * FROM IllegalLoggingReports WHERE status='Resolved';

-- 4. Reports from Kanha Zone
SELECT * FROM IllegalLoggingReports WHERE location LIKE '%Kanha%';

-- 5. Count reports by status
SELECT status, COUNT(*) AS total FROM IllegalLoggingReports GROUP BY status;

-- 6. Latest report date
SELECT MAX(report_date) AS latest_date FROM IllegalLoggingReports;

-- 7. Earliest report date
SELECT MIN(report_date) AS earliest_date FROM IllegalLoggingReports;

-- 8. Reports where action taken includes 'patrol'
SELECT * FROM IllegalLoggingReports WHERE action_taken LIKE '%patrol%';

-- 9. Reports from Bandipur
SELECT * FROM IllegalLoggingReports WHERE location LIKE '%Bandipur%';

-- 10. Reports where authority contacted includes 'Forest Dept'
SELECT * FROM IllegalLoggingReports WHERE authority_contacted LIKE '%Forest Dept%';

-- 11. View: ResolvedReports
CREATE VIEW ResolvedReports AS SELECT * FROM IllegalLoggingReports WHERE status='Resolved';

-- 12. Query ResolvedReports
SELECT * FROM ResolvedReports;

-- 13. View: PendingReports
CREATE VIEW PendingReports AS SELECT * FROM IllegalLoggingReports WHERE status='Pending';

-- 14. Query PendingReports
SELECT * FROM PendingReports;

-- 15. CTE: RecentReports
WITH RecentReports AS (SELECT * FROM IllegalLoggingReports WHERE report_date>='2025-06-01')
SELECT * FROM RecentReports;

-- 16. CTE: KanhaReports
WITH KanhaReports AS (SELECT * FROM IllegalLoggingReports WHERE location LIKE '%Kanha%')
SELECT * FROM KanhaReports;

-- 17. Window: row_number by report_date
SELECT *, ROW_NUMBER() OVER(PARTITION BY status ORDER BY report_date DESC) AS rn FROM IllegalLoggingReports;

-- 18. Window: rank by report_date
SELECT *, RANK() OVER(PARTITION BY status ORDER BY report_date DESC) AS rnk FROM IllegalLoggingReports;

-- 19. Window: dense_rank by report_date
SELECT *, DENSE_RANK() OVER(PARTITION BY status ORDER BY report_date DESC) AS drnk FROM IllegalLoggingReports;

-- 20. Window: cumulative count of reports
SELECT id,location,COUNT(*) OVER(ORDER BY report_date) AS cum_count FROM IllegalLoggingReports;

-- 21. Stored Procedure: GetReportsByStatus
DELIMITER //
CREATE PROCEDURE GetReportsByStatus(IN pstatus VARCHAR(20))
BEGIN
    SELECT * FROM IllegalLoggingReports WHERE status=pstatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetReportsByStatus('Pending');

-- 23. Stored Procedure: GetReportsByLocation
DELIMITER //
CREATE PROCEDURE GetReportsByLocation(IN plocation VARCHAR(100))
BEGIN
    SELECT * FROM IllegalLoggingReports WHERE location LIKE CONCAT('%',plocation,'%');
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetReportsByLocation('Kanha');

-- 25. Update report status
UPDATE IllegalLoggingReports SET status='Resolved' WHERE id=2;

-- 26. Delete a report
DELETE FROM IllegalLoggingReports WHERE id=8;

-- 27. Insert new report
INSERT INTO IllegalLoggingReports (id,report_date,location,reporter_name,description,action_taken,status,authority_contacted,created_at,updated_at)
VALUES (21,'2025-06-15','New Zone X','Ramesh Gupta','Illegal tree felling detected.','Patrol notified.','Pending','Forest Office X',NOW(),NOW());

-- 28. Transaction commit
START TRANSACTION;
UPDATE IllegalLoggingReports SET status='Under Investigation' WHERE id=5;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE IllegalLoggingReports SET status='Resolved' WHERE id=4;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON IllegalLoggingReports TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON IllegalLoggingReports FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_illegallogging_insert BEFORE INSERT ON IllegalLoggingReports
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_illegallogging_update BEFORE UPDATE ON IllegalLoggingReports
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Subquery: latest report per location
SELECT * FROM IllegalLoggingReports WHERE report_date=(SELECT MAX(report_date) FROM IllegalLoggingReports WHERE location='Kanha Zone B1');

-- 35. Subquery: first report
SELECT * FROM IllegalLoggingReports WHERE report_date=(SELECT MIN(report_date) FROM IllegalLoggingReports);

-- 36. Count reports by authority
SELECT authority_contacted, COUNT(*) AS total FROM IllegalLoggingReports GROUP BY authority_contacted;

-- 37. COALESCE for action_taken
SELECT id,location,COALESCE(action_taken,'No action') AS action_taken FROM IllegalLoggingReports;

-- 38. IFNULL for status
SELECT id,location,IFNULL(status,'Unknown') AS status FROM IllegalLoggingReports;

-- 39. Latest reported incident
SELECT * FROM IllegalLoggingReports ORDER BY report_date DESC LIMIT 1;

-- 40. Union: resolved and pending
SELECT id,location,status FROM IllegalLoggingReports WHERE status='Resolved'
UNION
SELECT id,location,status FROM IllegalLoggingReports WHERE status='Pending';

-- 41. Stored procedure: UpdateReportStatus
DELIMITER //
CREATE PROCEDURE UpdateReportStatus(IN pid INT, IN pstatus VARCHAR(20))
BEGIN
    UPDATE IllegalLoggingReports SET status=pstatus WHERE id=pid;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL UpdateReportStatus(13,'Resolved');

-- 43. Window: cumulative reports by date
SELECT id,location,COUNT(*) OVER(ORDER BY report_date) AS cum_reports FROM IllegalLoggingReports;

-- 44. Window: cumulative resolved reports
SELECT id,location,SUM(CASE WHEN status='Resolved' THEN 1 ELSE 0 END) OVER(ORDER BY report_date) AS cum_resolved FROM IllegalLoggingReports;

-- 45. View: UnderInvestigationReports
CREATE VIEW UnderInvestigationReports AS SELECT * FROM IllegalLoggingReports WHERE status='Under Investigation';

-- 46. Query UnderInvestigationReports
SELECT * FROM UnderInvestigationReports;

-- 47. CTE: PendingReportsCTE
WITH PendingReportsCTE AS (SELECT * FROM IllegalLoggingReports WHERE status='Pending')
SELECT * FROM PendingReportsCTE;

-- 48. Trigger: log deleted reports
CREATE TABLE IllegalLoggingAudit(id INT AUTO_INCREMENT PRIMARY KEY,report_id INT,location VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_illegallogging_delete AFTER DELETE ON IllegalLoggingReports
FOR EACH ROW
BEGIN
    INSERT INTO IllegalLoggingAudit(report_id,location,deleted_at) VALUES(OLD.id,OLD.location,NOW());
END;
//
DELIMITER ;

-- 49. Select reports from Sundarbans
SELECT * FROM IllegalLoggingReports WHERE location LIKE '%Sundarbans%';

-- 50. Count reports by month
SELECT MONTH(report_date) AS month, COUNT(*) AS total FROM IllegalLoggingReports GROUP BY MONTH(report_date);


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

-- 1. Select all boundaries
SELECT * FROM ForestBoundaries;

-- 2. Select active boundaries
SELECT * FROM ForestBoundaries WHERE status='Active';

-- 3. Select monitoring boundaries
SELECT * FROM ForestBoundaries WHERE status='Monitoring';

-- 4. Boundaries larger than 300 sq.km
SELECT * FROM ForestBoundaries WHERE area_sq_km>300;

-- 5. Count boundaries by type
SELECT boundary_type, COUNT(*) AS total FROM ForestBoundaries GROUP BY boundary_type;

-- 6. Latest established boundary
SELECT * FROM ForestBoundaries ORDER BY established_date DESC LIMIT 1;

-- 7. Earliest established boundary
SELECT * FROM ForestBoundaries ORDER BY established_date ASC LIMIT 1;

-- 8. Boundaries in Kanha
SELECT * FROM ForestBoundaries WHERE location LIKE '%Kanha%';

-- 9. Boundaries in Sundarbans
SELECT * FROM ForestBoundaries WHERE location LIKE '%Sundarbans%';

-- 10. Boundaries under survey
SELECT * FROM ForestBoundaries WHERE status='Under Survey';

-- 11. View: ActiveBoundaries
CREATE VIEW ActiveBoundaries AS SELECT * FROM ForestBoundaries WHERE status='Active';

-- 12. Query ActiveBoundaries
SELECT * FROM ActiveBoundaries;

-- 13. View: MonitoringBoundaries
CREATE VIEW MonitoringBoundaries AS SELECT * FROM ForestBoundaries WHERE status='Monitoring';

-- 14. Query MonitoringBoundaries
SELECT * FROM MonitoringBoundaries;

-- 15. CTE: LargeBoundaries
WITH LargeBoundaries AS (SELECT * FROM ForestBoundaries WHERE area_sq_km>250)
SELECT * FROM LargeBoundaries;

-- 16. CTE: KanhaBoundaries
WITH KanhaBoundaries AS (SELECT * FROM ForestBoundaries WHERE location LIKE '%Kanha%')
SELECT * FROM KanhaBoundaries;

-- 17. Window: row_number by area
SELECT *, ROW_NUMBER() OVER(PARTITION BY status ORDER BY area_sq_km DESC) AS rn FROM ForestBoundaries;

-- 18. Window: rank by area
SELECT *, RANK() OVER(PARTITION BY status ORDER BY area_sq_km DESC) AS rnk FROM ForestBoundaries;

-- 19. Window: dense_rank by area
SELECT *, DENSE_RANK() OVER(PARTITION BY status ORDER BY area_sq_km DESC) AS drnk FROM ForestBoundaries;

-- 20. Window: cumulative area
SELECT id,name,SUM(area_sq_km) OVER(ORDER BY established_date) AS cum_area FROM ForestBoundaries;

-- 21. Stored Procedure: GetBoundariesByStatus
DELIMITER //
CREATE PROCEDURE GetBoundariesByStatus(IN pstatus VARCHAR(20))
BEGIN
    SELECT * FROM ForestBoundaries WHERE status=pstatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetBoundariesByStatus('Active');

-- 23. Stored Procedure: GetBoundariesByLocation
DELIMITER //
CREATE PROCEDURE GetBoundariesByLocation(IN plocation VARCHAR(100))
BEGIN
    SELECT * FROM ForestBoundaries WHERE location LIKE CONCAT('%',plocation,'%');
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetBoundariesByLocation('Kanha');

-- 25. Update boundary status
UPDATE ForestBoundaries SET status='Monitoring' WHERE id=20;

-- 26. Delete a boundary
DELETE FROM ForestBoundaries WHERE id=7;

-- 27. Insert new boundary
INSERT INTO ForestBoundaries (id,name,area_sq_km,boundary_type,established_date,location,map_reference,status,created_at,updated_at)
VALUES (21,'New Zone X',150.0,'Buffer','2025-01-01','New Zone X','MAP_NX_021','Proposed',NOW(),NOW());

-- 28. Transaction commit
START TRANSACTION;
UPDATE ForestBoundaries SET status='Active' WHERE id=14;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE ForestBoundaries SET status='Proposed' WHERE id=5;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON ForestBoundaries TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON ForestBoundaries FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_forestboundaries_insert BEFORE INSERT ON ForestBoundaries
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_forestboundaries_update BEFORE UPDATE ON ForestBoundaries
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Subquery: largest boundary
SELECT * FROM ForestBoundaries WHERE area_sq_km=(SELECT MAX(area_sq_km) FROM ForestBoundaries);

-- 35. Subquery: smallest boundary
SELECT * FROM ForestBoundaries WHERE area_sq_km=(SELECT MIN(area_sq_km) FROM ForestBoundaries);

-- 36. Count boundaries by type
SELECT boundary_type, COUNT(*) AS total FROM ForestBoundaries GROUP BY boundary_type;

-- 37. COALESCE for map_reference
SELECT id,name,COALESCE(map_reference,'No Map') AS map_reference FROM ForestBoundaries;

-- 38. IFNULL for status
SELECT id,name,IFNULL(status,'Unknown') AS status FROM ForestBoundaries;

-- 39. Latest established boundary
SELECT * FROM ForestBoundaries ORDER BY established_date DESC LIMIT 1;

-- 40. Union: Active and Monitoring
SELECT id,name,status FROM ForestBoundaries WHERE status='Active'
UNION
SELECT id,name,status FROM ForestBoundaries WHERE status='Monitoring';

-- 41. Stored procedure: UpdateBoundaryStatus
DELIMITER //
CREATE PROCEDURE UpdateBoundaryStatus(IN pid INT, IN pstatus VARCHAR(20))
BEGIN
    UPDATE ForestBoundaries SET status=pstatus WHERE id=pid;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL UpdateBoundaryStatus(19,'Active');

-- 43. Window: cumulative area by status
SELECT id,name,SUM(area_sq_km) OVER(ORDER BY established_date) AS cum_area FROM ForestBoundaries;

-- 44. Window: cumulative by boundary type
SELECT id,name,SUM(CASE WHEN boundary_type='Core' THEN area_sq_km ELSE 0 END) OVER(ORDER BY established_date) AS cum_core_area FROM ForestBoundaries;

-- 45. View: ProposedBoundaries
CREATE VIEW ProposedBoundaries AS SELECT * FROM ForestBoundaries WHERE status='Proposed';

-- 46. Query ProposedBoundaries
SELECT * FROM ProposedBoundaries;

-- 47. CTE: MonitoringBoundariesCTE
WITH MonitoringBoundariesCTE AS (SELECT * FROM ForestBoundaries WHERE status='Monitoring')
SELECT * FROM MonitoringBoundariesCTE;

-- 48. Trigger: log deleted boundaries
CREATE TABLE ForestBoundariesAudit(id INT AUTO_INCREMENT PRIMARY KEY,boundary_id INT,name VARCHAR(100),deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_forestboundaries_delete AFTER DELETE ON ForestBoundaries
FOR EACH ROW
BEGIN
    INSERT INTO ForestBoundariesAudit(boundary_id,name,deleted_at) VALUES(OLD.id,OLD.name,NOW());
END;
//
DELIMITER ;

-- 49. Select boundaries in Satpura
SELECT * FROM ForestBoundaries WHERE location LIKE '%Satpura%';

-- 50. Count boundaries by year
SELECT YEAR(established_date) AS year, COUNT(*) AS total FROM ForestBoundaries GROUP BY YEAR(established_date);


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

-- 1. Select all programs
SELECT * FROM CommunityOutreach;

-- 2. Completed programs
SELECT * FROM CommunityOutreach WHERE status='Completed';

-- 3. Programs in Kanha
SELECT * FROM CommunityOutreach WHERE location LIKE '%Kanha%';

-- 4. Programs targeting School Children
SELECT * FROM CommunityOutreach WHERE target_group LIKE '%School%';

-- 5. Count programs by target group
SELECT target_group, COUNT(*) AS total FROM CommunityOutreach GROUP BY target_group;

-- 6. Latest program
SELECT * FROM CommunityOutreach ORDER BY event_date DESC LIMIT 1;

-- 7. Earliest program
SELECT * FROM CommunityOutreach ORDER BY event_date ASC LIMIT 1;

-- 8. Programs with feedback containing 'Very'
SELECT * FROM CommunityOutreach WHERE feedback LIKE '%Very%';

-- 9. Programs in Satpura
SELECT * FROM CommunityOutreach WHERE location LIKE '%Satpura%';

-- 10. Status summary
SELECT status, COUNT(*) AS total FROM CommunityOutreach GROUP BY status;

-- 11. View: CompletedPrograms
CREATE VIEW CompletedPrograms AS SELECT * FROM CommunityOutreach WHERE status='Completed';

-- 12. Query CompletedPrograms
SELECT * FROM CompletedPrograms;

-- 13. View: UpcomingPrograms
CREATE VIEW UpcomingPrograms AS SELECT * FROM CommunityOutreach WHERE status='Upcoming';

-- 14. Query UpcomingPrograms
SELECT * FROM UpcomingPrograms;

-- 15. CTE: KanhaEvents
WITH KanhaEvents AS (SELECT * FROM CommunityOutreach WHERE location LIKE '%Kanha%')
SELECT * FROM KanhaEvents;

-- 16. CTE: SchoolPrograms
WITH SchoolPrograms AS (SELECT * FROM CommunityOutreach WHERE target_group LIKE '%School%')
SELECT * FROM SchoolPrograms;

-- 17. Window: row_number by event_date
SELECT *, ROW_NUMBER() OVER(PARTITION BY status ORDER BY event_date) AS rn FROM CommunityOutreach;

-- 18. Window: rank by event_date
SELECT *, RANK() OVER(PARTITION BY status ORDER BY event_date) AS rnk FROM CommunityOutreach;

-- 19. Window: dense_rank by event_date
SELECT *, DENSE_RANK() OVER(PARTITION BY status ORDER BY event_date) AS drnk FROM CommunityOutreach;

-- 20. Window: cumulative program IDs
SELECT id, program_name, SUM(id) OVER(ORDER BY event_date) AS cum_prog_id FROM CommunityOutreach;

-- 21. Stored Procedure: GetProgramsByStatus
DELIMITER //
CREATE PROCEDURE GetProgramsByStatus(IN pstatus VARCHAR(20))
BEGIN
    SELECT * FROM CommunityOutreach WHERE status=pstatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetProgramsByStatus('Completed');

-- 23. Stored Procedure: GetProgramsByLocation
DELIMITER //
CREATE PROCEDURE GetProgramsByLocation(IN plocation VARCHAR(100))
BEGIN
    SELECT * FROM CommunityOutreach WHERE location LIKE CONCAT('%',plocation,'%');
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetProgramsByLocation('Kanha');

-- 25. Update program status
UPDATE CommunityOutreach SET status='Upcoming' WHERE id=5;

-- 26. Delete a program
DELETE FROM CommunityOutreach WHERE id=8;

-- 27. Insert new program
INSERT INTO CommunityOutreach (id,program_name,target_group,event_date,location,activities,feedback,status,created_at,updated_at)
VALUES (21,'Eco Storytelling','Rural Students','2025-07-01','New Zone','Storytelling, drawing','Not started','Upcoming',NOW(),NOW());

-- 28. Transaction commit
START TRANSACTION;
UPDATE CommunityOutreach SET status='Completed' WHERE id=3;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE CommunityOutreach SET status='Upcoming' WHERE id=2;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON CommunityOutreach TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON CommunityOutreach FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_communityoutreach_insert BEFORE INSERT ON CommunityOutreach
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_communityoutreach_update BEFORE UPDATE ON CommunityOutreach
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Subquery: latest program
SELECT * FROM CommunityOutreach WHERE event_date=(SELECT MAX(event_date) FROM CommunityOutreach);

-- 35. Subquery: earliest program
SELECT * FROM CommunityOutreach WHERE event_date=(SELECT MIN(event_date) FROM CommunityOutreach);

-- 36. Count programs by location
SELECT location, COUNT(*) AS total FROM CommunityOutreach GROUP BY location;

-- 37. COALESCE for feedback
SELECT id, program_name, COALESCE(feedback,'No Feedback') AS feedback FROM CommunityOutreach;

-- 38. IFNULL for status
SELECT id, program_name, IFNULL(status,'Unknown') AS status FROM CommunityOutreach;

-- 39. Latest scheduled event
SELECT * FROM CommunityOutreach ORDER BY event_date DESC LIMIT 1;

-- 40. Union: Completed and Upcoming
SELECT id, program_name, status FROM CommunityOutreach WHERE status='Completed'
UNION
SELECT id, program_name, status FROM CommunityOutreach WHERE status='Upcoming';

-- 41. Stored Procedure: UpdateProgramStatus
DELIMITER //
CREATE PROCEDURE UpdateProgramStatus(IN pid INT, IN pstatus VARCHAR(20))
BEGIN
    UPDATE CommunityOutreach SET status=pstatus WHERE id=pid;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL UpdateProgramStatus(19,'Completed');

-- 43. Window: cumulative programs by date
SELECT id, program_name, SUM(id) OVER(ORDER BY event_date) AS cum_prog_id FROM CommunityOutreach;

-- 44. Window: cumulative by target group
SELECT id, program_name, SUM(CASE WHEN target_group='School Children' THEN 1 ELSE 0 END) OVER(ORDER BY event_date) AS cum_school_prog FROM CommunityOutreach;

-- 45. View: UpcomingProgramsView
CREATE VIEW UpcomingProgramsView AS SELECT * FROM CommunityOutreach WHERE status='Upcoming';

-- 46. Query UpcomingProgramsView
SELECT * FROM UpcomingProgramsView;

-- 47. CTE: CompletedProgramsCTE
WITH CompletedProgramsCTE AS (SELECT * FROM CommunityOutreach WHERE status='Completed')
SELECT * FROM CompletedProgramsCTE;

-- 48. Trigger: log deleted programs
CREATE TABLE CommunityOutreachAudit(id INT AUTO_INCREMENT PRIMARY KEY, program_id INT, program_name VARCHAR(100), deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_communityoutreach_delete AFTER DELETE ON CommunityOutreach
FOR EACH ROW
BEGIN
    INSERT INTO CommunityOutreachAudit(program_id, program_name, deleted_at) VALUES(OLD.id, OLD.program_name, NOW());
END;
//
DELIMITER ;

-- 49. Select programs in Bhadra
SELECT * FROM CommunityOutreach WHERE location LIKE '%Bhadra%';

-- 50. Count programs by year
SELECT YEAR(event_date) AS year, COUNT(*) AS total FROM CommunityOutreach GROUP BY YEAR(event_date);


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

-- 1. Select all allocations
SELECT * FROM BudgetAllocations;

-- 2. Fully utilized allocations
SELECT * FROM BudgetAllocations WHERE status='Utilized';

-- 3. Partially utilized allocations
SELECT * FROM BudgetAllocations WHERE status='Partially Utilized';

-- 4. In-progress allocations
SELECT * FROM BudgetAllocations WHERE status='In Progress';

-- 5. Allocations by department
SELECT department, SUM(allocation_amount) AS total_allocated, SUM(spent_amount) AS total_spent 
FROM BudgetAllocations GROUP BY department;

-- 6. Highest allocation
SELECT * FROM BudgetAllocations ORDER BY allocation_amount DESC LIMIT 1;

-- 7. Lowest allocation
SELECT * FROM BudgetAllocations ORDER BY allocation_amount ASC LIMIT 1;

-- 8. Allocations exceeding 5,000,000
SELECT * FROM BudgetAllocations WHERE allocation_amount>5000000;

-- 9. Departments with unutilized allocations
SELECT * FROM BudgetAllocations WHERE status='Unutilized';

-- 10. Count allocations by status
SELECT status, COUNT(*) AS total FROM BudgetAllocations GROUP BY status;

-- 11. View: FullyUtilizedAllocations
CREATE VIEW FullyUtilizedAllocations AS 
SELECT * FROM BudgetAllocations WHERE status='Utilized';

-- 12. Query FullyUtilizedAllocations
SELECT * FROM FullyUtilizedAllocations;

-- 13. View: PendingAllocations
CREATE VIEW PendingAllocations AS 
SELECT * FROM BudgetAllocations WHERE status IN ('Partially Utilized','In Progress','Ongoing');

-- 14. Query PendingAllocations
SELECT * FROM PendingAllocations;

-- 15. CTE: HighAllocations
WITH HighAllocations AS (SELECT * FROM BudgetAllocations WHERE allocation_amount>5000000)
SELECT * FROM HighAllocations;

-- 16. CTE: WildlifeDept
WITH WildlifeDept AS (SELECT * FROM BudgetAllocations WHERE department='Wildlife Conservation')
SELECT * FROM WildlifeDept;

-- 17. Window: row_number by allocation
SELECT *, ROW_NUMBER() OVER(PARTITION BY status ORDER BY allocation_amount DESC) AS rn FROM BudgetAllocations;

-- 18. Window: rank by spent amount
SELECT *, RANK() OVER(PARTITION BY status ORDER BY spent_amount DESC) AS rnk FROM BudgetAllocations;

-- 19. Window: dense_rank by spent amount
SELECT *, DENSE_RANK() OVER(PARTITION BY status ORDER BY spent_amount DESC) AS drnk FROM BudgetAllocations;

-- 20. Window: cumulative allocation
SELECT id, department, SUM(allocation_amount) OVER(ORDER BY fiscal_year) AS cum_alloc FROM BudgetAllocations;

-- 21. Stored Procedure: GetAllocationsByStatus
DELIMITER //
CREATE PROCEDURE GetAllocationsByStatus(IN pstatus VARCHAR(20))
BEGIN
    SELECT * FROM BudgetAllocations WHERE status=pstatus;
END;
//
DELIMITER ;

-- 22. Call procedure
CALL GetAllocationsByStatus('Utilized');

-- 23. Stored Procedure: GetAllocationsByDepartment
DELIMITER //
CREATE PROCEDURE GetAllocationsByDepartment(IN pdept VARCHAR(100))
BEGIN
    SELECT * FROM BudgetAllocations WHERE department=pdept;
END;
//
DELIMITER ;

-- 24. Call procedure
CALL GetAllocationsByDepartment('Wildlife Conservation');

-- 25. Update allocation status
UPDATE BudgetAllocations SET status='In Progress' WHERE id=3;

-- 26. Delete an allocation
DELETE FROM BudgetAllocations WHERE id=20;

-- 27. Insert new allocation
INSERT INTO BudgetAllocations (id, department, allocation_amount, fiscal_year, spent_amount, purpose, remarks, status, created_at, updated_at)
VALUES (21,'Forest Innovation', 3500000.00,'2024-2025',0.00,'Tech pilot projects','Pending approval','Unutilized',NOW(),NOW());

-- 28. Transaction commit
START TRANSACTION;
UPDATE BudgetAllocations SET spent_amount=allocation_amount, status='Utilized' WHERE id=6;
COMMIT;

-- 29. Transaction rollback
START TRANSACTION;
UPDATE BudgetAllocations SET status='Partially Utilized' WHERE id=5;
ROLLBACK;

-- 30. Grant SELECT
GRANT SELECT ON BudgetAllocations TO 'guest'@'localhost';

-- 31. Revoke SELECT
REVOKE SELECT ON BudgetAllocations FROM 'guest'@'localhost';

-- 32. Trigger: before insert
DELIMITER //
CREATE TRIGGER before_budgetallocations_insert BEFORE INSERT ON BudgetAllocations
FOR EACH ROW
BEGIN
    SET NEW.created_at=NOW();
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 33. Trigger: before update
DELIMITER //
CREATE TRIGGER before_budgetallocations_update BEFORE UPDATE ON BudgetAllocations
FOR EACH ROW
BEGIN
    SET NEW.updated_at=NOW();
END;
//
DELIMITER ;

-- 34. Subquery: highest allocation
SELECT * FROM BudgetAllocations WHERE allocation_amount=(SELECT MAX(allocation_amount) FROM BudgetAllocations);

-- 35. Subquery: lowest allocation
SELECT * FROM BudgetAllocations WHERE allocation_amount=(SELECT MIN(allocation_amount) FROM BudgetAllocations);

-- 36. Count allocations by fiscal year
SELECT fiscal_year, COUNT(*) AS total FROM BudgetAllocations GROUP BY fiscal_year;

-- 37. COALESCE for remarks
SELECT id, department, COALESCE(remarks,'No Remarks') AS remarks FROM BudgetAllocations;

-- 38. IFNULL for status
SELECT id, department, IFNULL(status,'Unknown') AS status FROM BudgetAllocations;

-- 39. Latest allocation by fiscal year
SELECT * FROM BudgetAllocations ORDER BY fiscal_year DESC LIMIT 1;

-- 40. Union: Utilized & Partially Utilized
SELECT id, department, status FROM BudgetAllocations WHERE status='Utilized'
UNION
SELECT id, department, status FROM BudgetAllocations WHERE status='Partially Utilized';

-- 41. Stored procedure: UpdateAllocationStatus
DELIMITER //
CREATE PROCEDURE UpdateAllocationStatus(IN pid INT, IN pstatus VARCHAR(20))
BEGIN
    UPDATE BudgetAllocations SET status=pstatus WHERE id=pid;
END;
//
DELIMITER ;

-- 42. Call procedure
CALL UpdateAllocationStatus(16,'Partially Utilized');

-- 43. Window: cumulative spent amount
SELECT id, department, SUM(spent_amount) OVER(ORDER BY fiscal_year) AS cum_spent FROM BudgetAllocations;

-- 44. Window: cumulative allocation by department
SELECT id, department, SUM(CASE WHEN department='Wildlife Conservation' THEN allocation_amount ELSE 0 END) OVER(ORDER BY fiscal_year) AS cum_wildlife_alloc FROM BudgetAllocations;

-- 45. View: UnutilizedAllocations
CREATE VIEW UnutilizedAllocations AS SELECT * FROM BudgetAllocations WHERE status='Unutilized';

-- 46. Query UnutilizedAllocations
SELECT * FROM UnutilizedAllocations;

-- 47. CTE: InProgressAllocationsCTE
WITH InProgressAllocationsCTE AS (SELECT * FROM BudgetAllocations WHERE status='In Progress')
SELECT * FROM InProgressAllocationsCTE;

-- 48. Trigger: log deleted allocations
CREATE TABLE BudgetAllocationsAudit(id INT AUTO_INCREMENT PRIMARY KEY, allocation_id INT, department VARCHAR(100), deleted_at DATETIME);
DELIMITER //
CREATE TRIGGER after_budgetallocations_delete AFTER DELETE ON BudgetAllocations
FOR EACH ROW
BEGIN
    INSERT INTO BudgetAllocationsAudit(allocation_id, department, deleted_at) VALUES(OLD.id, OLD.department, NOW());
END;
//
DELIMITER ;

-- 49. Select allocations for Forest Development
SELECT * FROM BudgetAllocations WHERE department='Forest Development';

-- 50. Count allocations by department
SELECT department, COUNT(*) AS total FROM BudgetAllocations GROUP BY department;

