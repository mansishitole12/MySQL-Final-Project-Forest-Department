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

-- 1.List all active forest zones
SELECT name, location FROM ForestZones WHERE status = 'Active';



-- 2.Find zones established before 1980
SELECT name, established_date FROM ForestZones WHERE established_date < '1980-01-01';


-- 3.Count number of Tiger Reserves
SELECT COUNT(*) AS tiger_reserves FROM ForestZones WHERE zone_type = 'Tiger Reserve';



-- 4.Find the zone with maximum area
SELECT name, area_sq_km FROM ForestZones ORDER BY area_sq_km DESC LIMIT 1;


-- 5.Find the zone with minimum area
SELECT name, area_sq_km FROM ForestZones ORDER BY area_sq_km ASC LIMIT 1;



-- 6.Average area of all National Parks
SELECT AVG(area_sq_km) AS avg_area FROM ForestZones WHERE zone_type = 'National Park';


-- 7.Zones that mention 'tiger' in description
SELECT name FROM ForestZones WHERE description LIKE '%tiger%';



-- 8.Total forest area grouped by state
SELECT location, SUM(area_sq_km) AS total_area FROM ForestZones GROUP BY location;


-- 9.Most recently established forest zone
SELECT name, established_date FROM ForestZones ORDER BY established_date DESC LIMIT 1;


-- 10.Oldest forest zone
SELECT name, established_date FROM ForestZones ORDER BY established_date ASC LIMIT 1;


-- 11.Subquery: Zones larger than average size
SELECT name, area_sq_km
FROM ForestZones
WHERE area_sq_km > (SELECT AVG(area_sq_km) FROM ForestZones);



-- 12.Subquery: Zones smaller than Gir Forest
SELECT name, area_sq_km
FROM ForestZones
WHERE area_sq_km < (SELECT area_sq_km FROM ForestZones WHERE name = 'Gir Forest');


-- 13.Built-in: Length of each zone name
SELECT name, LENGTH(name) AS name_length FROM ForestZones;


-- 14.Built-in: Zone names in uppercase
SELECT UPPER(name) AS zone_upper FROM ForestZones;


-- 15.Built-in: Format established date (Month Year)
SELECT name, DATE_FORMAT(established_date, '%M %Y') AS formatted_date FROM ForestZones;


-- 16.Extract year of establishment
SELECT name, YEAR(established_date) AS established_year FROM ForestZones;


-- 17. Zones established in the year 1973
SELECT name FROM ForestZones WHERE YEAR(established_date) = 1973;


-- 18.Top 5 largest zones
SELECT name, area_sq_km FROM ForestZones ORDER BY area_sq_km DESC LIMIT 5;


-- 19.Bottom 5 smallest zones
SELECT name, area_sq_km FROM ForestZones ORDER BY area_sq_km ASC LIMIT 5;


-- 20.Subquery: Second largest zone
SELECT name, area_sq_km
FROM ForestZones
WHERE area_sq_km = (
    SELECT MAX(area_sq_km) 
    FROM ForestZones 
    WHERE area_sq_km < (SELECT MAX(area_sq_km) FROM ForestZones)
);


-- 21.Count zones per type
SELECT zone_type, COUNT(*) AS total FROM ForestZones GROUP BY zone_type;


-- 22.Inactive zones
SELECT name FROM ForestZones WHERE status = 'Inactive';


-- 23.Count words in description
SELECT name, LENGTH(description) - LENGTH(REPLACE(description, ' ', '')) + 1 AS word_count FROM ForestZones;


-- 24.User Defined Function: Zone age
DELIMITER //
CREATE FUNCTION ZoneAge(established DATE) RETURNS INT
DETERMINISTIC
BEGIN
    RETURN TIMESTAMPDIFF(YEAR, established, CURDATE());
END //
DELIMITER ;

-- 25.Use UDF to get age of zones
SELECT name, ZoneAge(established_date) AS zone_age FROM ForestZones;


-- 26.Average age of zones using UDF
SELECT AVG(ZoneAge(established_date)) AS avg_zone_age FROM ForestZones;



-- 27.List staff and their assigned forest zones
SELECT s.name AS staff_name, s.role, f.name AS forest_zone
FROM ForestStaff s
JOIN ForestZones f ON s.zone_id = f.id;


-- 28.List species and their respective forest
SELECT w.species_name, w.count_estimate, f.name AS forest_zone
FROM ForestWildlife w
JOIN ForestZones f ON w.zone_id = f.id;


-- 29.Staff who joined before 2000
SELECT s.name, s.joined_date, f.name AS forest_zone
FROM ForestStaff s
JOIN ForestZones f ON s.zone_id = f.id
WHERE s.joined_date < '2000-01-01';


-- 30.Zones that have endangered species
SELECT DISTINCT f.name, w.species_name
FROM ForestWildlife w
JOIN ForestZones f ON w.zone_id = f.id
WHERE w.endangered_status = 'Endangered';



-- 31.Count species per zone
SELECT f.name, COUNT(w.species_id) AS species_count
FROM ForestZones f
LEFT JOIN ForestWildlife w ON f.id = w.zone_id
GROUP BY f.name;


-- 32. Zones with more than 5 species
SELECT f.name
FROM ForestZones f
JOIN ForestWildlife w ON f.id = w.zone_id
GROUP BY f.name
HAVING COUNT(w.species_id) > 5;



-- 33.Zones where elephants exist
SELECT DISTINCT f.name
FROM ForestZones f
JOIN ForestWildlife w ON f.id = w.zone_id
WHERE w.species_name LIKE '%elephant%';


-- 34.Subquery + join: Staff in largest zone
SELECT s.name, f.name AS forest_zone
FROM ForestStaff s
JOIN ForestZones f ON s.zone_id = f.id
WHERE f.area_sq_km = (SELECT MAX(area_sq_km) FROM ForestZones);



-- 35.Zones with no staff
SELECT f.name
FROM ForestZones f
LEFT JOIN ForestStaff s ON f.id = s.zone_id
WHERE s.staff_id IS NULL;


-- 36. Staff count per zone
SELECT f.name, COUNT(s.staff_id) AS staff_count
FROM ForestZones f
LEFT JOIN ForestStaff s ON f.id = s.zone_id
GROUP BY f.name;



-- 37. Staff working in Tiger Reserves
SELECT s.name, f.name AS forest_zone
FROM ForestStaff s
JOIN ForestZones f ON s.zone_id = f.id
WHERE f.zone_type = 'Tiger Reserve';


-- 38. Zone with highest total animal population
SELECT f.name, SUM(w.count_estimate) AS total_animals
FROM ForestZones f
JOIN ForestWildlife w ON f.id = w.zone_id
GROUP BY f.name
ORDER BY total_animals DESC LIMIT 1;



-- 39.Species found in Karnataka forests
SELECT w.species_name, f.name
FROM ForestWildlife w
JOIN ForestZones f ON w.zone_id = f.id
WHERE f.location = 'Karnataka';


-- 40.Forests with lions
SELECT DISTINCT f.name
FROM ForestWildlife w
JOIN ForestZones f ON w.zone_id = f.id
WHERE w.species_name LIKE '%lion%';



-- 41. Average number of species per zone
SELECT AVG(species_count) AS avg_species
FROM (
    SELECT COUNT(*) AS species_count FROM ForestWildlife GROUP BY zone_id
) sub;


-- 42.Staff distribution by role
SELECT role, COUNT(*) AS total_staff FROM ForestStaff GROUP BY role;



-- 43. Staff managing endangered species zones
SELECT DISTINCT s.name, f.name AS forest_zone
FROM ForestStaff s
JOIN ForestZones f ON s.zone_id = f.id
JOIN ForestWildlife w ON f.id = w.zone_id
WHERE w.endangered_status = 'Endangered';


-- 44. Species count grouped by zone type
SELECT f.zone_type, COUNT(w.species_id) AS species_count
FROM ForestZones f
JOIN ForestWildlife w ON f.id = w.zone_id
GROUP BY f.zone_type;



-- 45. Zone with maximum staff
SELECT name FROM ForestZones
WHERE id = (
  SELECT zone_id FROM ForestStaff GROUP BY zone_id ORDER BY COUNT(*) DESC LIMIT 1
);


-- 46. Staff and species in same zone
SELECT s.name AS staff_name, w.species_name, f.name AS zone
FROM ForestStaff s
JOIN ForestWildlife w ON s.zone_id = w.zone_id
JOIN ForestZones f ON f.id = s.zone_id;



-- 47. Zones with more staff than species
SELECT f.name
FROM ForestZones f
LEFT JOIN ForestStaff s ON f.id = s.zone_id
LEFT JOIN ForestWildlife w ON f.id = w.zone_id
GROUP BY f.name
HAVING COUNT(DISTINCT s.staff_id) > COUNT(DISTINCT w.species_id);


-- 48. Zones with endangered species and >=2 staff
SELECT f.name
FROM ForestZones f
JOIN ForestWildlife w ON f.id = w.zone_id
JOIN ForestStaff s ON f.id = s.zone_id
WHERE w.endangered_status = 'Endangered'
GROUP BY f.name
HAVING COUNT(DISTINCT s.staff_id) >= 2;


-- 49. Most widespread species (found in most zones)
SELECT species_name, COUNT(DISTINCT zone_id) AS zones_present
FROM ForestWildlife
GROUP BY species_name
ORDER BY zones_present DESC
LIMIT 1;


-- 50. Zones with above-average species count
SELECT f.name, COUNT(w.species_id) AS species_count
FROM ForestZones f
JOIN ForestWildlife w ON f.id = w.zone_id
GROUP BY f.name
HAVING species_count > (
SELECT AVG(species_per_zone)
FROM (SELECT COUNT(*) AS species_per_zone FROM ForestWildlife GROUP BY zone_id) sub
);



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

-- 2. Count total staff
SELECT COUNT(*) AS total_staff FROM Staff;

-- 3. Count staff by designation
SELECT designation, COUNT(*) AS designation_count FROM Staff GROUP BY designation;

-- 4. Count staff by department
SELECT department, COUNT(*) AS dept_count FROM Staff GROUP BY department;

-- 5. Count staff by status
SELECT status, COUNT(*) AS status_count FROM Staff GROUP BY status;

-- 6. Staff in Nagpur location
SELECT * FROM Staff WHERE location='Nagpur';

-- 7. Staff in Pune location
SELECT * FROM Staff WHERE location='Pune';

-- 8. Staff with designation 'Forest Officer'
SELECT * FROM Staff WHERE designation='Forest Officer';

-- 9. Staff with department 'Research'
SELECT * FROM Staff WHERE department='Research';

-- 10. Staff whose name starts with 'R'
SELECT * FROM Staff WHERE name LIKE 'R%';

-- 11. Staff whose name ends with 'Patil'
SELECT * FROM Staff WHERE name LIKE '%Patil';

-- 12. Staff with contact number ending with '65'
SELECT * FROM Staff WHERE contact LIKE '%65';

-- 13. Uppercase staff names
SELECT UPPER(name) AS staff_upper FROM Staff;

-- 14. Lowercase departments
SELECT LOWER(department) AS dept_lower FROM Staff;

-- 15. Concatenate name and designation
SELECT CONCAT(name,' - ',designation) AS name_designation FROM Staff;

-- 16. Length of email addresses
SELECT name, LENGTH(email) AS email_length FROM Staff;

-- 17. Staff ordered by name ascending
SELECT * FROM Staff ORDER BY name ASC;

-- 18. Staff ordered by name descending
SELECT * FROM Staff ORDER BY name DESC;

-- 19. Staff with status 'Active'
SELECT * FROM Staff WHERE status='Active';

-- 20. Staff with status 'Inactive'
SELECT * FROM Staff WHERE status='Inactive';

-- 21. Staff in Nagpur or Pune
SELECT * FROM Staff WHERE location IN ('Nagpur','Pune');

-- 22. Count staff per location
SELECT location, COUNT(*) AS count_location FROM Staff GROUP BY location;

-- 23. Max contact number
SELECT MAX(contact) AS max_contact FROM Staff;

-- 24. Min contact number
SELECT MIN(contact) AS min_contact FROM Staff;

-- 25. Average length of contact numbers
SELECT AVG(LENGTH(contact)) AS avg_contact_length FROM Staff;

-- 26. Join with PatrolRecords (assuming patrol_team=staff.name for demonstration)
SELECT s.name, p.patrol_team, p.area_covered, p.status
FROM Staff s LEFT JOIN PatrolRecords p ON s.name=p.patrol_team;

-- 27. Join with Incidents (staff reported incidents)
SELECT s.name, i.incident_type, i.status, i.date
FROM Staff s LEFT JOIN Incidents i ON s.name=i.reported_by;

-- 28. Join with FireReports (staff reported fire incidents)
SELECT s.name, f.location, f.cause, f.status
FROM Staff s LEFT JOIN FireReports f ON s.name=f.reported_by;

-- 29. Staff with most incidents reported (subquery)
SELECT name FROM Staff WHERE name=(SELECT reported_by FROM Incidents GROUP BY reported_by ORDER BY COUNT(*) DESC LIMIT 1);

-- 30. Staff in 'Research' or 'Monitoring' departments
SELECT * FROM Staff WHERE department IN ('Research','Monitoring');

-- 31. Staff not in 'Active' status
SELECT * FROM Staff WHERE status<>'Active';

-- 32. Staff count by department and status
SELECT department, status, COUNT(*) AS count_dept_status FROM Staff GROUP BY department,status;

-- 33. Staff emails ending with 'forest.gov.in'
SELECT * FROM Staff WHERE email LIKE '%forest.gov.in';

-- 34. Staff names containing 'Shinde'
SELECT * FROM Staff WHERE name LIKE '%Shinde%';

-- 35. Staff with name length > 10
SELECT * FROM Staff WHERE LENGTH(name)>10;

-- 36. Subquery: staff with id greater than average id
SELECT * FROM Staff WHERE id>(SELECT AVG(id) FROM Staff);

-- 37. Staff with latest created_at
SELECT * FROM Staff WHERE created_at=(SELECT MAX(created_at) FROM Staff);

-- 38. Staff in cities with more than 2 staff
SELECT * FROM Staff WHERE location IN (SELECT location FROM Staff GROUP BY location HAVING COUNT(*)>2);

-- 39. Join with WildlifeSpecies (staff in region of species)
SELECT s.name, w.name AS species, w.native_region
FROM Staff s LEFT JOIN WildlifeSpecies w ON s.location LIKE CONCAT('%',w.native_region,'%');

-- 40. Join with PatrolRecords for staff involved in patrols
SELECT s.name, p.patrol_team, p.date, p.status
FROM Staff s INNER JOIN PatrolRecords p ON s.name=p.patrol_team;

-- 41. Staff with designation containing 'Officer'
SELECT * FROM Staff WHERE designation LIKE '%Officer%';

-- 42. Staff count by first letter of name
SELECT LEFT(name,1) AS first_letter, COUNT(*) AS count_letter FROM Staff GROUP BY LEFT(name,1);

-- 43. Staff ordered by updated_at descending
SELECT * FROM Staff ORDER BY updated_at DESC;

-- 44. Staff ordered by created_at ascending
SELECT * FROM Staff ORDER BY created_at ASC;

-- 45. Staff with id in top 5
SELECT * FROM Staff ORDER BY id ASC LIMIT 5;

-- 46. Subquery: staff in department with max count
SELECT * FROM Staff WHERE department=(SELECT department FROM Staff GROUP BY department ORDER BY COUNT(*) DESC LIMIT 1);

-- 47. Count staff per designation with 'Active' status
SELECT designation, COUNT(*) AS active_count FROM Staff WHERE status='Active' GROUP BY designation;

-- 48. User-defined function to categorize staff by id
DELIMITER //
CREATE FUNCTION staff_category(staff_id INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF staff_id<=5 THEN RETURN 'Senior';
  ELSEIF staff_id<=15 THEN RETURN 'Mid-Level';
  ELSE RETURN 'Junior';
  END IF;
END;
//
DELIMITER ;

-- 49. Apply staff_category function
SELECT name, id, staff_category(id) AS category FROM Staff;

-- 50. Count staff per category using the function
SELECT staff_category(id) AS category, COUNT(*) AS count_category FROM Staff GROUP BY staff_category(id);


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

-- 2. Count total species
SELECT COUNT(*) AS total_species FROM WildlifeSpecies;

-- 3. Count species by type
SELECT species_type, COUNT(*) AS type_count FROM WildlifeSpecies GROUP BY species_type;

-- 4. Count species by conservation_status
SELECT conservation_status, COUNT(*) AS status_count FROM WildlifeSpecies GROUP BY conservation_status;

-- 5. Species in Western Ghats
SELECT * FROM WildlifeSpecies WHERE native_region LIKE '%Western Ghats%';

-- 6. Species with population > 10000
SELECT * FROM WildlifeSpecies WHERE population_estimate>10000;

-- 7. Species with population < 1000
SELECT * FROM WildlifeSpecies WHERE population_estimate<1000;

-- 8. Max population estimate
SELECT MAX(population_estimate) AS max_population FROM WildlifeSpecies;

-- 9. Min population estimate
SELECT MIN(population_estimate) AS min_population FROM WildlifeSpecies;

-- 10. Average population estimate
SELECT AVG(population_estimate) AS avg_population FROM WildlifeSpecies;

-- 11. Sum of all populations
SELECT SUM(population_estimate) AS total_population FROM WildlifeSpecies;

-- 12. Uppercase species names
SELECT UPPER(name) AS species_upper FROM WildlifeSpecies;

-- 13. Lowercase native region
SELECT LOWER(native_region) AS region_lower FROM WildlifeSpecies;

-- 14. Substring of description
SELECT id, SUBSTRING(description,1,50) AS description_snippet FROM WildlifeSpecies;

-- 15. Species ordered by population descending
SELECT * FROM WildlifeSpecies ORDER BY population_estimate DESC;

-- 16. Species ordered by name ascending
SELECT * FROM WildlifeSpecies ORDER BY name ASC;

-- 17. Species with status 'Active'
SELECT * FROM WildlifeSpecies WHERE status='Active';

-- 18. Species type 'Mammal' and population > 5000
SELECT * FROM WildlifeSpecies WHERE species_type='Mammal' AND population_estimate>5000;

-- 19. Species containing 'Tiger' in name
SELECT * FROM WildlifeSpecies WHERE name LIKE '%Tiger%';

-- 20. Species containing 'Lion' in name
SELECT * FROM WildlifeSpecies WHERE name LIKE '%Lion%';

-- 21. Species with population between 1000 and 10000
SELECT * FROM WildlifeSpecies WHERE population_estimate BETWEEN 1000 AND 10000;

-- 22. Species whose description contains 'forest'
SELECT * FROM WildlifeSpecies WHERE description LIKE '%forest%';

-- 23. Count species by status
SELECT status, COUNT(*) AS status_count FROM WildlifeSpecies GROUP BY status;

-- 24. Count species by region
SELECT native_region, COUNT(*) AS region_count FROM WildlifeSpecies GROUP BY native_region;

-- 25. Join with Incidents to find incidents involving species
SELECT w.name, i.incident_type, i.location, i.date
FROM WildlifeSpecies w LEFT JOIN Incidents i ON i.description LIKE CONCAT('%',w.name,'%');

-- 26. Inner join with Incidents
SELECT w.name, i.incident_type, i.status
FROM WildlifeSpecies w INNER JOIN Incidents i ON i.description LIKE CONCAT('%',w.name,'%');

-- 27. Subquery: Species with population higher than average
SELECT * FROM WildlifeSpecies WHERE population_estimate > (SELECT AVG(population_estimate) FROM WildlifeSpecies);

-- 28. Species with max population
SELECT * FROM WildlifeSpecies WHERE population_estimate=(SELECT MAX(population_estimate) FROM WildlifeSpecies);

-- 29. Species with min population
SELECT * FROM WildlifeSpecies WHERE population_estimate=(SELECT MIN(population_estimate) FROM WildlifeSpecies);

-- 30. Count species with 'Endangered' status
SELECT COUNT(*) AS endangered_count FROM WildlifeSpecies WHERE conservation_status='Endangered';

-- 31. Species names concatenated with population
SELECT CONCAT(name,' - ',population_estimate) AS name_pop FROM WildlifeSpecies;

-- 32. Species with description longer than 50 chars
SELECT * FROM WildlifeSpecies WHERE LENGTH(description)>50;

-- 33. Species with population estimate divisible by 1000
SELECT * FROM WildlifeSpecies WHERE population_estimate%1000=0;

-- 34. Species with name starting with 'I'
SELECT * FROM WildlifeSpecies WHERE name LIKE 'I%';

-- 35. Species with name ending with 'Bear'
SELECT * FROM WildlifeSpecies WHERE name LIKE '%Bear';

-- 36. Species with 'Critically Endangered' or 'Endangered'
SELECT * FROM WildlifeSpecies WHERE conservation_status IN ('Critically Endangered','Endangered');

-- 37. Count species per type and status
SELECT species_type, status, COUNT(*) AS count_type_status FROM WildlifeSpecies GROUP BY species_type,status;

-- 38. Species ordered by conservation_status ascending
SELECT * FROM WildlifeSpecies ORDER BY conservation_status ASC;

-- 39. Species ordered by population ascending
SELECT * FROM WildlifeSpecies ORDER BY population_estimate ASC;

-- 40. Subquery: Species with population less than 5th largest population
SELECT * FROM WildlifeSpecies WHERE population_estimate<(SELECT population_estimate FROM WildlifeSpecies ORDER BY population_estimate DESC LIMIT 4,1);

-- 41. Count species per type with population > 5000
SELECT species_type, COUNT(*) AS count_large_population FROM WildlifeSpecies WHERE population_estimate>5000 GROUP BY species_type;

-- 42. Species containing 'Indian' in name
SELECT * FROM WildlifeSpecies WHERE name LIKE '%Indian%';

-- 43. Join with PatrolRecords to find patrols in regions of species
SELECT w.name, p.patrol_team, p.area_covered
FROM WildlifeSpecies w LEFT JOIN PatrolRecords p ON p.area_covered LIKE CONCAT('%',w.native_region,'%');

-- 44. Join with FireReports for affected regions
SELECT w.name, f.location, f.cause
FROM WildlifeSpecies w LEFT JOIN FireReports f ON f.location LIKE CONCAT('%',w.native_region,'%');

-- 45. Subquery: Species with population above median
SELECT * FROM WildlifeSpecies WHERE population_estimate > (SELECT AVG(population_estimate) FROM WildlifeSpecies);

-- 46. Count species type with 'Vulnerable' status
SELECT species_type, COUNT(*) AS vulnerable_count FROM WildlifeSpecies WHERE conservation_status='Vulnerable' GROUP BY species_type;

-- 47. User-defined function to categorize species by population
DELIMITER //
CREATE FUNCTION population_category(pop INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF pop>20000 THEN RETURN 'High';
  ELSEIF pop>5000 THEN RETURN 'Medium';
  ELSE RETURN 'Low';
  END IF;
END;
//
DELIMITER ;

-- 48. Apply population_category function
SELECT name, population_estimate, population_category(population_estimate) AS pop_category FROM WildlifeSpecies;

-- 49. Count species per population category
SELECT population_category(population_estimate) AS pop_category, COUNT(*) AS count_category FROM WildlifeSpecies GROUP BY population_category(population_estimate);

-- 50. Species with description containing 'endangered' (case-insensitive)
SELECT * FROM WildlifeSpecies WHERE LOWER(description) LIKE '%endangered%';



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

-- 2. Patrols completed
SELECT * FROM PatrolRecords WHERE status='Completed';

-- 3. Patrols using Jeep
SELECT * FROM PatrolRecords WHERE vehicle_used='Jeep';

-- 4. Patrols covering 'Zone C3 - Kanha'
SELECT * FROM PatrolRecords WHERE area_covered='Zone C3 - Kanha';

-- 5. Count total patrols
SELECT COUNT(*) AS total_patrols FROM PatrolRecords;

-- 6. Count patrols by status
SELECT status, COUNT(*) AS status_count FROM PatrolRecords GROUP BY status;

-- 7. Count patrols by team
SELECT patrol_team, COUNT(*) AS team_count FROM PatrolRecords GROUP BY patrol_team;

-- 8. Patrols in June 2025
SELECT * FROM PatrolRecords WHERE MONTH(date)=6 AND YEAR(date)=2025;

-- 9. Latest patrol date
SELECT MAX(date) AS latest_patrol FROM PatrolRecords;

-- 10. Earliest patrol date
SELECT MIN(date) AS earliest_patrol FROM PatrolRecords;

-- 11. Uppercase area_covered
SELECT UPPER(area_covered) AS area_upper FROM PatrolRecords;

-- 12. Concatenate team and area
SELECT CONCAT(patrol_team,' patrolled ',area_covered) AS summary FROM PatrolRecords;

-- 13. Substring of notes
SELECT id, SUBSTRING(notes,1,30) AS note_snippet FROM PatrolRecords;

-- 14. Patrols ordered by date ascending
SELECT * FROM PatrolRecords ORDER BY date ASC;

-- 15. Patrols ordered by date descending
SELECT * FROM PatrolRecords ORDER BY date DESC;

-- 16. Patrols not completed
SELECT * FROM PatrolRecords WHERE status<>'Completed';

-- 17. Patrols with status in ('Reported','Investigated')
SELECT * FROM PatrolRecords WHERE status IN ('Reported','Investigated');

-- 18. Count patrols by vehicle_used
SELECT vehicle_used, COUNT(*) AS vehicle_count FROM PatrolRecords GROUP BY vehicle_used;

-- 19. Patrols between 2025-06-05 and 2025-06-15
SELECT * FROM PatrolRecords WHERE date BETWEEN '2025-06-05' AND '2025-06-15';

-- 20. Patrol with longest incidents_reported text
SELECT * FROM PatrolRecords WHERE LENGTH(incidents_reported)=(SELECT MAX(LENGTH(incidents_reported)) FROM PatrolRecords);

-- 21. Patrol with shortest notes
SELECT * FROM PatrolRecords WHERE LENGTH(notes)=(SELECT MIN(LENGTH(notes)) FROM PatrolRecords);

-- 22. Average incidents per patrol (by counting words in incidents_reported)
SELECT AVG(LENGTH(incidents_reported)-LENGTH(REPLACE(incidents_reported,' ',''))+1) AS avg_incidents_words FROM PatrolRecords;

-- 23. Count patrols by area
SELECT area_covered, COUNT(*) AS area_count FROM PatrolRecords GROUP BY area_covered;

-- 24. Patrols where notes start with 'Routine'
SELECT * FROM PatrolRecords WHERE notes LIKE 'Routine%';

-- 25. Patrols where area contains 'Zone D4'
SELECT * FROM PatrolRecords WHERE area_covered LIKE '%Zone D4%';

-- 26. Join with Incidents on area match
SELECT p.id, p.patrol_team, i.incident_type, i.status
FROM PatrolRecords p LEFT JOIN Incidents i ON p.area_covered LIKE CONCAT('%',i.location,'%');

-- 27. Inner join with Incidents
SELECT p.id, p.patrol_team, i.incident_type, i.reported_by
FROM PatrolRecords p INNER JOIN Incidents i ON p.area_covered LIKE CONCAT('%',i.location,'%');

-- 28. Patrols reporting same status as id=3
SELECT * FROM PatrolRecords WHERE status=(SELECT status FROM PatrolRecords WHERE id=3);

-- 29. Patrols covering same area as id=5
SELECT * FROM PatrolRecords WHERE area_covered=(SELECT area_covered FROM PatrolRecords WHERE id=5);

-- 30. Count patrols by team and status
SELECT patrol_team, status, COUNT(*) AS count_team_status FROM PatrolRecords GROUP BY patrol_team,status;

-- 31. Patrols using Motorbike ordered by date
SELECT * FROM PatrolRecords WHERE vehicle_used='Motorbike' ORDER BY date DESC;

-- 32. Patrols with notes containing 'alert'
SELECT * FROM PatrolRecords WHERE notes LIKE '%alert%';

-- 33. Patrols with incidents_reported containing 'poaching'
SELECT * FROM PatrolRecords WHERE incidents_reported LIKE '%poaching%';

-- 34. Patrols with status in ('Action Taken','Investigated')
SELECT * FROM PatrolRecords WHERE status IN ('Action Taken','Investigated');

-- 35. Patrols where area starts with 'Zone A'
SELECT * FROM PatrolRecords WHERE area_covered LIKE 'Zone A%';

-- 36. Patrols where area ends with 'Sariska'
SELECT * FROM PatrolRecords WHERE area_covered LIKE '%Sariska';

-- 37. Patrols with date after '2025-06-10'
SELECT * FROM PatrolRecords WHERE date>'2025-06-10';

-- 38. Patrols with status not 'Completed'
SELECT * FROM PatrolRecords WHERE status<>'Completed';

-- 39. Patrols with vehicle used as Jeep or Truck
SELECT * FROM PatrolRecords WHERE vehicle_used IN ('Jeep','Truck');

-- 40. Patrols with id between 5 and 15
SELECT * FROM PatrolRecords WHERE id BETWEEN 5 AND 15;

-- 41. Patrols counting words in notes
SELECT id, (LENGTH(notes)-LENGTH(REPLACE(notes,' ',''))+1) AS words_in_notes FROM PatrolRecords;

-- 42. User-defined function to classify patrol urgency based on status
DELIMITER //
CREATE FUNCTION patrol_urgency(p_status VARCHAR(20))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF p_status IN ('Investigated','Action Taken') THEN RETURN 'High';
  ELSEIF p_status IN ('Reported','Under Investigation') THEN RETURN 'Medium';
  ELSE RETURN 'Low';
  END IF;
END;
//
DELIMITER ;

-- 43. Apply patrol_urgency function
SELECT id, patrol_team, status, patrol_urgency(status) AS urgency FROM PatrolRecords;

-- 44. Count patrols per vehicle with urgency
SELECT vehicle_used, patrol_urgency(status) AS urgency, COUNT(*) AS count_per_vehicle FROM PatrolRecords GROUP BY vehicle_used, patrol_urgency(status);

-- 45. Patrols ordered by patrol_team ascending
SELECT * FROM PatrolRecords ORDER BY patrol_team ASC;

-- 46. Patrols ordered by area_covered ascending
SELECT * FROM PatrolRecords ORDER BY area_covered ASC;

-- 47. Patrols with status 'Reported' and vehicle 'Boat'
SELECT * FROM PatrolRecords WHERE status='Reported' AND vehicle_used='Boat';

-- 48. Patrols with incidents_reported containing 'illegal'
SELECT * FROM PatrolRecords WHERE incidents_reported LIKE '%illegal%';

-- 49. Patrols with notes containing 'tracked'
SELECT * FROM PatrolRecords WHERE notes LIKE '%tracked%';

-- 50. Patrols where incidents_reported contains 'fire' and status='Investigated'
SELECT * FROM PatrolRecords WHERE incidents_reported LIKE '%fire%' AND status='Investigated';



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

-- 2. Incidents with status 'Resolved'
SELECT * FROM Incidents WHERE status='Resolved';

-- 3. Incidents reported by 'Ravi Sharma'
SELECT * FROM Incidents WHERE reported_by='Ravi Sharma';

-- 4. Incidents of type 'Poaching'
SELECT * FROM Incidents WHERE incident_type='Poaching';

-- 5. Incidents in 'Kanha Zone C3'
SELECT * FROM Incidents WHERE location='Kanha Zone C3';

-- 6. Count total incidents
SELECT COUNT(*) AS total_incidents FROM Incidents;

-- 7. Count incidents by status
SELECT status, COUNT(*) AS count_status FROM Incidents GROUP BY status;

-- 8. Count incidents by type
SELECT incident_type, COUNT(*) AS count_type FROM Incidents GROUP BY incident_type;

-- 9. Latest incident date
SELECT MAX(date) AS latest_incident FROM Incidents;

-- 10. Earliest incident date
SELECT MIN(date) AS earliest_incident FROM Incidents;

-- 11. Incidents in June 2025
SELECT * FROM Incidents WHERE MONTH(date)=6 AND YEAR(date)=2025;

-- 12. Uppercase location
SELECT UPPER(location) AS location_upper FROM Incidents;

-- 13. Concatenate type and location
SELECT CONCAT(incident_type,' at ',location) AS summary FROM Incidents;

-- 14. Substring of description
SELECT id, SUBSTRING(description,1,30) AS desc_snippet FROM Incidents;

-- 15. Order by date ascending
SELECT * FROM Incidents ORDER BY date ASC;

-- 16. Order by date descending
SELECT * FROM Incidents ORDER BY date DESC;

-- 17. Incidents not resolved
SELECT * FROM Incidents WHERE status<>'Resolved';

-- 18. Incidents with type in ('Poaching','Illegal Logging')
SELECT * FROM Incidents WHERE incident_type IN ('Poaching','Illegal Logging');

-- 19. Count incidents by location
SELECT location, COUNT(*) AS location_count FROM Incidents GROUP BY location;

-- 20. Incidents between 2025-06-01 and 2025-06-10
SELECT * FROM Incidents WHERE date BETWEEN '2025-06-01' AND '2025-06-10';

-- 21. Incident with max description length
SELECT * FROM Incidents WHERE LENGTH(description)=(SELECT MAX(LENGTH(description)) FROM Incidents);

-- 22. Incident with min description length
SELECT * FROM Incidents WHERE LENGTH(description)=(SELECT MIN(LENGTH(description)) FROM Incidents);

-- 23. Average incidents per type
SELECT AVG(count_type) AS avg_incidents FROM (SELECT COUNT(*) AS count_type FROM Incidents GROUP BY incident_type) AS t;

-- 24. Total incidents per reporter
SELECT reported_by, COUNT(*) AS reporter_count FROM Incidents GROUP BY reported_by;

-- 25. Incidents where location starts with 'S'
SELECT * FROM Incidents WHERE location LIKE 'S%';

-- 26. Incidents where location ends with 'Zone D4'
SELECT * FROM Incidents WHERE location LIKE '%Zone D4';

-- 27. Join with RangerAssignments on reported_by = ranger_name
SELECT i.id, i.incident_type, r.zone_assigned, i.status
FROM Incidents i LEFT JOIN RangerAssignments r ON i.reported_by=r.ranger_name;

-- 28. Inner join with RangerAssignments
SELECT i.id, i.reported_by, r.zone_assigned
FROM Incidents i INNER JOIN RangerAssignments r ON i.reported_by=r.ranger_name;

-- 29. Reports by same reporter as id=2
SELECT * FROM Incidents WHERE reported_by=(SELECT reported_by FROM Incidents WHERE id=2);

-- 30. Reports in same location as id=5
SELECT * FROM Incidents WHERE location=(SELECT location FROM Incidents WHERE id=5);

-- 31. Reports with max length description
SELECT * FROM Incidents WHERE LENGTH(description)=(SELECT MAX(LENGTH(description)) FROM Incidents);

-- 32. Reports with min length description
SELECT * FROM Incidents WHERE LENGTH(description)=(SELECT MIN(LENGTH(description)) FROM Incidents);

-- 33. Count incidents by type and status
SELECT incident_type, status, COUNT(*) AS count_incidents FROM Incidents GROUP BY incident_type,status;

-- 34. Reports with type 'Forest Fire' ordered by date
SELECT * FROM Incidents WHERE incident_type='Forest Fire' ORDER BY date DESC;

-- 35. Reports with type 'Poaching' or 'Fence Breach'
SELECT * FROM Incidents WHERE incident_type IN ('Poaching','Fence Breach');

-- 36. Reports with type containing 'Illegal'
SELECT * FROM Incidents WHERE incident_type LIKE '%Illegal%';

-- 37. Reports with status in ('Investigated','Action Taken')
SELECT * FROM Incidents WHERE status IN ('Investigated','Action Taken');

-- 38. Reports with type='Poaching' and status='Investigated'
SELECT * FROM Incidents WHERE incident_type='Poaching' AND status='Investigated';

-- 39. Reports with description length > 40
SELECT * FROM Incidents WHERE LENGTH(description)>40;

-- 40. Reports in June 2025 with status 'Resolved'
SELECT * FROM Incidents WHERE MONTH(date)=6 AND YEAR(date)=2025 AND status='Resolved';

-- 41. Count incidents by reporter where status='Resolved'
SELECT reported_by, COUNT(*) AS resolved_count FROM Incidents WHERE status='Resolved' GROUP BY reported_by;

-- 42. Reports ordered by reported_by ascending
SELECT * FROM Incidents ORDER BY reported_by ASC;

-- 43. Reports ordered by incident_type ascending
SELECT * FROM Incidents ORDER BY incident_type ASC;

-- 44. Reports with description containing 'fire'
SELECT * FROM Incidents WHERE description LIKE '%fire%';

-- 45. User-defined function to classify severity by incident type
DELIMITER //
CREATE FUNCTION incident_severity(type VARCHAR(50))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF type='Forest Fire' OR type='Poaching' THEN RETURN 'High';
  ELSEIF type='Illegal Logging' OR type='Fence Breach' THEN RETURN 'Medium';
  ELSE RETURN 'Low';
  END IF;
END;
//
DELIMITER ;

-- 46. Apply incident_severity function
SELECT id, incident_type, location, incident_severity(incident_type) AS severity FROM Incidents;

-- 47. Reports with date after '2025-06-10'
SELECT * FROM Incidents WHERE date>'2025-06-10';

-- 48. Reports with status not 'Resolved'
SELECT * FROM Incidents WHERE status<>'Resolved';

-- 49. Reports with type='Suspicious Activity' or 'Drone Sighting'
SELECT * FROM Incidents WHERE incident_type IN ('Suspicious Activity','Drone Sighting');

-- 50. Reports with type='Wild Animal Sighting' and status='Monitored'
SELECT * FROM Incidents WHERE incident_type='Wild Animal Sighting' AND status='Monitored';


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

-- 1. Select all ongoing projects
SELECT * FROM ConservationProjects WHERE status = 'Ongoing';

-- 2. Find projects with budget greater than 2 million
SELECT name, budget FROM ConservationProjects WHERE budget > 2000000;

-- 3. Get projects ending in 2025
SELECT name, end_date FROM ConservationProjects WHERE YEAR(end_date) = 2025;

-- 4. Count completed projects
SELECT COUNT(*) AS completed_projects FROM ConservationProjects WHERE status = 'Completed';

-- 5. Find project with maximum budget
SELECT name, budget FROM ConservationProjects WHERE budget = (SELECT MAX(budget) FROM ConservationProjects);

-- 6. Find project with minimum budget
SELECT name, budget FROM ConservationProjects WHERE budget = (SELECT MIN(budget) FROM ConservationProjects);

-- 7. Calculate total budget for ongoing projects
SELECT SUM(budget) AS total_ongoing_budget FROM ConservationProjects WHERE status = 'Ongoing';

-- 8. Average project budget
SELECT AVG(budget) AS avg_budget FROM ConservationProjects;

-- 9. Projects led by scientists with last name starting with 'K'
SELECT * FROM ConservationProjects WHERE lead_scientist LIKE '%K%';

-- 10. Find projects longer than 2 years
SELECT name, DATEDIFF(end_date, start_date) AS duration_days FROM ConservationProjects WHERE DATEDIFF(end_date, start_date) > 730;

-- 11. Sort projects by budget descending
SELECT name, budget FROM ConservationProjects ORDER BY budget DESC;

-- 12. Get top 5 most expensive projects
SELECT name, budget FROM ConservationProjects ORDER BY budget DESC LIMIT 5;

-- 13. Get scientists leading more than one project
SELECT lead_scientist, COUNT(*) AS project_count FROM ConservationProjects GROUP BY lead_scientist HAVING COUNT(*) > 1;

-- 14. Find projects starting in 2023
SELECT * FROM ConservationProjects WHERE YEAR(start_date) = 2023;

-- 15. Get ongoing projects with budget above average
SELECT * FROM ConservationProjects WHERE status = 'Ongoing' AND budget > (SELECT AVG(budget) FROM ConservationProjects);

-- 16. Subquery to list projects with budget above the average of completed projects
SELECT name, budget FROM ConservationProjects WHERE budget > (SELECT AVG(budget) FROM ConservationProjects WHERE status = 'Completed');

-- 17. Find projects not yet completed
SELECT * FROM ConservationProjects WHERE status != 'Completed';

-- 18. Get projects with names containing 'Forest'
SELECT * FROM ConservationProjects WHERE name LIKE '%Forest%';

-- 19. Find earliest started project
SELECT * FROM ConservationProjects ORDER BY start_date ASC LIMIT 1;

-- 20. Find latest started project
SELECT * FROM ConservationProjects ORDER BY start_date DESC LIMIT 1;

-- 21. Count ongoing projects per scientist
SELECT lead_scientist, COUNT(*) AS ongoing_projects FROM ConservationProjects WHERE status = 'Ongoing' GROUP BY lead_scientist;

-- 22. Create user-defined function to calculate project duration in years
CREATE FUNCTION ProjectDurationYears(start_d DATE, end_d DATE) RETURNS INT DETERMINISTIC RETURN TIMESTAMPDIFF(YEAR, start_d, end_d);

-- 23. Use ProjectDurationYears function to display durations
SELECT name, ProjectDurationYears(start_date, end_date) AS duration_years FROM ConservationProjects;

-- 24. Use built-in CONCAT to show project and scientist together
SELECT CONCAT(name, ' - ', lead_scientist) AS project_leader FROM ConservationProjects;

-- 25. Use IF to categorize projects by budget
SELECT name, IF(budget > 2000000, 'High Budget', 'Low Budget') AS budget_category FROM ConservationProjects;

-- 26. Use CASE for budget ranges
SELECT name, CASE WHEN budget > 3000000 THEN 'Very High' WHEN budget > 1000000 THEN 'Medium' ELSE 'Low' END AS budget_level FROM ConservationProjects;

-- 27. Subquery: projects finishing after the latest completed project
SELECT * FROM ConservationProjects WHERE end_date > (SELECT MAX(end_date) FROM ConservationProjects WHERE status='Completed');

-- 28. Find distinct scientist names
SELECT DISTINCT lead_scientist FROM ConservationProjects;

-- 29. Projects with end_date before current date
SELECT * FROM ConservationProjects WHERE end_date < CURDATE();

-- 30. Projects active in 2024
SELECT * FROM ConservationProjects WHERE start_date <= '2024-12-31' AND end_date >= '2024-01-01';

-- 31. Find projects with budget between 1M and 2M
SELECT name, budget FROM ConservationProjects WHERE budget BETWEEN 1000000 AND 2000000;

-- 32. Find projects starting in Q1 of 2023
SELECT * FROM ConservationProjects WHERE YEAR(start_date)=2023 AND QUARTER(start_date)=1;

-- 33. Find month with most project starts
SELECT MONTH(start_date) AS month, COUNT(*) AS count FROM ConservationProjects GROUP BY MONTH(start_date) ORDER BY count DESC LIMIT 1;

-- 34. Count of projects per status
SELECT status, COUNT(*) FROM ConservationProjects GROUP BY status;

-- 35. Create a view of high budget ongoing projects
CREATE VIEW HighBudgetOngoing AS SELECT name, budget, lead_scientist FROM ConservationProjects WHERE status='Ongoing' AND budget>2000000;

-- 36. Query the view
SELECT * FROM HighBudgetOngoing;

-- 37. Inner join with itself to find pairs of projects led by same scientist
SELECT A.name AS project1, B.name AS project2, A.lead_scientist FROM ConservationProjects A INNER JOIN ConservationProjects B ON A.lead_scientist=B.lead_scientist AND A.id<B.id;

-- 38. Left join with itself to list all projects and their overlapping ones
SELECT A.name, B.name AS overlapping_project FROM ConservationProjects A LEFT JOIN ConservationProjects B ON A.lead_scientist=B.lead_scientist AND A.id<>B.id;

-- 39. Subquery to find projects with budget higher than "Project Tiger Revival"
SELECT name, budget FROM ConservationProjects WHERE budget > (SELECT budget FROM ConservationProjects WHERE name='Project Tiger Revival');

-- 40. Subquery to find scientist with maximum project budget
SELECT lead_scientist FROM ConservationProjects WHERE budget = (SELECT MAX(budget) FROM ConservationProjects);

-- 41. Projects ending within 6 months from today
SELECT * FROM ConservationProjects WHERE end_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 6 MONTH);

-- 42. Get length of project names
SELECT name, LENGTH(name) AS name_length FROM ConservationProjects;

-- 43. Extract year from start_date
SELECT name, YEAR(start_date) AS start_year FROM ConservationProjects;

-- 44. Extract month name from end_date
SELECT name, MONTHNAME(end_date) AS end_month FROM ConservationProjects;

-- 45. Use ROUND on average budget
SELECT ROUND(AVG(budget),2) AS avg_budget_rounded FROM ConservationProjects;

-- 46. Find difference in days between today and project end date
SELECT name, DATEDIFF(end_date, CURDATE()) AS days_left FROM ConservationProjects;

-- 47. Get ongoing projects with names in uppercase
SELECT UPPER(name) FROM ConservationProjects WHERE status='Ongoing';

-- 48. Get completed projects with names in lowercase
SELECT LOWER(name) FROM ConservationProjects WHERE status='Completed';

-- 49. Replace word 'Project' in names
SELECT REPLACE(name, 'Project', 'Initiative') FROM ConservationProjects;

-- 50. Find projects where scientist name has more than 10 characters
SELECT * FROM ConservationProjects WHERE LENGTH(lead_scientist) > 10;


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

-- 1. Select all ongoing research activities
SELECT * FROM ResearchActivities WHERE status = 'Ongoing';

-- 2. Get all completed research activities
SELECT * FROM ResearchActivities WHERE status = 'Completed';

-- 3. Count number of ongoing projects
SELECT COUNT(*) AS ongoing_count FROM ResearchActivities WHERE status = 'Ongoing';

-- 4. Find projects that started in 2023
SELECT * FROM ResearchActivities WHERE YEAR(start_date) = 2023;

-- 5. Find projects ending in 2024
SELECT * FROM ResearchActivities WHERE YEAR(end_date) = 2024;

-- 6. Get earliest started research project
SELECT * FROM ResearchActivities ORDER BY start_date ASC LIMIT 1;

-- 7. Get latest started research project
SELECT * FROM ResearchActivities ORDER BY start_date DESC LIMIT 1;

-- 8. Get projects longer than one year
SELECT title, DATEDIFF(end_date, start_date) AS duration_days FROM ResearchActivities WHERE DATEDIFF(end_date, start_date) > 365;

-- 9. List distinct focus areas
SELECT DISTINCT focus_area FROM ResearchActivities;

-- 10. Count projects per focus area
SELECT focus_area, COUNT(*) AS project_count FROM ResearchActivities GROUP BY focus_area;

-- 11. Get average project duration
SELECT AVG(DATEDIFF(end_date, start_date)) AS avg_duration_days FROM ResearchActivities;

-- 12. Get longest project
SELECT title, DATEDIFF(end_date, start_date) AS duration_days FROM ResearchActivities ORDER BY duration_days DESC LIMIT 1;

-- 13. Get shortest project
SELECT title, DATEDIFF(end_date, start_date) AS duration_days FROM ResearchActivities ORDER BY duration_days ASC LIMIT 1;

-- 14. Use subquery to get projects longer than average duration
SELECT title FROM ResearchActivities WHERE DATEDIFF(end_date, start_date) > (SELECT AVG(DATEDIFF(end_date, start_date)) FROM ResearchActivities);

-- 15. Find researchers leading more than one project
SELECT lead_researcher, COUNT(*) FROM ResearchActivities GROUP BY lead_researcher HAVING COUNT(*) > 1;

-- 16. Get ongoing projects for researcher 'Dr. Vikram Joshi'
SELECT * FROM ResearchActivities WHERE lead_researcher = 'Dr. Vikram Joshi' AND status = 'Ongoing';

-- 17. Count completed projects in 2024
SELECT COUNT(*) FROM ResearchActivities WHERE YEAR(end_date) = 2024 AND status='Completed';

-- 18. Projects whose title contains 'Impact'
SELECT * FROM ResearchActivities WHERE title LIKE '%Impact%';

-- 19. Use UPPER on all project titles
SELECT UPPER(title) AS upper_title FROM ResearchActivities;

-- 20. Use LOWER on all focus areas
SELECT LOWER(focus_area) AS lower_focus_area FROM ResearchActivities;

-- 21. Replace word 'Study' with 'Analysis' in titles
SELECT REPLACE(title, 'Study', 'Analysis') AS modified_title FROM ResearchActivities;

-- 22. Use LENGTH to get researcher name lengths
SELECT lead_researcher, LENGTH(lead_researcher) AS name_length FROM ResearchActivities;

-- 23. Use CONCAT to combine title and researcher
SELECT CONCAT(title, ' led by ', lead_researcher) AS project_info FROM ResearchActivities;

-- 24. Use IF to check if project is long term
SELECT title, IF(DATEDIFF(end_date, start_date) > 365, 'Long Term', 'Short Term') AS term_type FROM ResearchActivities;

-- 25. Use CASE for status category
SELECT title, CASE WHEN status='Completed' THEN 'Finished' WHEN status='Ongoing' THEN 'Active' ELSE 'Other' END AS status_label FROM ResearchActivities;

-- 26. Find projects active today
SELECT * FROM ResearchActivities WHERE start_date <= CURDATE() AND end_date >= CURDATE();

-- 27. Projects starting next year
SELECT * FROM ResearchActivities WHERE YEAR(start_date) = YEAR(CURDATE())+1;

-- 28. Get month with most project starts
SELECT MONTH(start_date) AS month, COUNT(*) FROM ResearchActivities GROUP BY MONTH(start_date) ORDER BY COUNT(*) DESC LIMIT 1;

-- 29. Get quarter-wise project counts
SELECT QUARTER(start_date) AS quarter, COUNT(*) FROM ResearchActivities GROUP BY QUARTER(start_date);

-- 30. Create user defined function for project duration in months
CREATE FUNCTION ProjectDurationMonths(start_d DATE, end_d DATE) RETURNS INT DETERMINISTIC RETURN TIMESTAMPDIFF(MONTH, start_d, end_d);

-- 31. Use ProjectDurationMonths function
SELECT title, ProjectDurationMonths(start_date, end_date) AS duration_months FROM ResearchActivities;

-- 32. Use ROUND on average duration months
SELECT ROUND(AVG(ProjectDurationMonths(start_date,end_date)),2) AS avg_duration_months FROM ResearchActivities;

-- 33. Use subquery to get projects ending after max end_date of completed projects
SELECT * FROM ResearchActivities WHERE end_date > (SELECT MAX(end_date) FROM ResearchActivities WHERE status='Completed');

-- 34. Projects with title longer than 30 characters
SELECT * FROM ResearchActivities WHERE LENGTH(title) > 30;

-- 35. Extract year of end_date
SELECT title, YEAR(end_date) AS end_year FROM ResearchActivities;

-- 36. Extract month name of start_date
SELECT title, MONTHNAME(start_date) AS start_month FROM ResearchActivities;

-- 37. Projects ending within 6 months
SELECT * FROM ResearchActivities WHERE end_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 6 MONTH);

-- 38. Count of projects by researcher
SELECT lead_researcher, COUNT(*) FROM ResearchActivities GROUP BY lead_researcher;

-- 39. Subquery to get projects by same researcher as 'Habitat Use by Bengal Tigers'
SELECT * FROM ResearchActivities WHERE lead_researcher = (SELECT lead_researcher FROM ResearchActivities WHERE title='Habitat Use by Bengal Tigers');

-- 40. Find projects with similar focus_area as 'Invasive Species'
SELECT * FROM ResearchActivities WHERE focus_area = (SELECT focus_area FROM ResearchActivities WHERE title='Lantana Invasion Impact Study');

-- 41. Create a view of ongoing ecological projects
CREATE VIEW OngoingEcological AS SELECT * FROM ResearchActivities WHERE status='Ongoing' AND focus_area LIKE '%Ecology%';

-- 42. Select from view OngoingEcological
SELECT * FROM OngoingEcological;

-- 43. Inner join with itself on lead_researcher to find pairs
SELECT A.title AS project1, B.title AS project2, A.lead_researcher FROM ResearchActivities A INNER JOIN ResearchActivities B ON A.lead_researcher=B.lead_researcher AND A.id<B.id;

-- 44. Left join with itself to show all projects with possible overlaps
SELECT A.title, B.title AS other_project FROM ResearchActivities A LEFT JOIN ResearchActivities B ON A.lead_researcher=B.lead_researcher AND A.id<>B.id;

-- 45. Projects ending before 2023
SELECT * FROM ResearchActivities WHERE end_date < '2023-01-01';

-- 46. Projects starting in first half of 2023
SELECT * FROM ResearchActivities WHERE start_date BETWEEN '2023-01-01' AND '2023-06-30';

-- 47. Projects ordered by duration descending
SELECT title, DATEDIFF(end_date,start_date) AS duration FROM ResearchActivities ORDER BY duration DESC;

-- 48. Projects whose findings mention 'carbon'
SELECT * FROM ResearchActivities WHERE findings LIKE '%carbon%';

-- 49. Projects whose findings mention 'migration'
SELECT * FROM ResearchActivities WHERE findings LIKE '%migration%';

-- 50. Find researchers with name length more than 12 characters
SELECT DISTINCT lead_researcher FROM ResearchActivities WHERE LENGTH(lead_researcher) > 12;


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

-- 2. Find visitors who came in June 2025
SELECT visitor_name, visit_date FROM VisitorLogs WHERE MONTH(visit_date) = 6 AND YEAR(visit_date) = 2025;

-- 3. Count total visitors per guide
SELECT guide_name, COUNT(*) AS total_visitors FROM VisitorLogs GROUP BY guide_name;

-- 4. Find the latest visitor log
SELECT * FROM VisitorLogs ORDER BY visit_date DESC LIMIT 1;

-- 5. Find earliest visitor log
SELECT * FROM VisitorLogs ORDER BY visit_date ASC LIMIT 1;

-- 6. Find distinct purposes of visit
SELECT DISTINCT purpose FROM VisitorLogs;

-- 7. Get visitors with feedback containing 'amazing'
SELECT visitor_name, feedback FROM VisitorLogs WHERE feedback LIKE '%amazing%';

-- 8. Count how many visitors gave feedback mentioning 'leopard'
SELECT COUNT(*) FROM VisitorLogs WHERE feedback LIKE '%leopard%';

-- 9. Find guides who conducted more than 2 visits
SELECT guide_name, COUNT(*) FROM VisitorLogs GROUP BY guide_name HAVING COUNT(*) > 2;

-- 10. Get visitors whose name starts with 'A'
SELECT visitor_name FROM VisitorLogs WHERE visitor_name LIKE 'A%';

-- 11. Find the average number of visitors per day
SELECT AVG(visitor_count) 
FROM (SELECT visit_date, COUNT(*) AS visitor_count FROM VisitorLogs GROUP BY visit_date) AS daily_counts;

-- 12. Find the longest feedback text
SELECT visitor_name, LENGTH(feedback) AS feedback_length FROM VisitorLogs ORDER BY feedback_length DESC LIMIT 1;

-- 13. Find the shortest feedback text
SELECT visitor_name, LENGTH(feedback) AS feedback_length FROM VisitorLogs ORDER BY feedback_length ASC LIMIT 1;

-- 14. Get visitors who visited on weekends
SELECT visitor_name, visit_date FROM VisitorLogs WHERE DAYOFWEEK(visit_date) IN (1,7);

-- 15. Count visits per zone
SELECT zone_visited, COUNT(*) AS total_visits FROM VisitorLogs GROUP BY zone_visited;

-- 16. Get the most visited zone
SELECT zone_visited FROM VisitorLogs GROUP BY zone_visited ORDER BY COUNT(*) DESC LIMIT 1;

-- 17. Get the least visited zone
SELECT zone_visited FROM VisitorLogs GROUP BY zone_visited ORDER BY COUNT(*) ASC LIMIT 1;

-- 18. Find visitors who visited multiple times
SELECT visitor_name FROM VisitorLogs GROUP BY visitor_name HAVING COUNT(*) > 1;

-- 19. Subquery to find guides with at least one leisure visit
SELECT DISTINCT guide_name FROM VisitorLogs WHERE guide_name IN (SELECT guide_name FROM VisitorLogs WHERE purpose LIKE '%Leisure%');

-- 20. Find visitors with duplicate contact numbers
SELECT contact, COUNT(*) FROM VisitorLogs GROUP BY contact HAVING COUNT(*) > 1;

-- 21. Create a user defined function to get feedback word count
CREATE FUNCTION FeedbackWordCount(feedback TEXT) RETURNS INT DETERMINISTIC
RETURN LENGTH(feedback) - LENGTH(REPLACE(feedback, ' ', '')) + 1;

-- 22. Use the FeedbackWordCount function
SELECT visitor_name, FeedbackWordCount(feedback) AS words FROM VisitorLogs;

-- 23. Built-in function to get day name of visit
SELECT visitor_name, DAYNAME(visit_date) AS day_of_visit FROM VisitorLogs;

-- 24. Built-in function to extract year of visit
SELECT visitor_name, YEAR(visit_date) AS visit_year FROM VisitorLogs;

-- 25. Get feedback in uppercase
SELECT visitor_name, UPPER(feedback) FROM VisitorLogs;

-- 26. Get feedback in lowercase
SELECT visitor_name, LOWER(feedback) FROM VisitorLogs;

-- 27. Concatenate visitor name and guide name
SELECT CONCAT(visitor_name, ' guided by ', guide_name) AS visit_details FROM VisitorLogs;

-- 28. Count total visitors per purpose
SELECT purpose, COUNT(*) FROM VisitorLogs GROUP BY purpose;

-- 29. Get visitors who came in the second week of June
SELECT visitor_name, visit_date FROM VisitorLogs WHERE WEEK(visit_date) = WEEK('2025-06-07');

-- 30. Get visitor with the longest name
SELECT visitor_name, LENGTH(visitor_name) AS name_length FROM VisitorLogs ORDER BY name_length DESC LIMIT 1;

-- 31. Get visitor with the shortest name
SELECT visitor_name, LENGTH(visitor_name) AS name_length FROM VisitorLogs ORDER BY name_length ASC LIMIT 1;

-- 32. Find all visitors guided by 'Ravi Sharma'
SELECT visitor_name FROM VisitorLogs WHERE guide_name = 'Ravi Sharma';

-- 33. Find all zones visited by 'Sneha Patil'
SELECT zone_visited FROM VisitorLogs WHERE visitor_name = 'Sneha Patil';

-- 34. Subquery to find visitors who visited the same zone as 'Amit Joshi'
SELECT visitor_name FROM VisitorLogs WHERE zone_visited = (SELECT zone_visited FROM VisitorLogs WHERE visitor_name = 'Amit Joshi');

-- 35. Subquery to find guides who had visits in 'June 2025'
SELECT DISTINCT guide_name FROM VisitorLogs WHERE id IN (SELECT id FROM VisitorLogs WHERE MONTH(visit_date) = 6 AND YEAR(visit_date)=2025);

-- 36. Find the number of feedbacks containing the word 'great'
SELECT COUNT(*) FROM VisitorLogs WHERE feedback LIKE '%great%';

-- 37. Find average feedback length per guide
SELECT guide_name, AVG(LENGTH(feedback)) AS avg_length FROM VisitorLogs GROUP BY guide_name;

-- 38. Find guides with more than one unique purpose handled
SELECT guide_name, COUNT(DISTINCT purpose) FROM VisitorLogs GROUP BY guide_name HAVING COUNT(DISTINCT purpose) > 1;

-- 39. Subquery to find the most common purpose
SELECT purpose FROM VisitorLogs GROUP BY purpose ORDER BY COUNT(*) DESC LIMIT 1;

-- 40. Subquery to find the least common purpose
SELECT purpose FROM VisitorLogs GROUP BY purpose ORDER BY COUNT(*) ASC LIMIT 1;

-- 41. Built-in function to find month name of visit
SELECT visitor_name, MONTHNAME(visit_date) FROM VisitorLogs;

-- 42. Find duplicate visitor names
SELECT visitor_name, COUNT(*) FROM VisitorLogs GROUP BY visitor_name HAVING COUNT(*) > 1;

-- 43. Create function to calculate visit year difference
CREATE FUNCTION VisitYearDiff(start_date DATE, end_date DATE) RETURNS INT DETERMINISTIC
RETURN YEAR(end_date) - YEAR(start_date);

-- 44. Use VisitYearDiff to calculate years between first and last record dates
SELECT VisitYearDiff(MIN(visit_date), MAX(visit_date)) AS year_difference FROM VisitorLogs;

-- 45. Find visitors whose feedback length is above average
SELECT visitor_name, LENGTH(feedback) AS length FROM VisitorLogs WHERE LENGTH(feedback) > (SELECT AVG(LENGTH(feedback)) FROM VisitorLogs);

-- 46. Find the guide who got the longest feedback
SELECT guide_name, feedback FROM VisitorLogs ORDER BY LENGTH(feedback) DESC LIMIT 1;

-- 47. Find the guide who got the shortest feedback
SELECT guide_name, feedback FROM VisitorLogs ORDER BY LENGTH(feedback) ASC LIMIT 1;

-- 48. Use LEFT function to extract first 5 characters of visitor name
SELECT visitor_name, LEFT(visitor_name,5) FROM VisitorLogs;

-- 49. Use RIGHT function to extract last 3 characters of contact
SELECT contact, RIGHT(contact,3) FROM VisitorLogs;

-- 50. Find total visitors with contact starting with '98'
SELECT COUNT(*) FROM VisitorLogs WHERE contact LIKE '98%';


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

-- 2. Find all active permits
SELECT issued_to, permit_type FROM PermitsIssued WHERE status = 'Active';

-- 3. Count permits by type
SELECT permit_type, COUNT(*) AS total_permits FROM PermitsIssued GROUP BY permit_type;

-- 4. Find the latest issued permit
SELECT * FROM PermitsIssued ORDER BY issue_date DESC LIMIT 1;

-- 5. Find the earliest issued permit
SELECT * FROM PermitsIssued ORDER BY issue_date ASC LIMIT 1;

-- 6. Find permits that are expired
SELECT issued_to, permit_type FROM PermitsIssued WHERE status = 'Expired';

-- 7. Find permits that are upcoming
SELECT issued_to, permit_type FROM PermitsIssued WHERE status = 'Upcoming';

-- 8. Find permits that are completed
SELECT issued_to, permit_type FROM PermitsIssued WHERE status = 'Completed';

-- 9. Find distinct permit purposes
SELECT DISTINCT purpose FROM PermitsIssued;

-- 10. Count permits issued by each officer
SELECT issuing_officer, COUNT(*) AS total FROM PermitsIssued GROUP BY issuing_officer;

-- 11. Get the officer who issued the most permits
SELECT issuing_officer FROM PermitsIssued GROUP BY issuing_officer ORDER BY COUNT(*) DESC LIMIT 1;

-- 12. Get the officer who issued the least permits
SELECT issuing_officer FROM PermitsIssued GROUP BY issuing_officer ORDER BY COUNT(*) ASC LIMIT 1;

-- 13. Find permits issued in June 2025
SELECT issued_to, permit_type FROM PermitsIssued WHERE MONTH(issue_date) = 6 AND YEAR(issue_date) = 2025;

-- 14. Find permits expiring in June 2025
SELECT issued_to, permit_type FROM PermitsIssued WHERE MONTH(expiry_date) = 6 AND YEAR(expiry_date) = 2025;

-- 15. Find longest permit duration
SELECT issued_to, DATEDIFF(expiry_date, issue_date) AS duration FROM PermitsIssued ORDER BY duration DESC LIMIT 1;

-- 16. Find shortest permit duration
SELECT issued_to, DATEDIFF(expiry_date, issue_date) AS duration FROM PermitsIssued ORDER BY duration ASC LIMIT 1;

-- 17. Average duration of permits
SELECT AVG(DATEDIFF(expiry_date, issue_date)) AS avg_duration FROM PermitsIssued;

-- 18. Subquery to find permits longer than average duration
SELECT issued_to, permit_type FROM PermitsIssued WHERE DATEDIFF(expiry_date, issue_date) > (SELECT AVG(DATEDIFF(expiry_date, issue_date)) FROM PermitsIssued);

-- 19. Find permits issued to individuals containing 'Dr.'
SELECT issued_to FROM PermitsIssued WHERE issued_to LIKE 'Dr.%';

-- 20. Count number of research permits
SELECT COUNT(*) FROM PermitsIssued WHERE permit_type = 'Research';

-- 21. Subquery to find all permit holders with active permits
SELECT issued_to FROM PermitsIssued WHERE id IN (SELECT id FROM PermitsIssued WHERE status = 'Active');

-- 22. Built-in function to extract year of issue
SELECT issued_to, YEAR(issue_date) AS issue_year FROM PermitsIssued;

-- 23. Built-in function to extract month name of expiry
SELECT issued_to, MONTHNAME(expiry_date) AS expiry_month FROM PermitsIssued;

-- 24. Find permits with issue_date on weekend
SELECT issued_to, issue_date FROM PermitsIssued WHERE DAYOFWEEK(issue_date) IN (1,7);

-- 25. Find permits with expiry_date on weekend
SELECT issued_to, expiry_date FROM PermitsIssued WHERE DAYOFWEEK(expiry_date) IN (1,7);

-- 26. Concatenate permit holder and purpose
SELECT CONCAT(issued_to, ' - ', purpose) AS permit_info FROM PermitsIssued;

-- 27. Uppercase permit type
SELECT UPPER(permit_type) FROM PermitsIssued;

-- 28. Lowercase issuing officer
SELECT LOWER(issuing_officer) FROM PermitsIssued;

-- 29. Length of purpose description
SELECT issued_to, LENGTH(purpose) AS purpose_length FROM PermitsIssued;

-- 30. Find permit with the longest purpose description
SELECT issued_to, purpose FROM PermitsIssued ORDER BY LENGTH(purpose) DESC LIMIT 1;

-- 31. Find permit with the shortest purpose description
SELECT issued_to, purpose FROM PermitsIssued ORDER BY LENGTH(purpose) ASC LIMIT 1;

-- 32. Find duplicate issued_to entries
SELECT issued_to, COUNT(*) FROM PermitsIssued GROUP BY issued_to HAVING COUNT(*) > 1;

-- 33. Count permits expiring in 2025
SELECT COUNT(*) FROM PermitsIssued WHERE YEAR(expiry_date) = 2025;

-- 34. Count permits issued in 2025
SELECT COUNT(*) FROM PermitsIssued WHERE YEAR(issue_date) = 2025;

-- 35. Subquery to find permit holders with both active and completed permits
SELECT DISTINCT issued_to FROM PermitsIssued WHERE issued_to IN (SELECT issued_to FROM PermitsIssued WHERE status = 'Active') AND issued_to IN (SELECT issued_to FROM PermitsIssued WHERE status = 'Completed');

-- 36. Find all expired permits shorter than 30 days
SELECT issued_to, permit_type FROM PermitsIssued WHERE status = 'Expired' AND DATEDIFF(expiry_date, issue_date) < 30;

-- 37. Find all active permits longer than 200 days
SELECT issued_to, permit_type FROM PermitsIssued WHERE status = 'Active' AND DATEDIFF(expiry_date, issue_date) > 200;

-- 38. Count distinct permit statuses
SELECT COUNT(DISTINCT status) FROM PermitsIssued;

-- 39. Group permits by status
SELECT status, COUNT(*) FROM PermitsIssued GROUP BY status;

-- 40. Get permits issued by 'Ravi Sharma'
SELECT * FROM PermitsIssued WHERE issuing_officer = 'Ravi Sharma';

-- 41. Subquery to find the officer who issued photography permits
SELECT issuing_officer FROM PermitsIssued WHERE permit_type = 'Photography';

-- 42. Find permits that overlap with June 2025
SELECT issued_to, permit_type FROM PermitsIssued WHERE issue_date <= '2025-06-30' AND expiry_date >= '2025-06-01';

-- 43. Create a user defined function to calculate permit duration
CREATE FUNCTION PermitDuration(start_date DATE, end_date DATE) RETURNS INT DETERMINISTIC
RETURN DATEDIFF(end_date, start_date);

-- 44. Use the PermitDuration function
SELECT issued_to, PermitDuration(issue_date, expiry_date) AS duration FROM PermitsIssued;

-- 45. Create a user defined function to check if a permit is long-term
CREATE FUNCTION IsLongTerm(start_date DATE, end_date DATE) RETURNS VARCHAR(10) DETERMINISTIC
RETURN IF(DATEDIFF(end_date, start_date) > 180, 'Yes', 'No');

-- 46. Use IsLongTerm to classify permits
SELECT issued_to, IsLongTerm(issue_date, expiry_date) AS long_term FROM PermitsIssued;

-- 47. Use LEFT function to extract first 5 characters of issued_to
SELECT issued_to, LEFT(issued_to,5) FROM PermitsIssued;

-- 48. Use RIGHT function to extract last 3 characters of officer name
SELECT issuing_officer, RIGHT(issuing_officer,3) FROM PermitsIssued;

-- 49. Subquery to find permits issued by the officer who issued the earliest permit
SELECT * FROM PermitsIssued WHERE issuing_officer = (SELECT issuing_officer FROM PermitsIssued ORDER BY issue_date ASC LIMIT 1);

-- 50. Subquery to find permits issued by the officer who issued the latest permit
SELECT * FROM PermitsIssued WHERE issuing_officer = (SELECT issuing_officer FROM PermitsIssued ORDER BY issue_date DESC LIMIT 1);


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

-- 1. Select all fire reports
SELECT * FROM FireReports;

-- 2. Resolved reports
SELECT * FROM FireReports WHERE status='Resolved';

-- 3. Reports by 'Ravi Sharma'
SELECT * FROM FireReports WHERE reported_by='Ravi Sharma';

-- 4. Reports in 'Kanha Zone C3'
SELECT * FROM FireReports WHERE location='Kanha Zone C3';

-- 5. Reports with area affected > 3
SELECT * FROM FireReports WHERE area_affected>3;

-- 6. Reports with area affected < 1
SELECT * FROM FireReports WHERE area_affected<1;

-- 7. Count of all fire reports
SELECT COUNT(*) AS total_reports FROM FireReports;

-- 8. Count by status
SELECT status, COUNT(*) AS count_status FROM FireReports GROUP BY status;

-- 9. Count by cause
SELECT cause, COUNT(*) AS count_cause FROM FireReports GROUP BY cause;

-- 10. Reports in March 2025
SELECT * FROM FireReports WHERE MONTH(report_date)=3 AND YEAR(report_date)=2025;

-- 11. Upper case location
SELECT UPPER(location) AS location_upper FROM FireReports;

-- 12. Concatenate location and cause
SELECT CONCAT(location,' - ',cause) AS report_summary FROM FireReports;

-- 13. Substring of action_taken
SELECT id, SUBSTRING(action_taken,1,20) AS action_snippet FROM FireReports;

-- 14. Order by area_affected descending
SELECT * FROM FireReports ORDER BY area_affected DESC;

-- 15. Order by report_date ascending
SELECT * FROM FireReports ORDER BY report_date ASC;

-- 16. Reports not resolved
SELECT * FROM FireReports WHERE status<>'Resolved';

-- 17. Reports with cause in ('Lightning strike','Dry leaves & wind')
SELECT * FROM FireReports WHERE cause IN ('Lightning strike','Dry leaves & wind');

-- 18. Count reports by location
SELECT location, COUNT(*) AS count_location FROM FireReports GROUP BY location;

-- 19. Reports with area between 1 and 3
SELECT * FROM FireReports WHERE area_affected BETWEEN 1 AND 3;

-- 20. Report with max area affected
SELECT * FROM FireReports WHERE area_affected=(SELECT MAX(area_affected) FROM FireReports);

-- 21. Report with min area affected
SELECT * FROM FireReports WHERE area_affected=(SELECT MIN(area_affected) FROM FireReports);

-- 22. Average area affected
SELECT AVG(area_affected) AS avg_area FROM FireReports;

-- 23. Total area affected
SELECT SUM(area_affected) AS total_area FROM FireReports;

-- 24. Reports by cause 'Campfire left unattended' or 'Illegal burning'
SELECT * FROM FireReports WHERE cause IN ('Campfire left unattended','Illegal burning');

-- 25. Reports excluding 'Unknown - under inquiry'
SELECT * FROM FireReports WHERE cause<>'Unknown - under inquiry';

-- 26. Join with RangerAssignments on reported_by = ranger_name
SELECT f.id, f.location, r.zone_assigned, f.status
FROM FireReports f LEFT JOIN RangerAssignments r ON f.reported_by=r.ranger_name;

-- 27. Inner join with RangerAssignments
SELECT f.id, f.reported_by, r.zone_assigned
FROM FireReports f INNER JOIN RangerAssignments r ON f.reported_by=r.ranger_name;

-- 28. Reports with location starting with 'S'
SELECT * FROM FireReports WHERE location LIKE 'S%';

-- 29. Reports with location ending with 'Zone D4'
SELECT * FROM FireReports WHERE location LIKE '%Zone D4';

-- 30. Count by reported_by
SELECT reported_by, COUNT(*) AS reports_count FROM FireReports GROUP BY reported_by;

-- 31. Count by cause
SELECT cause, COUNT(*) AS cause_count FROM FireReports GROUP BY cause;

-- 32. Reports with area > average area
SELECT * FROM FireReports WHERE area_affected>(SELECT AVG(area_affected) FROM FireReports);

-- 33. Reports with area < average area
SELECT * FROM FireReports WHERE area_affected<(SELECT AVG(area_affected) FROM FireReports);

-- 34. Reports with max area
SELECT * FROM FireReports WHERE area_affected=(SELECT MAX(area_affected) FROM FireReports);

-- 35. Reports with min area
SELECT * FROM FireReports WHERE area_affected=(SELECT MIN(area_affected) FROM FireReports);

-- 36. Reports in March 2025 with status 'Resolved'
SELECT * FROM FireReports WHERE MONTH(report_date)=3 AND YEAR(report_date)=2025 AND status='Resolved';

-- 37. Reports with cause 'Illegal burning' or 'Poacher activity'
SELECT * FROM FireReports WHERE cause IN ('Illegal burning','Poacher activity');

-- 38. Reports with area between 1.5 and 4
SELECT * FROM FireReports WHERE area_affected BETWEEN 1.5 AND 4;

-- 39. Subquery: reports in same location as id=5
SELECT * FROM FireReports WHERE location=(SELECT location FROM FireReports WHERE id=5);

-- 40. Subquery: reports by same reporter as id=3
SELECT * FROM FireReports WHERE reported_by=(SELECT reported_by FROM FireReports WHERE id=3);

-- 41. Reports ordered by reported_by ascending
SELECT * FROM FireReports ORDER BY reported_by ASC;

-- 42. Reports ordered by area descending
SELECT * FROM FireReports ORDER BY area_affected DESC;

-- 43. Reports with location length >12
SELECT * FROM FireReports WHERE LENGTH(location)>12;

-- 44. Reports with max area affected
SELECT * FROM FireReports WHERE area_affected=(SELECT MAX(area_affected) FROM FireReports);

-- 45. User-defined function to classify severity
DELIMITER //
CREATE FUNCTION severity_class(area FLOAT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF area>5 THEN RETURN 'High';
  ELSEIF area BETWEEN 2 AND 5 THEN RETURN 'Medium';
  ELSE RETURN 'Low';
  END IF;
END;
//
DELIMITER ;

-- 46. Apply severity_class function
SELECT id, location, area_affected, severity_class(area_affected) AS severity FROM FireReports;

-- 47. Reports with status 'Investigating' or 'Under Control'
SELECT * FROM FireReports WHERE status IN ('Investigating','Under Control');

-- 48. Reports with area>2 and cause containing 'Dry'
SELECT * FROM FireReports WHERE area_affected>2 AND cause LIKE '%Dry%';

-- 49. Reports with cause 'Lightning strike' ordered by area descending
SELECT * FROM FireReports WHERE cause='Lightning strike' ORDER BY area_affected DESC;

-- 50. Reports with cause 'Campfire mishap' or 'Cigarette butt' and status 'Resolved'
SELECT * FROM FireReports WHERE cause IN ('Campfire mishap','Cigarette butt') AND status='Resolved';


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

-- 3. Water bodies with 'Good' water quality
SELECT * FROM WaterBodies WHERE water_quality='Good';

-- 4. Water bodies of type 'Lake'
SELECT * FROM WaterBodies WHERE type='Lake';

-- 5. Water bodies with area >5
SELECT * FROM WaterBodies WHERE area>5;

-- 6. Water bodies with depth <2
SELECT * FROM WaterBodies WHERE depth<2;

-- 7. Count of all water bodies
SELECT COUNT(*) AS total_bodies FROM WaterBodies;

-- 8. Count by type
SELECT type, COUNT(*) AS count_per_type FROM WaterBodies GROUP BY type;

-- 9. Count by status
SELECT status, COUNT(*) AS count_per_status FROM WaterBodies GROUP BY status;

-- 10. Water bodies in location containing 'Zone'
SELECT * FROM WaterBodies WHERE location LIKE '%Zone%';

-- 11. Upper case names
SELECT UPPER(name) AS name_upper FROM WaterBodies;

-- 12. Concatenate name and type
SELECT CONCAT(name,' (',type,')') AS full_name FROM WaterBodies;

-- 13. Substring of location
SELECT id, SUBSTRING(location,1,10) AS location_snippet FROM WaterBodies;

-- 14. Order by area descending
SELECT * FROM WaterBodies ORDER BY area DESC;

-- 15. Order by depth ascending
SELECT * FROM WaterBodies ORDER BY depth ASC;

-- 16. Water bodies with status not 'Active'
SELECT * FROM WaterBodies WHERE status<>'Active';

-- 17. Water bodies with water_quality in ('Good','Excellent')
SELECT * FROM WaterBodies WHERE water_quality IN ('Good','Excellent');

-- 18. Count water bodies with type 'Stream'
SELECT COUNT(*) AS stream_count FROM WaterBodies WHERE type='Stream';

-- 19. Water bodies with area between 1 and 5
SELECT * FROM WaterBodies WHERE area BETWEEN 1 AND 5;

-- 20. Max depth water body
SELECT * FROM WaterBodies WHERE depth=(SELECT MAX(depth) FROM WaterBodies);

-- 21. Min depth water body
SELECT * FROM WaterBodies WHERE depth=(SELECT MIN(depth) FROM WaterBodies);

-- 22. Average area
SELECT AVG(area) AS avg_area FROM WaterBodies;

-- 23. Total area
SELECT SUM(area) AS total_area FROM WaterBodies;

-- 24. Water bodies with 'Lake' or 'Pond'
SELECT * FROM WaterBodies WHERE type IN ('Lake','Pond');

-- 25. Water bodies excluding 'River'
SELECT * FROM WaterBodies WHERE type<>'River';

-- 26. Join with Nurseries table on similar zone in location
SELECT w.name AS water_name, n.name AS nursery_name, w.location
FROM WaterBodies w LEFT JOIN Nurseries n ON w.location LIKE CONCAT('%', n.location, '%');

-- 27. Inner join with Nurseries
SELECT w.name AS water_name, n.name AS nursery_name
FROM WaterBodies w INNER JOIN Nurseries n ON w.location LIKE CONCAT('%', n.location, '%');

-- 28. Water bodies with name starting with 'S'
SELECT * FROM WaterBodies WHERE name LIKE 'S%';

-- 29. Water bodies with name ending with 'Lake'
SELECT * FROM WaterBodies WHERE name LIKE '%Lake';

-- 30. Count water bodies per status
SELECT status, COUNT(*) AS count_status FROM WaterBodies GROUP BY status;

-- 31. Count water bodies per water_quality
SELECT water_quality, COUNT(*) AS count_quality FROM WaterBodies GROUP BY water_quality;

-- 32. Water bodies with area>average area
SELECT * FROM WaterBodies WHERE area>(SELECT AVG(area) FROM WaterBodies);

-- 33. Water bodies with depth<average depth
SELECT * FROM WaterBodies WHERE depth<(SELECT AVG(depth) FROM WaterBodies);

-- 34. Water bodies with area=max area
SELECT * FROM WaterBodies WHERE area=(SELECT MAX(area) FROM WaterBodies);

-- 35. Water bodies with depth=min depth
SELECT * FROM WaterBodies WHERE depth=(SELECT MIN(depth) FROM WaterBodies);

-- 36. Water bodies with type 'Wetland' and status 'Active'
SELECT * FROM WaterBodies WHERE type='Wetland' AND status='Active';

-- 37. Water bodies with type 'Stream' or 'River'
SELECT * FROM WaterBodies WHERE type IN ('Stream','River');

-- 38. Water bodies with depth between 1 and 5
SELECT * FROM WaterBodies WHERE depth BETWEEN 1 AND 5;

-- 39. Subquery: water bodies with same type as id=3
SELECT * FROM WaterBodies WHERE type=(SELECT type FROM WaterBodies WHERE id=3);

-- 40. Subquery: water bodies with same status as id=5
SELECT * FROM WaterBodies WHERE status=(SELECT status FROM WaterBodies WHERE id=5);

-- 41. Water bodies ordered by name ascending
SELECT * FROM WaterBodies ORDER BY name ASC;

-- 42. Water bodies ordered by water_quality descending
SELECT * FROM WaterBodies ORDER BY water_quality DESC;

-- 43. Water bodies with name length>8
SELECT * FROM WaterBodies WHERE LENGTH(name)>8;

-- 44. Subquery: water bodies with max area
SELECT * FROM WaterBodies WHERE area=(SELECT MAX(area) FROM WaterBodies);

-- 45. User-defined function to classify water quality
DELIMITER //
CREATE FUNCTION quality_category(q VARCHAR(50))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF q='Excellent' THEN RETURN 'High';
  ELSEIF q='Good' THEN RETURN 'Medium';
  ELSE RETURN 'Low';
  END IF;
END;
//
DELIMITER ;

-- 46. Apply quality_category function
SELECT id, name, water_quality, quality_category(water_quality) AS quality_class FROM WaterBodies;

-- 47. Water bodies with status 'Seasonal' or 'Flowing'
SELECT * FROM WaterBodies WHERE status IN ('Seasonal','Flowing');

-- 48. Water bodies with area>5 and depth>5
SELECT * FROM WaterBodies WHERE area>5 AND depth>5;

-- 49. Water bodies with type 'Reservoir' ordered by area descending
SELECT * FROM WaterBodies WHERE type='Reservoir' ORDER BY area DESC;

-- 50. Water bodies with type 'Tank' or 'Pond' and water_quality 'Good'
SELECT * FROM WaterBodies WHERE type IN ('Tank','Pond') AND water_quality='Good';


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

-- 3. Protected or Cultivated species
SELECT * FROM TreeSpecies WHERE status IN ('Protected','Cultivated');

-- 4. Tree species with slow growth
SELECT * FROM TreeSpecies WHERE growth_rate='Slow';

-- 5. Tree species native to 'Eastern India'
SELECT * FROM TreeSpecies WHERE native_region='Eastern India';

-- 6. Count of all tree species
SELECT COUNT(*) AS total_species FROM TreeSpecies;

-- 7. Count species per conservation status
SELECT conservation_status, COUNT(*) AS count_per_status FROM TreeSpecies GROUP BY conservation_status;

-- 8. Species with name starting with 'B'
SELECT * FROM TreeSpecies WHERE name LIKE 'B%';

-- 9. Species with name ending with 'wood'
SELECT * FROM TreeSpecies WHERE name LIKE '%wood';

-- 10. Species with name length >5
SELECT * FROM TreeSpecies WHERE LENGTH(name)>5;

-- 11. Upper case scientific names
SELECT UPPER(scientific_name) AS sci_upper FROM TreeSpecies;

-- 12. Concatenate name and scientific name
SELECT CONCAT(name,' (',scientific_name,')') AS full_name FROM TreeSpecies;

-- 13. Substring of common uses
SELECT id, SUBSTRING(common_uses,1,20) AS usage_snippet FROM TreeSpecies;

-- 14. Species ordered by name ascending
SELECT * FROM TreeSpecies ORDER BY name ASC;

-- 15. Species ordered by growth_rate descending
SELECT * FROM TreeSpecies ORDER BY growth_rate DESC;

-- 16. Tree species with 'medicine' in common uses
SELECT * FROM TreeSpecies WHERE common_uses LIKE '%medicine%';

-- 17. Species whose native region contains 'India'
SELECT * FROM TreeSpecies WHERE native_region LIKE '%India%';

-- 18. Count species per growth_rate
SELECT growth_rate, COUNT(*) AS count_per_growth FROM TreeSpecies GROUP BY growth_rate;

-- 19. Species with status not Active
SELECT * FROM TreeSpecies WHERE status<>'Active';

-- 20. Species with name containing 'Rose'
SELECT * FROM TreeSpecies WHERE name LIKE '%Rose%';

-- 21. Subquery: species with same growth rate as id=1
SELECT * FROM TreeSpecies WHERE growth_rate=(SELECT growth_rate FROM TreeSpecies WHERE id=1);

-- 22. Subquery: species in same native region as id=5
SELECT * FROM TreeSpecies WHERE native_region=(SELECT native_region FROM TreeSpecies WHERE id=5);

-- 23. Subquery: species with max id
SELECT * FROM TreeSpecies WHERE id=(SELECT MAX(id) FROM TreeSpecies);

-- 24. Species with conservation_status='Vulnerable'
SELECT * FROM TreeSpecies WHERE conservation_status='Vulnerable';

-- 25. Species grouped by conservation_status
SELECT conservation_status, COUNT(*) AS count_per_status FROM TreeSpecies GROUP BY conservation_status;

-- 26. Species grouped by growth_rate
SELECT growth_rate, COUNT(*) AS count_per_growth FROM TreeSpecies GROUP BY growth_rate;

-- 27. Species with growth_rate Fast or Very Fast
SELECT * FROM TreeSpecies WHERE growth_rate IN ('Fast','Very Fast');

-- 28. Species excluding 'Teak'
SELECT * FROM TreeSpecies WHERE name<>'Teak';

-- 29. Species with description containing 'Furniture'
SELECT * FROM TreeSpecies WHERE common_uses LIKE '%Furniture%';

-- 30. Join with Nurseries table on native_region similar to location
SELECT t.name AS tree_name, n.name AS nursery_name, n.location
FROM TreeSpecies t LEFT JOIN Nurseries n ON t.native_region LIKE CONCAT('%', n.location, '%');

-- 31. Inner join example
SELECT t.name AS tree_name, n.name AS nursery_name
FROM TreeSpecies t INNER JOIN Nurseries n ON t.native_region LIKE CONCAT('%', n.location, '%');

-- 32. Species with id in (1,2,3)
SELECT * FROM TreeSpecies WHERE id IN (1,2,3);

-- 33. Species with id not in (5,10)
SELECT * FROM TreeSpecies WHERE id NOT IN (5,10);

-- 34. Count species per native region
SELECT native_region, COUNT(*) AS count_per_region FROM TreeSpecies GROUP BY native_region;

-- 35. Species with name length >6
SELECT * FROM TreeSpecies WHERE LENGTH(name)>6;

-- 36. Species with status Active and growth_rate Fast
SELECT * FROM TreeSpecies WHERE status='Active' AND growth_rate='Fast';

-- 37. Species with name starting with 'A' or 'B'
SELECT * FROM TreeSpecies WHERE name LIKE 'A%' OR name LIKE 'B%';

-- 38. Species with common_uses containing 'shade'
SELECT * FROM TreeSpecies WHERE common_uses LIKE '%shade%';

-- 39. Subquery: species with same conservation_status as id=3
SELECT * FROM TreeSpecies WHERE conservation_status=(SELECT conservation_status FROM TreeSpecies WHERE id=3);

-- 40. Species with growth_rate=Slow and status=Protected
SELECT * FROM TreeSpecies WHERE growth_rate='Slow' AND status='Protected';

-- 41. Species grouped by status
SELECT status, COUNT(*) AS count_per_status FROM TreeSpecies GROUP BY status;

-- 42. Species with growth_rate not 'Medium'
SELECT * FROM TreeSpecies WHERE growth_rate<>'Medium';

-- 43. Subquery: species with name length = max length
SELECT * FROM TreeSpecies WHERE LENGTH(name)=(SELECT MAX(LENGTH(name)) FROM TreeSpecies);

-- 44. Species containing 'Ficus' in scientific name
SELECT * FROM TreeSpecies WHERE scientific_name LIKE '%Ficus%';

-- 45. User-defined function: classify growth rate
DELIMITER //
CREATE FUNCTION growth_category(rate VARCHAR(50))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF rate='Very Fast' OR rate='Fast' THEN RETURN 'Rapid';
  ELSEIF rate='Medium' THEN RETURN 'Moderate';
  ELSE RETURN 'Slow';
  END IF;
END;
//
DELIMITER ;

-- 46. Apply growth_category function
SELECT id, name, growth_rate, growth_category(growth_rate) AS growth_class FROM TreeSpecies;

-- 47. Species with status Active and conservation_status='Least Concern'
SELECT * FROM TreeSpecies WHERE status='Active' AND conservation_status='Least Concern';

-- 48. Species with name containing 'Neem' or 'Banyan'
SELECT * FROM TreeSpecies WHERE name LIKE '%Neem%' OR name LIKE '%Banyan%';

-- 49. Species ordered by name descending
SELECT * FROM TreeSpecies ORDER BY name DESC;

-- 50. Species ordered by conservation_status ascending
SELECT * FROM TreeSpecies ORDER BY conservation_status ASC;


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

-- 2. Active nurseries
SELECT * FROM Nurseries WHERE status='Active';

-- 3. Nurseries with capacity >15000
SELECT * FROM Nurseries WHERE capacity>15000;

-- 4. Nurseries established after 2015
SELECT * FROM Nurseries WHERE established_date>'2015-01-01';

-- 5. Nurseries managed by 'Ravi Sharma'
SELECT * FROM Nurseries WHERE manager='Ravi Sharma';

-- 6. Count total nurseries
SELECT COUNT(*) AS total_nurseries FROM Nurseries;

-- 7. Sum of capacities
SELECT SUM(capacity) AS total_capacity FROM Nurseries;

-- 8. Average capacity
SELECT AVG(capacity) AS avg_capacity FROM Nurseries;

-- 9. Maximum capacity
SELECT MAX(capacity) AS max_capacity FROM Nurseries;

-- 10. Minimum capacity
SELECT MIN(capacity) AS min_capacity FROM Nurseries;

-- 11. Nurseries grouped by manager
SELECT manager, COUNT(*) AS count_per_manager FROM Nurseries GROUP BY manager;

-- 12. Nurseries grouped by status
SELECT status, COUNT(*) AS count_per_status FROM Nurseries GROUP BY status;

-- 13. Nurseries in zones containing 'Zone A'
SELECT * FROM Nurseries WHERE location LIKE '%Zone A%';

-- 14. Nurseries in zones starting with 'Kanha'
SELECT * FROM Nurseries WHERE location LIKE 'Kanha%';

-- 15. Nurseries ordered by capacity descending
SELECT * FROM Nurseries ORDER BY capacity DESC;

-- 16. Nurseries ordered by established_date ascending
SELECT * FROM Nurseries ORDER BY established_date ASC;

-- 17. Substring of nursery names
SELECT id, SUBSTRING(name,1,5) AS short_name FROM Nurseries;

-- 18. Upper case nursery names
SELECT UPPER(name) AS nursery_upper FROM Nurseries;

-- 19. Length of nursery description
SELECT id, LENGTH(description) AS desc_length FROM Nurseries;

-- 20. Concatenate name and location
SELECT CONCAT(name,' - ',location) AS name_location FROM Nurseries;

-- 21. Nurseries with capacity between 10000 and 15000
SELECT * FROM Nurseries WHERE capacity BETWEEN 10000 AND 15000;

-- 22. Nurseries excluding Zone T15
SELECT * FROM Nurseries WHERE location<>'Sariska Zone T15';

-- 23. Subquery: nurseries managed by same person as id=2
SELECT * FROM Nurseries WHERE manager=(SELECT manager FROM Nurseries WHERE id=2);

-- 24. Subquery: nurseries in same location as id=5
SELECT * FROM Nurseries WHERE location=(SELECT location FROM Nurseries WHERE id=5);

-- 25. Nurseries established in 2014
SELECT * FROM Nurseries WHERE YEAR(established_date)=2014;

-- 26. Nurseries established in March
SELECT * FROM Nurseries WHERE MONTH(established_date)=3;

-- 27. Nurseries with name starting with 'E'
SELECT * FROM Nurseries WHERE name LIKE 'E%';

-- 28. Nurseries with name ending with 'Centre'
SELECT * FROM Nurseries WHERE name LIKE '%Centre';

-- 29. Nurseries with capacity rounded to nearest 1000
SELECT id, name, ROUND(capacity,-3) AS rounded_capacity FROM Nurseries;

-- 30. Nurseries with capacity divided by 1000
SELECT id, name, capacity/1000 AS capacity_in_thousands FROM Nurseries;

-- 31. Nurseries whose description contains 'forest'
SELECT * FROM Nurseries WHERE description LIKE '%forest%';

-- 32. Join with RangerAssignments based on manager and ranger_name
SELECT n.name AS nursery, r.ranger_name, r.zone_assigned
FROM Nurseries n LEFT JOIN RangerAssignments r ON n.manager=r.ranger_name;

-- 33. Inner join example
SELECT n.name, r.ranger_name, r.status
FROM Nurseries n INNER JOIN RangerAssignments r ON n.manager=r.ranger_name;

-- 34. Subquery: nurseries in zones where rangers are assigned
SELECT * FROM Nurseries WHERE location IN (SELECT zone_assigned FROM RangerAssignments);

-- 35. Count nurseries per location
SELECT location, COUNT(*) AS count_per_location FROM Nurseries GROUP BY location;

-- 36. Nurseries with name length >12
SELECT * FROM Nurseries WHERE LENGTH(name)>12;

-- 37. Nurseries established before 2013
SELECT * FROM Nurseries WHERE established_date<'2013-01-01';

-- 38. Nurseries capacity difference from average
SELECT id, name, capacity- (SELECT AVG(capacity) FROM Nurseries) AS diff_from_avg FROM Nurseries;

-- 39. Nurseries with non-null descriptions
SELECT * FROM Nurseries WHERE description IS NOT NULL;

-- 40. Nurseries whose manager name contains 'Sharma'
SELECT * FROM Nurseries WHERE manager LIKE '%Sharma%';

-- 41. Subquery: nurseries with max capacity
SELECT * FROM Nurseries WHERE capacity=(SELECT MAX(capacity) FROM Nurseries);

-- 42. Nurseries grouped by year established
SELECT YEAR(established_date) AS est_year, COUNT(*) AS count_per_year FROM Nurseries GROUP BY YEAR(established_date);

-- 43. Nurseries with capacity > average
SELECT * FROM Nurseries WHERE capacity> (SELECT AVG(capacity) FROM Nurseries);

-- 44. Nurseries with capacity < average
SELECT * FROM Nurseries WHERE capacity< (SELECT AVG(capacity) FROM Nurseries);

-- 45. User-defined function: classify nursery size
DELIMITER //
CREATE FUNCTION nursery_size(cap INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF cap<10000 THEN RETURN 'Small';
  ELSEIF cap BETWEEN 10000 AND 15000 THEN RETURN 'Medium';
  ELSE RETURN 'Large';
  END IF;
END;
//
DELIMITER ;

-- 46. Apply nursery_size function
SELECT id, name, capacity, nursery_size(capacity) AS size_category FROM Nurseries;

-- 47. Nurseries with status Active and capacity >12000
SELECT * FROM Nurseries WHERE status='Active' AND capacity>12000;

-- 48. Nurseries with description containing 'mangrove' or 'medicinal'
SELECT * FROM Nurseries WHERE description LIKE '%mangrove%' OR description LIKE '%medicinal%';

-- 49. Nurseries sorted by capacity descending
SELECT * FROM Nurseries ORDER BY capacity DESC;

-- 50. Nurseries sorted by established_date descending
SELECT * FROM Nurseries ORDER BY established_date DESC;


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

-- 1. Select all records
SELECT * FROM RangerAssignments;

-- 2. Active rangers
SELECT * FROM RangerAssignments WHERE status='Active';

-- 3. Completed assignments
SELECT * FROM RangerAssignments WHERE status='Completed';

-- 4. Rangers in Morning shift
SELECT * FROM RangerAssignments WHERE shift='Morning';

-- 5. Rangers in Night shift
SELECT * FROM RangerAssignments WHERE shift='Night';

-- 6. Assignments starting in 2025
SELECT * FROM RangerAssignments WHERE YEAR(start_date)=2025;

-- 7. Assignments ending after July 2025
SELECT * FROM RangerAssignments WHERE end_date>'2025-07-01';

-- 8. Count total rangers
SELECT COUNT(*) AS total_rangers FROM RangerAssignments;

-- 9. Rangers per shift
SELECT shift, COUNT(*) AS count_per_shift FROM RangerAssignments GROUP BY shift;

-- 10. Rangers per zone
SELECT zone_assigned, COUNT(*) AS count_per_zone FROM RangerAssignments GROUP BY zone_assigned;

-- 11. Rangers on duty longer than 180 days
SELECT *, DATEDIFF(end_date,start_date) AS duty_days FROM RangerAssignments HAVING duty_days>180;

-- 12. Rangers with duty type containing 'Patrol'
SELECT * FROM RangerAssignments WHERE duty_type LIKE '%Patrol%';

-- 13. Rangers with duty type containing 'Monitoring'
SELECT * FROM RangerAssignments WHERE duty_type LIKE '%Monitoring%';

-- 14. Concatenate ranger name and zone
SELECT CONCAT(ranger_name,' - ',zone_assigned) AS ranger_zone FROM RangerAssignments;

-- 15. Upper case ranger names
SELECT UPPER(ranger_name) AS ranger_upper FROM RangerAssignments;

-- 16. Length of duty_type
SELECT id, LENGTH(duty_type) AS duty_length FROM RangerAssignments;

-- 17. Round days of assignment
SELECT id, ranger_name, ROUND(DATEDIFF(end_date,start_date)/30,1) AS months_assigned FROM RangerAssignments;

-- 18. Subquery: rangers with same shift as id=2
SELECT * FROM RangerAssignments WHERE shift=(SELECT shift FROM RangerAssignments WHERE id=2);

-- 19. Subquery: rangers with same status as id=3
SELECT * FROM RangerAssignments WHERE status=(SELECT status FROM RangerAssignments WHERE id=3);

-- 20. Rangers with start_date in June
SELECT * FROM RangerAssignments WHERE MONTH(start_date)=6;

-- 21. Rangers ending in September
SELECT * FROM RangerAssignments WHERE MONTH(end_date)=9;

-- 22. Rangers in a specific zone
SELECT * FROM RangerAssignments WHERE zone_assigned='Kanha Zone C3';

-- 23. Order by start_date ascending
SELECT * FROM RangerAssignments ORDER BY start_date ASC;

-- 24. Order by end_date descending
SELECT * FROM RangerAssignments ORDER BY end_date DESC;

-- 25. Rangers active and Morning shift
SELECT * FROM RangerAssignments WHERE status='Active' AND shift='Morning';

-- 26. Rangers active or Night shift
SELECT * FROM RangerAssignments WHERE status='Active' OR shift='Night';

-- 27. Rangers with duty duration >150 days
SELECT *, DATEDIFF(end_date,start_date) AS duty_days FROM RangerAssignments HAVING duty_days>150;

-- 28. Rangers starting after Feb 2025
SELECT * FROM RangerAssignments WHERE start_date>'2025-02-01';

-- 29. Rangers ending before Aug 2025
SELECT * FROM RangerAssignments WHERE end_date<'2025-08-01';

-- 30. Rangers with duty_type containing 'Fire'
SELECT * FROM RangerAssignments WHERE duty_type LIKE '%Fire%';

-- 31. Rangers with duty_type containing 'Survey'
SELECT * FROM RangerAssignments WHERE duty_type LIKE '%Survey%';

-- 32. Subquery: rangers assigned to same zone as id=5
SELECT * FROM RangerAssignments WHERE zone_assigned=(SELECT zone_assigned FROM RangerAssignments WHERE id=5);

-- 33. Count of rangers per duty_type
SELECT duty_type, COUNT(*) AS count_per_duty FROM RangerAssignments GROUP BY duty_type;

-- 34. Rangers with shift and status combined
SELECT CONCAT(shift,' - ',status) AS shift_status FROM RangerAssignments;

-- 35. Rangers whose names start with 'R'
SELECT * FROM RangerAssignments WHERE ranger_name LIKE 'R%';

-- 36. Rangers whose names end with 'a'
SELECT * FROM RangerAssignments WHERE ranger_name LIKE '%a';

-- 37. Rangers with long duty_type (>20 chars)
SELECT * FROM RangerAssignments WHERE LENGTH(duty_type)>20;

-- 38. Rangers starting between Jan and Mar 2025
SELECT * FROM RangerAssignments WHERE start_date BETWEEN '2025-01-01' AND '2025-03-31';

-- 39. Rangers ending between Aug and Oct 2025
SELECT * FROM RangerAssignments WHERE end_date BETWEEN '2025-08-01' AND '2025-10-31';

-- 40. Rangers with remaining days >90
SELECT *, DATEDIFF(end_date,NOW()) AS remaining_days FROM RangerAssignments HAVING remaining_days>90;

-- 41. Join with CommunityOutreach based on location
SELECT r.ranger_name, r.zone_assigned, c.program_name, c.event_date
FROM RangerAssignments r LEFT JOIN CommunityOutreach c ON r.zone_assigned=c.location;

-- 42. Inner join example
SELECT r.ranger_name, c.program_name, c.status
FROM RangerAssignments r INNER JOIN CommunityOutreach c ON r.zone_assigned=c.location;

-- 43. Subquery: rangers assigned to zones with outreach programs
SELECT * FROM RangerAssignments WHERE zone_assigned IN (SELECT location FROM CommunityOutreach);

-- 44. Rangers grouped by status
SELECT status, COUNT(*) AS count_per_status FROM RangerAssignments GROUP BY status;

-- 45. Rangers grouped by shift and status
SELECT shift, status, COUNT(*) AS count_shift_status FROM RangerAssignments GROUP BY shift,status;

-- 46. Rangers with start_date in 2025 and end_date in 2025
SELECT * FROM RangerAssignments WHERE YEAR(start_date)=2025 AND YEAR(end_date)=2025;

-- 47. User-defined function to classify duty duration
DELIMITER //
CREATE FUNCTION duty_category(startD DATE, endD DATE)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  DECLARE days INT;
  SET days=DATEDIFF(endD,startD);
  IF days<120 THEN RETURN 'Short';
  ELSEIF days BETWEEN 120 AND 180 THEN RETURN 'Medium';
  ELSE RETURN 'Long';
  END IF;
END;
//
DELIMITER ;

-- 48. Apply duty_category function
SELECT id, ranger_name, start_date, end_date, duty_category(start_date,end_date) AS duty_length_category FROM RangerAssignments;

-- 49. Rangers in Night shift with duty_type containing 'Patrol'
SELECT * FROM RangerAssignments WHERE shift='Night' AND duty_type LIKE '%Patrol%';

-- 50. Rangers sorted by duty length descending
SELECT *, DATEDIFF(end_date,start_date) AS duty_days FROM RangerAssignments ORDER BY duty_days DESC;


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

-- 1. List all ongoing training programs
SELECT id, title, trainer, status
FROM TrainingPrograms
WHERE status = 'Ongoing';

-- 2. Count of trainings per department
SELECT department, COUNT(*) AS total_trainings
FROM TrainingPrograms
GROUP BY department;

-- 3. Upcoming trainings using DATE function
SELECT title, start_date
FROM TrainingPrograms
WHERE start_date > CURDATE();

-- 4. Length of description for each training using LENGTH()
SELECT title, LENGTH(description) AS desc_length
FROM TrainingPrograms;

-- 5. Format start_date using DATE_FORMAT()
SELECT title, DATE_FORMAT(start_date, '%d-%b-%Y') AS formatted_start
FROM TrainingPrograms;

-- 6. Total number of completed trainings
SELECT COUNT(*) AS completed_trainings
FROM TrainingPrograms
WHERE status = 'Completed';

-- 7. Average duration of trainings (in days)
SELECT AVG(DATEDIFF(end_date, start_date)) AS avg_duration
FROM TrainingPrograms;

-- 8. Max duration training
SELECT title, DATEDIFF(end_date, start_date) AS duration
FROM TrainingPrograms
ORDER BY duration DESC
LIMIT 1;

-- 9. Number of trainings per trainer
SELECT trainer, COUNT(*) AS training_count
FROM TrainingPrograms
GROUP BY trainer;

-- 10. Departments with more than 2 trainings
SELECT department, COUNT(*) AS num_trainings
FROM TrainingPrograms
GROUP BY department
HAVING COUNT(*) > 2;

-- 11. Trainings longer than average duration
SELECT title, DATEDIFF(end_date, start_date) AS duration
FROM TrainingPrograms
WHERE DATEDIFF(end_date, start_date) > 
      (SELECT AVG(DATEDIFF(end_date, start_date)) FROM TrainingPrograms);

-- 12. Trainers conducting multiple trainings
SELECT trainer
FROM TrainingPrograms
GROUP BY trainer
HAVING COUNT(*) > 1;

-- 13. Training with the earliest start date
SELECT *
FROM TrainingPrograms
WHERE start_date = (SELECT MIN(start_date) FROM TrainingPrograms);

-- 14. Training in same department as 'Wildlife Conservation Basics'
SELECT *
FROM TrainingPrograms
WHERE department = (SELECT department FROM TrainingPrograms WHERE title = 'Wildlife Conservation Basics');

-- 15. Trainings overlapping with 'Forest Fire Management'
SELECT *
FROM TrainingPrograms
WHERE start_date <= (SELECT end_date FROM TrainingPrograms WHERE title = 'Forest Fire Management')
  AND end_date >= (SELECT start_date FROM TrainingPrograms WHERE title = 'Forest Fire Management');

-- 16. Trainings excluding completed ones
SELECT *
FROM TrainingPrograms
WHERE id NOT IN (SELECT id FROM TrainingPrograms WHERE status = 'Completed');

-- 17. Find trainer who conducted longest training
SELECT trainer
FROM TrainingPrograms
WHERE DATEDIFF(end_date, start_date) = (SELECT MAX(DATEDIFF(end_date, start_date)) FROM TrainingPrograms);

-- 18. Trainings in same month as 'Medicinal Plant Identification'
SELECT *
FROM TrainingPrograms
WHERE MONTH(start_date) = (SELECT MONTH(start_date) FROM TrainingPrograms WHERE title = 'Medicinal Plant Identification');

-- 19. Titles of trainings longer than 3 days
SELECT title
FROM TrainingPrograms
WHERE DATEDIFF(end_date, start_date) > 3;

-- 20. Trainings where trainer also conducts 'Data Logging with GPS Devices'
SELECT *
FROM TrainingPrograms
WHERE trainer = (SELECT trainer FROM TrainingPrograms WHERE title = 'Data Logging with GPS Devices');

-- 21. Join trainings with department heads
SELECT t.title, t.trainer, d.head AS department_head
FROM TrainingPrograms t
JOIN Departments d ON t.department = d.name;

-- 22. Trainings in 'Head Office'
SELECT t.title, t.trainer
FROM TrainingPrograms t
JOIN Departments d ON t.department = d.name
WHERE d.location = 'Head Office';

-- 23. Count of trainings per department head
SELECT d.head, COUNT(*) AS total_trainings
FROM TrainingPrograms t
JOIN Departments d ON t.department = d.name
GROUP BY d.head;

-- 24. Trainers whose department is in 'Zone B'
SELECT t.trainer, t.title
FROM TrainingPrograms t
JOIN Departments d ON t.department = d.name
WHERE d.location = 'Zone B';

-- 25. List trainings along with department location and head
SELECT t.title, t.trainer, d.location, d.head
FROM TrainingPrograms t
INNER JOIN Departments d ON t.department = d.name;

-- 26. LEFT JOIN to include all trainings even if department missing
SELECT t.title, t.trainer, d.head
FROM TrainingPrograms t
LEFT JOIN Departments d ON t.department = d.name;

-- 27. Trainings not associated with any department
SELECT t.title
FROM TrainingPrograms t
LEFT JOIN Departments d ON t.department = d.name
WHERE d.name IS NULL;

-- 28. Trainings with department head starting with 'A'
SELECT t.title, t.trainer, d.head
FROM TrainingPrograms t
JOIN Departments d ON t.department = d.name
WHERE d.head LIKE 'A%';

-- 29. Join using RIGHT JOIN to include all departments
SELECT t.title, d.name AS department_name
FROM TrainingPrograms t
RIGHT JOIN Departments d ON t.department = d.name;

-- 30. Trainings with department info sorted by department head
SELECT t.title, t.trainer, d.head
FROM TrainingPrograms t
JOIN Departments d ON t.department = d.name
ORDER BY d.head;

-- 31. Create a UDF to calculate training duration in days
DELIMITER //
CREATE FUNCTION training_duration(startD DATE, endD DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN DATEDIFF(endD, startD);
END //
DELIMITER ;

-- 32. Use UDF to list all trainings with duration
SELECT title, trainer, training_duration(start_date, end_date) AS duration_days
FROM TrainingPrograms;

-- 33. UDF to check if training is upcoming
DELIMITER //
CREATE FUNCTION is_upcoming_training(startD DATE)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    IF startD > CURDATE() THEN
        RETURN 'Yes';
    ELSE
        RETURN 'No';
    END IF;
END //
DELIMITER ;

-- 34. Show all trainings and mark if upcoming
SELECT title, trainer, is_upcoming_training(start_date) AS upcoming
FROM TrainingPrograms;

-- 35. UDF to classify training length
DELIMITER //
CREATE FUNCTION training_type(startD DATE, endD DATE)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    IF DATEDIFF(endD, startD) <= 3 THEN
        RETURN 'Short';
    ELSEIF DATEDIFF(endD, startD) <= 7 THEN
        RETURN 'Medium';
    ELSE
        RETURN 'Long';
    END IF;
END //
DELIMITER ;

-- Use UDF
SELECT title, training_type(start_date, end_date) AS training_category
FROM TrainingPrograms;


-- 36. Trainings longer than the longest 'Completed' training
SELECT title, DATEDIFF(end_date, start_date) AS duration
FROM TrainingPrograms
WHERE DATEDIFF(end_date, start_date) > 
      (SELECT MAX(DATEDIFF(end_date, start_date)) 
       FROM TrainingPrograms WHERE status='Completed');

-- 37. Trainers conducting trainings in multiple departments
SELECT trainer
FROM TrainingPrograms
GROUP BY trainer
HAVING COUNT(DISTINCT department) > 1;

-- 38. Trainings in the same month as the longest training
SELECT *
FROM TrainingPrograms
WHERE MONTH(start_date) = 
      (SELECT MONTH(start_date) 
       FROM TrainingPrograms
       ORDER BY DATEDIFF(end_date, start_date) DESC
       LIMIT 1);

-- 39. Trainings whose trainer also conducted a training in July
SELECT *
FROM TrainingPrograms
WHERE trainer IN (
    SELECT trainer FROM TrainingPrograms WHERE MONTH(start_date)=7
);

-- 40. Trainings with duration above average using subquery
SELECT title, DATEDIFF(end_date, start_date) AS duration
FROM TrainingPrograms
WHERE DATEDIFF(end_date, start_date) > 
      (SELECT AVG(DATEDIFF(end_date, start_date)) FROM TrainingPrograms);

-- 41. Rank trainings by duration
SELECT title, trainer, DATEDIFF(end_date, start_date) AS duration,
       RANK() OVER (ORDER BY DATEDIFF(end_date, start_date) DESC) AS duration_rank
FROM TrainingPrograms;

-- 42. Running total of trainings per department by start date
SELECT department, title, start_date,
       COUNT(*) OVER (PARTITION BY department ORDER BY start_date) AS running_total
FROM TrainingPrograms;

-- 43. Dense rank of trainings per trainer
SELECT trainer, title,
       DENSE_RANK() OVER (PARTITION BY trainer ORDER BY start_date) AS trainer_rank
FROM TrainingPrograms;

-- 44. Cumulative number of trainings completed over time
SELECT start_date, COUNT(*) OVER (ORDER BY start_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS cumulative_trainings
FROM TrainingPrograms
WHERE status='Completed';

-- 45. Previous and next training for each trainer
SELECT trainer, title, start_date,
       LAG(title) OVER (PARTITION BY trainer ORDER BY start_date) AS prev_training,
       LEAD(title) OVER (PARTITION BY trainer ORDER BY start_date) AS next_training
FROM TrainingPrograms;


-- 46. Join with Departments and list only ongoing trainings
SELECT t.title, t.trainer, t.status, d.head, d.location
FROM TrainingPrograms t
JOIN Departments d ON t.department = d.name
WHERE t.status='Ongoing';

-- 47. List trainings where department head name matches trainer
SELECT t.title, t.trainer, d.head
FROM TrainingPrograms t
JOIN Departments d ON t.department = d.name
WHERE t.trainer = d.head;

-- 48. Trainings grouped by department with avg duration and max duration
SELECT t.department, COUNT(*) AS total_trainings,
       AVG(DATEDIFF(t.end_date, t.start_date)) AS avg_duration,
       MAX(DATEDIFF(t.end_date, t.start_date)) AS max_duration
FROM TrainingPrograms t
GROUP BY t.department;

-- 49. Trainings along with next upcoming training per department
SELECT t.title, t.department, t.start_date,
       MIN(t2.start_date) AS next_training_date
FROM TrainingPrograms t
LEFT JOIN TrainingPrograms t2 
    ON t.department = t2.department AND t2.start_date > t.start_date
GROUP BY t.id;

-- 50. Trainings whose trainer has the most trainings
SELECT title, trainer
FROM TrainingPrograms
WHERE trainer = (
    SELECT trainer
    FROM TrainingPrograms
    GROUP BY trainer
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

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

-- 1. List all spots with entry fee greater than 500
SELECT id, name, entry_fee
FROM EcoTourismSpots
WHERE entry_fee > 500;

-- 2. Count spots per zone (extract from location)
SELECT SUBSTRING_INDEX(location,' ',1) AS zone, COUNT(*) AS total_spots
FROM EcoTourismSpots
GROUP BY zone;

-- 3. Spots with uppercase names
SELECT UPPER(name) AS spot_name_upper
FROM EcoTourismSpots;

-- 4. Length of description for each spot
SELECT name, LENGTH(description) AS desc_length
FROM EcoTourismSpots;

-- 5. Format entry fee with currency symbol
SELECT name, CONCAT('₹', FORMAT(entry_fee,2)) AS formatted_fee
FROM EcoTourismSpots;

-- 6. Average entry fee of all spots
SELECT AVG(entry_fee) AS avg_entry_fee
FROM EcoTourismSpots;

-- 7. Maximum and minimum entry fee spots
SELECT name, entry_fee
FROM EcoTourismSpots
WHERE entry_fee = (SELECT MAX(entry_fee) FROM EcoTourismSpots)
   OR entry_fee = (SELECT MIN(entry_fee) FROM EcoTourismSpots);

-- 8. Count of spots per status
SELECT status, COUNT(*) AS total_spots
FROM EcoTourismSpots
GROUP BY status;

-- 9. Total number of open spots
SELECT COUNT(*) AS open_spots
FROM EcoTourismSpots
WHERE status='Open';

-- 10. Average entry fee per zone
SELECT SUBSTRING_INDEX(location,' ',1) AS zone, AVG(entry_fee) AS avg_fee
FROM EcoTourismSpots
GROUP BY zone;

-- 11. Spots with higher fee than average
SELECT name, entry_fee
FROM EcoTourismSpots
WHERE entry_fee > (SELECT AVG(entry_fee) FROM EcoTourismSpots);

-- 12. Spot with the longest description
SELECT name
FROM EcoTourismSpots
WHERE LENGTH(description) = (SELECT MAX(LENGTH(description)) FROM EcoTourismSpots);

-- 13. Spots in the same zone as 'Kanha Safari Point'
SELECT *
FROM EcoTourismSpots
WHERE SUBSTRING_INDEX(location,' ',1) = 
      (SELECT SUBSTRING_INDEX(location,' ',1) FROM EcoTourismSpots WHERE name='Kanha Safari Point');

-- 14. Spot with the earliest created date
SELECT *
FROM EcoTourismSpots
WHERE created_at = (SELECT MIN(created_at) FROM EcoTourismSpots);

-- 15. Spots with entry fee between min and max fees
SELECT *
FROM EcoTourismSpots
WHERE entry_fee BETWEEN 
      (SELECT MIN(entry_fee) FROM EcoTourismSpots) AND
      (SELECT MAX(entry_fee) FROM EcoTourismSpots);

-- 16. Spots not in Zone A1
SELECT *
FROM EcoTourismSpots
WHERE SUBSTRING_INDEX(location,' ',1) <> 'Sundarbans';

-- 17. Spot whose contact matches the one with max entry fee
SELECT *
FROM EcoTourismSpots
WHERE contact = (SELECT contact FROM EcoTourismSpots ORDER BY entry_fee DESC LIMIT 1);

-- 18. Spots with similar activities as 'Mangrove Walkway'
SELECT *
FROM EcoTourismSpots
WHERE activities LIKE '%Bird watching%' AND name<>'Mangrove Walkway';

-- 19. Top 3 most expensive spots
SELECT *
FROM EcoTourismSpots
ORDER BY entry_fee DESC
LIMIT 3;

-- 20. Spots cheaper than 'Bandipur Forest Camp'
SELECT *
FROM EcoTourismSpots
WHERE entry_fee < (SELECT entry_fee FROM EcoTourismSpots WHERE name='Bandipur Forest Camp');

-- 21. Join spots with their zone manager
SELECT e.name, e.location, d.manager
FROM EcoTourismSpots e
JOIN TourismDepartments d ON SUBSTRING_INDEX(e.location,' ',1) = d.zone;

-- 22. Spots in zones managed by 'Ajay Mehta'
SELECT e.name, e.entry_fee
FROM EcoTourismSpots e
JOIN TourismDepartments d ON SUBSTRING_INDEX(e.location,' ',1) = d.zone
WHERE d.manager='Ajay Mehta';

-- 23. Count of spots per manager
SELECT d.manager, COUNT(*) AS total_spots
FROM EcoTourismSpots e
JOIN TourismDepartments d ON SUBSTRING_INDEX(e.location,' ',1) = d.zone
GROUP BY d.manager;

-- 24. Spots with manager contact
SELECT e.name, d.manager, d.contact
FROM EcoTourismSpots e
JOIN TourismDepartments d ON SUBSTRING_INDEX(e.location,' ',1) = d.zone;

-- 25. LEFT JOIN to include all zones
SELECT d.zone, e.name
FROM TourismDepartments d
LEFT JOIN EcoTourismSpots e ON SUBSTRING_INDEX(e.location,' ',1) = d.zone;

-- 26. RIGHT JOIN to include all spots even if zone missing
SELECT e.name, d.zone
FROM EcoTourismSpots e
RIGHT JOIN TourismDepartments d ON SUBSTRING_INDEX(e.location,' ',1) = d.zone;

-- 27. Spots where zone manager and spot contact are same
SELECT e.name, e.contact, d.manager
FROM EcoTourismSpots e
JOIN TourismDepartments d ON SUBSTRING_INDEX(e.location,' ',1) = d.zone
WHERE e.contact=d.contact;

-- 28. Join and order by entry fee descending
SELECT e.name, e.entry_fee, d.manager
FROM EcoTourismSpots e
JOIN TourismDepartments d ON SUBSTRING_INDEX(e.location,' ',1) = d.zone
ORDER BY e.entry_fee DESC;

-- 29. Spots with manager names starting with 'S'
SELECT e.name, d.manager
FROM EcoTourismSpots e
JOIN TourismDepartments d ON SUBSTRING_INDEX(e.location,' ',1) = d.zone
WHERE d.manager LIKE 'S%';

-- 30. Count of spots per zone with avg entry fee
SELECT d.zone, COUNT(*) AS total_spots, AVG(e.entry_fee) AS avg_fee
FROM EcoTourismSpots e
JOIN TourismDepartments d ON SUBSTRING_INDEX(e.location,' ',1) = d.zone
GROUP BY d.zone;

-- 31. UDF to calculate if a spot is expensive (> 500)
DELIMITER //
CREATE FUNCTION is_expensive(fee DECIMAL(10,2))
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    IF fee > 500 THEN
        RETURN 'Yes';
    ELSE
        RETURN 'No';
    END IF;
END //
DELIMITER ;

-- 32. Show all spots with expense category
SELECT name, entry_fee, is_expensive(entry_fee) AS expensive
FROM EcoTourismSpots;

-- 33. UDF to categorize spots by fee
DELIMITER //
CREATE FUNCTION fee_category(fee DECIMAL(10,2))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    IF fee <= 100 THEN
        RETURN 'Budget';
    ELSEIF fee <= 500 THEN
        RETURN 'Moderate';
    ELSE
        RETURN 'Premium';
    END IF;
END //
DELIMITER ;

-- 34. List spots with fee category
SELECT name, entry_fee, fee_category(entry_fee) AS category
FROM EcoTourismSpots;

-- 35. UDF to check if activities include 'Trekking'
DELIMITER //
CREATE FUNCTION has_trekking(act TEXT)
RETURNS VARCHAR(5)
DETERMINISTIC
BEGIN
    IF act LIKE '%Trekking%' THEN
        RETURN 'Yes';
    ELSE
        RETURN 'No';
    END IF;
END //
DELIMITER ;

-- Use UDF
SELECT name, activities, has_trekking(activities) AS trekking_available
FROM EcoTourismSpots;

-- 36. Spots with fee higher than the average fee
SELECT name, entry_fee
FROM EcoTourismSpots
WHERE entry_fee > (SELECT AVG(entry_fee) FROM EcoTourismSpots);

-- 37. Spot with the longest name
SELECT name
FROM EcoTourismSpots
WHERE LENGTH(name) = (SELECT MAX(LENGTH(name)) FROM EcoTourismSpots);

-- 38. Spots in the same zone as 'Kanha Safari Point'
SELECT *
FROM EcoTourismSpots
WHERE SUBSTRING_INDEX(location,' ',1) = 
      (SELECT SUBSTRING_INDEX(location,' ',1) FROM EcoTourismSpots WHERE name='Kanha Safari Point');

-- 39. Top 3 cheapest spots
SELECT *
FROM EcoTourismSpots
ORDER BY entry_fee ASC
LIMIT 3;

-- 40. Spots with entry fee below the maximum in Zone 'Gir'
SELECT *
FROM EcoTourismSpots
WHERE entry_fee < (SELECT MAX(entry_fee) FROM EcoTourismSpots 
                   WHERE SUBSTRING_INDEX(location,' ',1)='Gir');

-- 41. Rank spots by entry fee descending
SELECT name, entry_fee,
       RANK() OVER (ORDER BY entry_fee DESC) AS fee_rank
FROM EcoTourismSpots;

-- 42. Dense rank of spots per zone by fee
SELECT name, location, entry_fee,
       DENSE_RANK() OVER (PARTITION BY SUBSTRING_INDEX(location,' ',1) ORDER BY entry_fee DESC) AS zone_fee_rank
FROM EcoTourismSpots;

-- 43. Running total of entry fees across all spots
SELECT name, entry_fee,
       SUM(entry_fee) OVER (ORDER BY entry_fee) AS cumulative_fee
FROM EcoTourismSpots;

-- 44. Count of spots per zone using window function
SELECT name, location,
       COUNT(*) OVER (PARTITION BY SUBSTRING_INDEX(location,' ',1)) AS spots_per_zone
FROM EcoTourismSpots;

-- 45. Previous and next spot by fee
SELECT name, entry_fee,
       LAG(name) OVER (ORDER BY entry_fee) AS prev_spot,
       LEAD(name) OVER (ORDER BY entry_fee) AS next_spot
FROM EcoTourismSpots;

-- 46. Join with TourismDepartments to list premium spots with manager
SELECT e.name, e.entry_fee, d.manager
FROM EcoTourismSpots e
JOIN TourismDepartments d ON SUBSTRING_INDEX(e.location,' ',1) = d.zone
WHERE e.entry_fee > 500;

-- 47. Spot with the same contact as its zone manager
SELECT e.name, e.contact, d.manager
FROM EcoTourismSpots e
JOIN TourismDepartments d ON SUBSTRING_INDEX(e.location,' ',1) = d.zone
WHERE e.contact = d.contact;

-- 48. Count of spots per manager with average fee
SELECT d.manager, COUNT(*) AS total_spots, AVG(e.entry_fee) AS avg_fee
FROM EcoTourismSpots e
JOIN TourismDepartments d ON SUBSTRING_INDEX(e.location,' ',1) = d.zone
GROUP BY d.manager;

-- 49. List spot and next higher fee spot in the same zone
SELECT e.name, e.entry_fee, MIN(e2.entry_fee) AS next_higher_fee
FROM EcoTourismSpots e
LEFT JOIN EcoTourismSpots e2 
    ON SUBSTRING_INDEX(e.location,' ',1) = SUBSTRING_INDEX(e2.location,' ',1) AND e2.entry_fee > e.entry_fee
GROUP BY e.id;

-- 50. Spot(s) with the manager having most spots
SELECT e.name, e.entry_fee, d.manager
FROM EcoTourismSpots e
JOIN TourismDepartments d ON SUBSTRING_INDEX(e.location,' ',1) = d.zone
WHERE d.manager = (
    SELECT manager
    FROM EcoTourismSpots e1
    JOIN TourismDepartments d1 ON SUBSTRING_INDEX(e1.location,' ',1)=d1.zone
    GROUP BY manager
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

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

-- 1. List all active check posts
SELECT id, location, status FROM CheckPosts WHERE status='Active';

-- 2. Locations with uppercase supervisor names
SELECT location, UPPER(supervisor_name) AS supervisor_upper FROM CheckPosts;

-- 3. Length of equipment description
SELECT location, LENGTH(equipment_available) AS equipment_length FROM CheckPosts;

-- 4. Format contact number with country code
SELECT location, CONCAT('+91-', contact) AS formatted_contact FROM CheckPosts;

-- 5. Extract first letter of post type
SELECT location, LEFT(post_type,1) AS type_initial FROM CheckPosts;

-- 6. Convert staff_count to string with prefix
SELECT location, CONCAT('Staff-', staff_count) AS staff_label FROM CheckPosts;

-- 7. Find posts with 'GPS' in equipment
SELECT location, equipment_available FROM CheckPosts WHERE equipment_available LIKE '%GPS%';

-- 8. Check posts created this month
SELECT * FROM CheckPosts WHERE MONTH(created_at) = MONTH(NOW());

-- 9. Supervisor names in reverse
SELECT location, REVERSE(supervisor_name) AS supervisor_reverse FROM CheckPosts;

-- 10. Add 1 to staff_count for simulation
SELECT location, staff_count + 1 AS incremented_staff FROM CheckPosts;

-- 11. Total number of active posts
SELECT COUNT(*) AS total_active FROM CheckPosts WHERE status='Active';

-- 12. Average staff count
SELECT AVG(staff_count) AS avg_staff FROM CheckPosts;

-- 13. Maximum and minimum staff_count
SELECT MAX(staff_count) AS max_staff, MIN(staff_count) AS min_staff FROM CheckPosts;

-- 14. Count of posts per post_type
SELECT post_type, COUNT(*) AS total_posts FROM CheckPosts GROUP BY post_type;

-- 15. Posts with staff_count above average
SELECT * FROM CheckPosts WHERE staff_count > (SELECT AVG(staff_count) FROM CheckPosts);

-- 16. Posts with staff_count equal to maximum
SELECT * FROM CheckPosts WHERE staff_count = (SELECT MAX(staff_count) FROM CheckPosts);

-- 17. Count posts for each supervisor
SELECT supervisor_name, COUNT(*) AS total_posts FROM CheckPosts GROUP BY supervisor_name;

-- 18. Posts with staff_count between 3 and 5
SELECT * FROM CheckPosts WHERE staff_count BETWEEN 3 AND 5;

-- 19. Posts whose equipment description length > 20
SELECT location, equipment_available FROM CheckPosts WHERE LENGTH(equipment_available) > 20;

-- 20. List posts ordered by staff_count descending
SELECT * FROM CheckPosts ORDER BY staff_count DESC;

-- 21. Posts with staff_count greater than average for their post_type
SELECT * FROM CheckPosts c1
WHERE staff_count > (SELECT AVG(staff_count) FROM CheckPosts c2 WHERE c2.post_type = c1.post_type);

-- 22. Post with longest equipment list
SELECT * FROM CheckPosts
WHERE LENGTH(equipment_available) = (SELECT MAX(LENGTH(equipment_available)) FROM CheckPosts);

-- 23. Posts with staff_count equal to minimum in the table
SELECT * FROM CheckPosts
WHERE staff_count = (SELECT MIN(staff_count) FROM CheckPosts);

-- 24. Posts whose supervisor_name matches first alphabet of another post
SELECT * FROM CheckPosts
WHERE LEFT(supervisor_name,1) IN (SELECT LEFT(supervisor_name,1) FROM CheckPosts WHERE id<>CheckPosts.id);

-- 25. Posts with staff_count higher than median
SELECT * FROM CheckPosts
WHERE staff_count > (SELECT staff_count FROM CheckPosts ORDER BY staff_count LIMIT 1,1);

-- 26. Posts having same staff_count as 'Sundarbans Zone A1 Entrance'
SELECT * FROM CheckPosts
WHERE staff_count = (SELECT staff_count FROM CheckPosts WHERE location='Sundarbans Zone A1 Entrance');

-- 27. Posts with maximum staff_count per post_type
SELECT * FROM CheckPosts c1
WHERE staff_count = (SELECT MAX(staff_count) FROM CheckPosts c2 WHERE c2.post_type = c1.post_type);

-- 28. Count of posts with same supervisor as 'Ravi Sharma'
SELECT COUNT(*) FROM CheckPosts
WHERE supervisor_name = (SELECT supervisor_name FROM CheckPosts WHERE location='Sundarbans Zone A1 Entrance');

-- 29. Posts with staff_count above overall average
SELECT * FROM CheckPosts
WHERE staff_count > (SELECT AVG(staff_count) FROM CheckPosts);

-- 30. Posts where staff_count = max for that post_type
SELECT * FROM CheckPosts c1
WHERE staff_count = (SELECT MAX(staff_count) FROM CheckPosts c2 WHERE c2.post_type=c1.post_type);

-- 31. Join checkposts with departments
SELECT c.location, c.post_type, d.department_name
FROM CheckPosts c
JOIN Departments d ON c.post_type=d.post_type;

-- 32. Left join to include all posts even if no department
SELECT c.location, d.department_name
FROM CheckPosts c
LEFT JOIN Departments d ON c.post_type=d.post_type;

-- 33. Right join to include all departments
SELECT c.location, d.department_name
FROM CheckPosts c
RIGHT JOIN Departments d ON c.post_type=d.post_type;

-- 34. Join and filter where staff_count > 4
SELECT c.location, c.staff_count, d.department_name
FROM CheckPosts c
JOIN Departments d ON c.post_type=d.post_type
WHERE c.staff_count > 4;

-- 35. Join and order by staff_count descending
SELECT c.location, c.staff_count, d.department_name
FROM CheckPosts c
JOIN Departments d ON c.post_type=d.post_type
ORDER BY c.staff_count DESC;

-- 36. Join and count posts per department
SELECT d.department_name, COUNT(c.id) AS total_posts
FROM CheckPosts c
JOIN Departments d ON c.post_type=d.post_type
GROUP BY d.department_name;

-- 37. Posts with same contact as department
SELECT c.location, c.contact, d.dept_contact
FROM CheckPosts c
JOIN Departments d ON c.post_type=d.post_type
WHERE c.contact=d.dept_contact;

-- 38. Posts where supervisor matches department contact
SELECT c.location, c.supervisor_name
FROM CheckPosts c
JOIN Departments d ON c.post_type=d.post_type
WHERE c.contact=d.dept_contact;

-- 39. Count of posts per department where staff_count>3
SELECT d.department_name, COUNT(*) AS total_posts
FROM CheckPosts c
JOIN Departments d ON c.post_type=d.post_type
WHERE c.staff_count>3
GROUP BY d.department_name;

-- 40. Departments without active posts
SELECT d.department_name
FROM Departments d
LEFT JOIN CheckPosts c ON c.post_type=d.post_type AND c.status='Active'
WHERE c.id IS NULL;

-- 41. Create UDF to calculate staff efficiency
DELIMITER //
CREATE FUNCTION staff_efficiency(staff INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  DECLARE result VARCHAR(20);
  IF staff >=5 THEN
    SET result='High';
  ELSEIF staff >=3 THEN
    SET result='Medium';
  ELSE
    SET result='Low';
  END IF;
  RETURN result;
END;
//
DELIMITER ;

-- 42. Use UDF to classify staff
SELECT location, staff_count, staff_efficiency(staff_count) AS efficiency_level FROM CheckPosts;

-- 43. Posts where efficiency is 'High'
SELECT location, staff_count FROM CheckPosts
WHERE staff_efficiency(staff_count)='High';

-- 44. Posts with reversed supervisor names
SELECT location, REVERSE(supervisor_name) AS rev_supervisor FROM CheckPosts;

-- 45. Concatenate post_type and location
SELECT CONCAT(post_type,' - ',location) AS post_label FROM CheckPosts;

-- 46. Extract numeric staff value and add 2
SELECT location, staff_count + 2 AS increased_staff FROM CheckPosts;

-- 47. Posts created in the last 7 days
SELECT * FROM CheckPosts WHERE created_at >= DATE_SUB(NOW(), INTERVAL 7 DAY);

-- 48. Count posts per status
SELECT status, COUNT(*) AS total_posts FROM CheckPosts GROUP BY status;

-- 49. Posts with first word of location
SELECT location, SUBSTRING_INDEX(location,' ',1) AS zone FROM CheckPosts;

-- 50. Top 3 posts by staff_count
SELECT * FROM CheckPosts ORDER BY staff_count DESC LIMIT 3;


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

-- 1. List all equipment items
SELECT id, item_name, category, quantity FROM EquipmentInventory;

-- 2. Convert item_name to uppercase
SELECT id, UPPER(item_name) AS item_upper FROM EquipmentInventory;

-- 3. Length of item_name
SELECT id, LENGTH(item_name) AS name_length FROM EquipmentInventory;

-- 4. Format cost with currency symbol
SELECT id, CONCAT('₹', cost) AS formatted_cost FROM EquipmentInventory;

-- 5. Extract first 5 letters of item_name
SELECT id, LEFT(item_name,5) AS short_name FROM EquipmentInventory;

-- 6. Calculate total value per item (quantity * cost)
SELECT id, item_name, quantity*cost AS total_value FROM EquipmentInventory;

-- 7. Items purchased in 2024
SELECT * FROM EquipmentInventory WHERE YEAR(purchase_date)=2024;

-- 8. Supplier names in lowercase
SELECT supplier, LOWER(supplier) AS supplier_lower FROM EquipmentInventory;

-- 9. Replace spaces in item_name with underscores
SELECT REPLACE(item_name,' ','_') AS item_underscored FROM EquipmentInventory;

-- 10. Round cost to nearest hundred
SELECT item_name, ROUND(cost,-2) AS rounded_cost FROM EquipmentInventory;

-- 11. Total number of items in inventory
SELECT COUNT(*) AS total_items FROM EquipmentInventory;

-- 12. Total quantity of all equipment
SELECT SUM(quantity) AS total_quantity FROM EquipmentInventory;

-- 13. Average cost of items
SELECT AVG(cost) AS avg_cost FROM EquipmentInventory;

-- 14. Maximum and minimum cost
SELECT MAX(cost) AS max_cost, MIN(cost) AS min_cost FROM EquipmentInventory;

-- 15. Count items per category
SELECT category, COUNT(*) AS total_items FROM EquipmentInventory GROUP BY category;

-- 16. Items with quantity above average
SELECT * FROM EquipmentInventory WHERE quantity > (SELECT AVG(quantity) FROM EquipmentInventory);

-- 17. Items with cost equal to maximum cost
SELECT * FROM EquipmentInventory WHERE cost = (SELECT MAX(cost) FROM EquipmentInventory);

-- 18. Total value of all inventory (quantity * cost)
SELECT SUM(quantity*cost) AS total_inventory_value FROM EquipmentInventory;

-- 19. Count items per supplier
SELECT supplier, COUNT(*) AS total_items FROM EquipmentInventory GROUP BY supplier;

-- 20. Items purchased before 2024
SELECT * FROM EquipmentInventory WHERE purchase_date < '2024-01-01';

-- 21. Items with cost greater than average cost
SELECT * FROM EquipmentInventory
WHERE cost > (SELECT AVG(cost) FROM EquipmentInventory);

-- 22. Items with highest quantity
SELECT * FROM EquipmentInventory
WHERE quantity = (SELECT MAX(quantity) FROM EquipmentInventory);

-- 23. Items with quantity equal to minimum
SELECT * FROM EquipmentInventory
WHERE quantity = (SELECT MIN(quantity) FROM EquipmentInventory);

-- 24. Items purchased by 'TrekWear Co.'
SELECT * FROM EquipmentInventory
WHERE supplier = (SELECT supplier FROM EquipmentInventory WHERE supplier='TrekWear Co.' LIMIT 1);

-- 25. Items with cost higher than the average of their category
SELECT * FROM EquipmentInventory e1
WHERE cost > (SELECT AVG(cost) FROM EquipmentInventory e2 WHERE e2.category=e1.category);

-- 26. Items whose quantity equals quantity of 'Drone DJI Mavic Mini 2'
SELECT * FROM EquipmentInventory
WHERE quantity = (SELECT quantity FROM EquipmentInventory WHERE item_name='Drone DJI Mavic Mini 2');

-- 27. Items whose cost equals max cost of the same category
SELECT * FROM EquipmentInventory e1
WHERE cost = (SELECT MAX(cost) FROM EquipmentInventory e2 WHERE e2.category=e1.category);

-- 28. Count of items from the same supplier as 'GeoTrack Solutions'
SELECT COUNT(*) FROM EquipmentInventory
WHERE supplier = (SELECT supplier FROM EquipmentInventory WHERE supplier='GeoTrack Solutions');

-- 29. Items with quantity greater than median quantity
SELECT * FROM EquipmentInventory
WHERE quantity > (SELECT quantity FROM EquipmentInventory ORDER BY quantity LIMIT 1,1);

-- 30. Items purchased in same month as 'Walkie Talkie Motorola T82'
SELECT * FROM EquipmentInventory
WHERE MONTH(purchase_date) = (SELECT MONTH(purchase_date) FROM EquipmentInventory WHERE item_name='Walkie Talkie Motorola T82');

SELECT e.item_name, e.supplier, s.contact, s.location
FROM EquipmentInventory e
JOIN Suppliers s ON e.supplier = s.supplier_name;

-- 32. Left join to include all inventory items
SELECT e.item_name, s.contact
FROM EquipmentInventory e
LEFT JOIN Suppliers s ON e.supplier = s.supplier_name;

-- 33. Right join to include all suppliers
SELECT e.item_name, s.supplier_name
FROM EquipmentInventory e
RIGHT JOIN Suppliers s ON e.supplier = s.supplier_name;

-- 34. Join and filter items with quantity > 20
SELECT e.item_name, e.quantity, s.location
FROM EquipmentInventory e
JOIN Suppliers s ON e.supplier = s.supplier_name
WHERE e.quantity > 20;

-- 35. Join and order by cost descending
SELECT e.item_name, e.cost, s.location
FROM EquipmentInventory e
JOIN Suppliers s ON e.supplier = s.supplier_name
ORDER BY e.cost DESC;

-- 36. Count items per supplier
SELECT s.supplier_name, COUNT(e.id) AS total_items
FROM EquipmentInventory e
JOIN Suppliers s ON e.supplier = s.supplier_name
GROUP BY s.supplier_name;

-- 37. Items with supplier in 'Mumbai'
SELECT e.item_name, s.location
FROM EquipmentInventory e
JOIN Suppliers s ON e.supplier = s.supplier_name
WHERE s.location='Mumbai';

-- 38. Total quantity per supplier
SELECT s.supplier_name, SUM(e.quantity) AS total_quantity
FROM EquipmentInventory e
JOIN Suppliers s ON e.supplier = s.supplier_name
GROUP BY s.supplier_name;

-- 39. Items with quantity greater than supplier average
SELECT e.item_name, e.quantity, s.supplier_name
FROM EquipmentInventory e
JOIN Suppliers s ON e.supplier = s.supplier_name
WHERE e.quantity > (SELECT AVG(quantity) FROM EquipmentInventory WHERE supplier=e.supplier);

-- 40. Suppliers without any inventory
SELECT s.supplier_name
FROM Suppliers s
LEFT JOIN EquipmentInventory e ON e.supplier = s.supplier_name
WHERE e.id IS NULL;

-- 41. Create UDF to classify equipment condition
DELIMITER //
CREATE FUNCTION condition_status(cond VARCHAR(50))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  DECLARE result VARCHAR(20);
  IF cond='New' THEN
    SET result='Excellent';
  ELSEIF cond='Good' THEN
    SET result='Usable';
  ELSE
    SET result='Needs Repair';
  END IF;
  RETURN result;
END;
//
DELIMITER ;

-- 42. Use UDF to classify condition
SELECT item_name, conditions, condition_status(conditions) AS condition_rating FROM EquipmentInventory;

-- 43. Items with condition rating 'Excellent'
SELECT item_name FROM EquipmentInventory WHERE condition_status(conditions)='Excellent';

-- 44. Concatenate item_name and category
SELECT CONCAT(item_name,' - ',category) AS item_label FROM EquipmentInventory;

-- 45. Extract year from purchase_date
SELECT item_name, YEAR(purchase_date) AS purchase_year FROM EquipmentInventory;

-- 46. Calculate inventory value (quantity * cost)
SELECT item_name, quantity*cost AS inventory_value FROM EquipmentInventory;

-- 47. Items purchased in last 6 months
SELECT * FROM EquipmentInventory WHERE purchase_date >= DATE_SUB(NOW(), INTERVAL 6 MONTH);

-- 48. Count items per category
SELECT category, COUNT(*) AS total_items FROM EquipmentInventory GROUP BY category;

-- 49. Items with first word of item_name
SELECT item_name, SUBSTRING_INDEX(item_name,' ',1) AS first_word FROM EquipmentInventory;

-- 50. Top 5 most expensive items
SELECT * FROM EquipmentInventory ORDER BY cost DESC LIMIT 5;

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

-- 1. List all tracked animals
SELECT * FROM AnimalTracking;

-- 2. Uppercase species names
SELECT id, UPPER(species) AS species_upper FROM AnimalTracking;

-- 3. Length of movement_pattern
SELECT id, LENGTH(movement_pattern) AS movement_len FROM AnimalTracking;

-- 4. Animals seen in 2025
SELECT * FROM AnimalTracking WHERE YEAR(last_seen)=2025;

-- 5. Extract date from last_seen
SELECT id, DATE(last_seen) AS seen_date FROM AnimalTracking;

-- 6. Animals last seen today
SELECT * FROM AnimalTracking WHERE DATE(last_seen)=CURDATE();

-- 7. Concatenate species and tracker_id
SELECT CONCAT(species,' - ',tracker_id) AS animal_label FROM AnimalTracking;

-- 8. Animals with 'Healthy' status
SELECT * FROM AnimalTracking WHERE health_status='Healthy';

-- 9. Replace spaces in movement_pattern with underscores
SELECT REPLACE(movement_pattern,' ','_') AS movement_fmt FROM AnimalTracking;

-- 10. Round timestamp to nearest hour
SELECT id, DATE_FORMAT(last_seen,'%Y-%m-%d %H:00:00') AS last_seen_hour FROM AnimalTracking;

-- 11. Count total animals
SELECT COUNT(*) AS total_animals FROM AnimalTracking;

-- 12. Count per species
SELECT species, COUNT(*) AS total FROM AnimalTracking GROUP BY species;

-- 13. Count animals per health_status
SELECT health_status, COUNT(*) AS total FROM AnimalTracking GROUP BY health_status;

-- 14. Animals last seen in last 24 hours
SELECT * FROM AnimalTracking WHERE last_seen >= NOW()-INTERVAL 1 DAY;

-- 15. Animals not seen in last 48 hours
SELECT * FROM AnimalTracking WHERE last_seen < NOW()-INTERVAL 2 DAY;

-- 16. Most recent sighting
SELECT * FROM AnimalTracking ORDER BY last_seen DESC LIMIT 1;

-- 17. Oldest sighting
SELECT * FROM AnimalTracking ORDER BY last_seen ASC LIMIT 1;

-- 18. Animals with 'Tiger' in species
SELECT * FROM AnimalTracking WHERE species LIKE '%Tiger%';

-- 19. Extract hour of last_seen
SELECT id, HOUR(last_seen) AS seen_hour FROM AnimalTracking;

-- 20. Extract month of last_seen
SELECT id, MONTH(last_seen) AS seen_month FROM AnimalTracking;

-- 21. Animals seen after a specific date
SELECT * FROM AnimalTracking WHERE last_seen > '2025-06-26';

-- 22. Species with max sightings (subquery)
SELECT species FROM AnimalTracking WHERE species IN (SELECT species FROM AnimalTracking GROUP BY species ORDER BY COUNT(*) DESC LIMIT 1);

-- 23. Latest seen per species
SELECT a1.* FROM AnimalTracking a1 WHERE last_seen = (SELECT MAX(last_seen) FROM AnimalTracking a2 WHERE a2.species=a1.species);

-- 24. Animals with same health_status as 'Leopard'
SELECT * FROM AnimalTracking WHERE health_status=(SELECT health_status FROM AnimalTracking WHERE species='Leopard');

-- 25. Animals with last_seen earlier than average
SELECT * FROM AnimalTracking WHERE last_seen < (SELECT AVG(UNIX_TIMESTAMP(last_seen)) FROM AnimalTracking);

-- 26. Animals with longest movement_pattern
SELECT * FROM AnimalTracking WHERE LENGTH(movement_pattern)=(SELECT MAX(LENGTH(movement_pattern)) FROM AnimalTracking);

-- 27. Species with multiple trackers
SELECT species, COUNT(DISTINCT tracker_id) AS trackers FROM AnimalTracking GROUP BY species HAVING trackers>1;

-- 28. Animals not 'Healthy'
SELECT * FROM AnimalTracking WHERE health_status<>'Healthy';

-- 29. Count animals per tracker
SELECT tracker_id, COUNT(*) AS total FROM AnimalTracking GROUP BY tracker_id;

-- 30. Animals seen at same location as 'Nagarhole Zone F1'
SELECT * FROM AnimalTracking WHERE last_location=(SELECT last_location FROM AnimalTracking WHERE last_location='Nagarhole Zone F1' LIMIT 1);

-- 31. Animals seen today per species
SELECT species, COUNT(*) AS total FROM AnimalTracking WHERE DATE(last_seen)=CURDATE() GROUP BY species;

-- 32. Animals seen this month
SELECT * FROM AnimalTracking WHERE MONTH(last_seen)=MONTH(CURDATE());

-- 33. Join with HealthRecords table (example)
SELECT a.id,a.species,h.checkup_date,h.notes
FROM AnimalTracking a
JOIN HealthRecords h ON a.animal_id=h.animal_id;

-- 34. Left join to include all tracked animals
SELECT a.species,h.notes FROM AnimalTracking a LEFT JOIN HealthRecords h ON a.animal_id=h.animal_id;

-- 35. Right join to show all health records
SELECT a.species,h.notes FROM AnimalTracking a RIGHT JOIN HealthRecords h ON a.animal_id=h.animal_id;

-- 36. Animals moving in certain pattern
SELECT * FROM AnimalTracking WHERE movement_pattern LIKE '%Patrolling%';

-- 37. Animals seen in last week
SELECT * FROM AnimalTracking WHERE last_seen >= NOW()-INTERVAL 7 DAY;

-- 38. Count of animals per location
SELECT last_location, COUNT(*) AS total FROM AnimalTracking GROUP BY last_location;

-- 39. Animals last seen in morning hours
SELECT * FROM AnimalTracking WHERE HOUR(last_seen) BETWEEN 5 AND 11;

-- 40. Animals with first word of species
SELECT species, SUBSTRING_INDEX(species,' ',1) AS first_word FROM AnimalTracking;

-- 41. User-defined function to classify health
DELIMITER //
CREATE FUNCTION health_rating(status VARCHAR(50))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF status='Healthy' THEN RETURN 'Good';
  ELSEIF status='Under Observation' THEN RETURN 'Monitor';
  ELSEIF status='Injured' THEN RETURN 'Critical';
  ELSE RETURN 'Unknown';
  END IF;
END;
//
DELIMITER ;

-- 42. Use UDF for health rating
SELECT species, health_status, health_rating(health_status) AS rating FROM AnimalTracking;

-- 43. Animals rated 'Critical'
SELECT * FROM AnimalTracking WHERE health_rating(health_status)='Critical';

-- 44. Order by last_seen descending
SELECT * FROM AnimalTracking ORDER BY last_seen DESC;

-- 45. Order by species ascending
SELECT * FROM AnimalTracking ORDER BY species ASC;

-- 46. Count animals per health_rating
SELECT health_rating(health_status) AS rating, COUNT(*) AS total FROM AnimalTracking GROUP BY rating;

-- 47. Species with multiple sightings today
SELECT species, COUNT(*) AS total FROM AnimalTracking WHERE DATE(last_seen)=CURDATE() GROUP BY species HAVING total>1;

-- 48. Animals seen in same hour as 'Bengal Tiger'
SELECT * FROM AnimalTracking WHERE HOUR(last_seen)=(SELECT HOUR(last_seen) FROM AnimalTracking WHERE species='Bengal Tiger' LIMIT 1);

-- 49. Most recent 5 sightings
SELECT * FROM AnimalTracking ORDER BY last_seen DESC LIMIT 5;

-- 50. Animals with movement_pattern length above average
SELECT * FROM AnimalTracking WHERE LENGTH(movement_pattern) > (SELECT AVG(LENGTH(movement_pattern)) FROM AnimalTracking);


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

-- 1. List all stations
SELECT * FROM WeatherStations;

-- 2. Uppercase station names
SELECT id, UPPER(name) AS name_upper FROM WeatherStations;

-- 3. Length of sensor_types
SELECT id, LENGTH(sensor_types) AS sensor_len FROM WeatherStations;

-- 4. Stations installed in 2022
SELECT * FROM WeatherStations WHERE YEAR(installed_date)=2022;

-- 5. Extract date from installed_date
SELECT id, DATE(installed_date) AS install_day FROM WeatherStations;

-- 6. Active stations
SELECT * FROM WeatherStations WHERE status='Active';

-- 7. Concatenate name and location
SELECT CONCAT(name,' - ',location) AS label FROM WeatherStations;

-- 8. Stations with humidity > 80
SELECT * FROM WeatherStations WHERE humidity>80;

-- 9. Replace spaces in location with underscores
SELECT REPLACE(location,' ','_') AS loc_fmt FROM WeatherStations;

-- 10. Round temperature
SELECT id, ROUND(temperature,1) AS temp_rounded FROM WeatherStations;

-- 11. Count total stations
SELECT COUNT(*) AS total_stations FROM WeatherStations;

-- 12. Count per status
SELECT status, COUNT(*) AS total FROM WeatherStations GROUP BY status;

-- 13. Max temperature recorded
SELECT MAX(temperature) AS max_temp FROM WeatherStations;

-- 14. Min humidity recorded
SELECT MIN(humidity) AS min_hum FROM WeatherStations;

-- 15. Average temperature
SELECT AVG(temperature) AS avg_temp FROM WeatherStations;

-- 16. Stations installed before 2022
SELECT * FROM WeatherStations WHERE installed_date<'2022-01-01';

-- 17. Stations installed after 2022-06-01
SELECT * FROM WeatherStations WHERE installed_date>'2022-06-01';

-- 18. Stations with 'Temperature' sensor
SELECT * FROM WeatherStations WHERE sensor_types LIKE '%Temperature%';

-- 19. Stations with multiple sensors
SELECT * FROM WeatherStations WHERE sensor_types LIKE '%,%';

-- 20. Extract month of installation
SELECT id, MONTH(installed_date) AS install_month FROM WeatherStations;

-- 21. Stations with temperature above average
SELECT * FROM WeatherStations WHERE temperature>(SELECT AVG(temperature) FROM WeatherStations);

-- 22. Stations with humidity below average
SELECT * FROM WeatherStations WHERE humidity<(SELECT AVG(humidity) FROM WeatherStations);

-- 23. Latest installed station
SELECT * FROM WeatherStations ORDER BY installed_date DESC LIMIT 1;

-- 24. Oldest installed station
SELECT * FROM WeatherStations ORDER BY installed_date ASC LIMIT 1;

-- 25. Count stations per location
SELECT location, COUNT(*) AS total FROM WeatherStations GROUP BY location;

-- 26. Stations with same status as 'Kanha Central Station'
SELECT * FROM WeatherStations WHERE status=(SELECT status FROM WeatherStations WHERE name='Kanha Central Station');

-- 27. Stations with temperature within range 25-30
SELECT * FROM WeatherStations WHERE temperature BETWEEN 25 AND 30;

-- 28. Stations with humidity >= 70 AND temperature <=30
SELECT * FROM WeatherStations WHERE humidity>=70 AND temperature<=30;

-- 29. Stations sorted by temperature descending
SELECT * FROM WeatherStations ORDER BY temperature DESC;

-- 30. Stations sorted by humidity ascending
SELECT * FROM WeatherStations ORDER BY humidity ASC;

-- 31. Count stations per installed year
SELECT YEAR(installed_date) AS year, COUNT(*) AS total FROM WeatherStations GROUP BY year;

-- 32. Join with MaintenanceRecords table (example)
SELECT w.id,w.name,m.last_check,m.remarks FROM WeatherStations w
JOIN MaintenanceRecords m ON w.id=m.station_id;

-- 33. Left join to include all stations
SELECT w.name,m.remarks FROM WeatherStations w LEFT JOIN MaintenanceRecords m ON w.id=m.station_id;

-- 34. Right join to include all maintenance records
SELECT w.name,m.remarks FROM WeatherStations w RIGHT JOIN MaintenanceRecords m ON w.id=m.station_id;

-- 35. Stations with 'Humidity' sensor
SELECT * FROM WeatherStations WHERE FIND_IN_SET('Humidity',REPLACE(sensor_types,', ',','))>0;

-- 36. Stations installed this year
SELECT * FROM WeatherStations WHERE YEAR(installed_date)=YEAR(CURDATE());

-- 37. Stations inactive
SELECT * FROM WeatherStations WHERE status='Inactive';

-- 38. Stations with temperature above median (subquery)
SELECT * FROM WeatherStations WHERE temperature>(SELECT AVG(temperature) FROM WeatherStations);

-- 39. Count stations with 'Rainfall' sensor
SELECT COUNT(*) FROM WeatherStations WHERE sensor_types LIKE '%Rainfall%';

-- 40. Stations installed in last 12 months
SELECT * FROM WeatherStations WHERE installed_date >= CURDATE()-INTERVAL 12 MONTH;

-- 41. Stations with first word of name
SELECT name, SUBSTRING_INDEX(name,' ',1) AS first_word FROM WeatherStations;

-- 42. User-defined function to classify temperature
DELIMITER //
CREATE FUNCTION temp_status(t FLOAT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF t<25 THEN RETURN 'Cool';
  ELSEIF t BETWEEN 25 AND 30 THEN RETURN 'Moderate';
  ELSE RETURN 'Hot';
  END IF;
END;
//
DELIMITER ;

-- 43. Use UDF for temperature status
SELECT name, temperature, temp_status(temperature) AS temp_rating FROM WeatherStations;

-- 44. Stations rated 'Hot'
SELECT * FROM WeatherStations WHERE temp_status(temperature)='Hot';

-- 45. Order by installed_date descending
SELECT * FROM WeatherStations ORDER BY installed_date DESC;

-- 46. Order by location ascending
SELECT * FROM WeatherStations ORDER BY location ASC;

-- 47. Count stations per temp_rating
SELECT temp_status(temperature) AS rating, COUNT(*) AS total FROM WeatherStations GROUP BY rating;

-- 48. Stations with same temp_status as 'Bandipur West Station'
SELECT * FROM WeatherStations WHERE temp_status(temperature)=(SELECT temp_status(temperature) FROM WeatherStations WHERE name='Bandipur West Station');

-- 49. Top 5 hottest stations
SELECT * FROM WeatherStations ORDER BY temperature DESC LIMIT 5;

-- 50. Stations with humidity above average
SELECT * FROM WeatherStations WHERE humidity>(SELECT AVG(humidity) FROM WeatherStations);


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

-- 1. List all images
SELECT * FROM SatelliteImagery;

-- 2. Uppercase area_covered
SELECT id, UPPER(area_covered) AS area_upper FROM SatelliteImagery;

-- 3. Length of analysis_report
SELECT id, LENGTH(analysis_report) AS report_len FROM SatelliteImagery;

-- 4. Images captured in June 2025
SELECT * FROM SatelliteImagery WHERE MONTH(image_date)=6 AND YEAR(image_date)=2025;

-- 5. Extract year from image_date
SELECT id, YEAR(image_date) AS img_year FROM SatelliteImagery;

-- 6. Pending images
SELECT * FROM SatelliteImagery WHERE status='Pending';

-- 7. Concatenate area and captured_by
SELECT CONCAT(area_covered,' - ',captured_by) AS label FROM SatelliteImagery;

-- 8. Images with resolution finer than 1m/pixel
SELECT * FROM SatelliteImagery WHERE resolution<'1m/pixel';

-- 9. Replace spaces in area_covered with underscores
SELECT REPLACE(area_covered,' ','_') AS area_fmt FROM SatelliteImagery;

-- 10. Count total images
SELECT COUNT(*) AS total_images FROM SatelliteImagery;

-- 11. Count per status
SELECT status, COUNT(*) AS total FROM SatelliteImagery GROUP BY status;

-- 12. Max resolution (example with numerical extraction)
SELECT MAX(CAST(SUBSTRING_INDEX(resolution,'m',1) AS DECIMAL(5,2))) AS max_res_m FROM SatelliteImagery;

-- 13. Min resolution
SELECT MIN(CAST(SUBSTRING_INDEX(resolution,'m',1) AS DECIMAL(5,2))) AS min_res_m FROM SatelliteImagery;

-- 14. Latest captured image
SELECT * FROM SatelliteImagery ORDER BY image_date DESC LIMIT 1;

-- 15. Earliest captured image
SELECT * FROM SatelliteImagery ORDER BY image_date ASC LIMIT 1;

-- 16. Count images per captured_by
SELECT captured_by, COUNT(*) AS total FROM SatelliteImagery GROUP BY captured_by;

-- 17. Images captured by 'ISRO CartoSat-3'
SELECT * FROM SatelliteImagery WHERE captured_by='ISRO CartoSat-3';

-- 18. Images captured this year
SELECT * FROM SatelliteImagery WHERE YEAR(image_date)=YEAR(CURDATE());

-- 19. Images pending analysis
SELECT * FROM SatelliteImagery WHERE status='Pending';

-- 20. Subquery: images with same status as id=1
SELECT * FROM SatelliteImagery WHERE status=(SELECT status FROM SatelliteImagery WHERE id=1);

-- 21. Images with resolution better than average
SELECT * FROM SatelliteImagery WHERE CAST(SUBSTRING_INDEX(resolution,'m',1) AS DECIMAL(5,2))<(SELECT AVG(CAST(SUBSTRING_INDEX(resolution,'m',1) AS DECIMAL(5,2))) FROM SatelliteImagery);

-- 22. Count images per month
SELECT MONTH(image_date) AS month, COUNT(*) AS total FROM SatelliteImagery GROUP BY month;

-- 23. Images with 'Kanha' in area
SELECT * FROM SatelliteImagery WHERE area_covered LIKE '%Kanha%';

-- 24. Images with 'Zone' in area_covered
SELECT * FROM SatelliteImagery WHERE area_covered LIKE '%Zone%';

-- 25. Images captured by ISRO or NASA
SELECT * FROM SatelliteImagery WHERE captured_by IN ('ISRO Sat-GeoEye','NASA Landsat-9');

-- 26. Images captured before May 2025
SELECT * FROM SatelliteImagery WHERE image_date<'2025-05-01';

-- 27. Images captured after May 2025
SELECT * FROM SatelliteImagery WHERE image_date>'2025-05-31';

-- 28. Count images per area_covered
SELECT area_covered, COUNT(*) AS total FROM SatelliteImagery GROUP BY area_covered;

-- 29. Images with resolution between 0.5m and 1m
SELECT * FROM SatelliteImagery WHERE CAST(SUBSTRING_INDEX(resolution,'m',1) AS DECIMAL(5,2)) BETWEEN 0.5 AND 1;

-- 30. Order images by image_date descending
SELECT * FROM SatelliteImagery ORDER BY image_date DESC;

-- 31. Order images by area_covered ascending
SELECT * FROM SatelliteImagery ORDER BY area_covered ASC;

-- 32. Join with WeatherStations (example: weather data on same date/area)
SELECT s.id,s.area_covered,w.temperature,w.humidity 
FROM SatelliteImagery s
JOIN WeatherStations w ON s.area_covered=w.location AND s.image_date=w.installed_date;

-- 33. Left join to include all imagery
SELECT s.area_covered,w.temperature 
FROM SatelliteImagery s LEFT JOIN WeatherStations w ON s.area_covered=w.location;

-- 34. Right join to include all weather stations
SELECT s.area_covered,w.temperature 
FROM SatelliteImagery s RIGHT JOIN WeatherStations w ON s.area_covered=w.location;

-- 35. Images analyzed with 'finer' resolution than 1m
SELECT * FROM SatelliteImagery WHERE status='Analyzed' AND CAST(SUBSTRING_INDEX(resolution,'m',1) AS DECIMAL(5,2))<1;

-- 36. Stations with image_date in last 30 days
SELECT * FROM SatelliteImagery WHERE image_date>=CURDATE()-INTERVAL 30 DAY;

-- 37. First 5 words of analysis_report
SELECT id, SUBSTRING_INDEX(analysis_report,' ',5) AS report_preview FROM SatelliteImagery;

-- 38. User-defined function to classify resolution
DELIMITER //
CREATE FUNCTION resolution_class(res VARCHAR(20))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF CAST(SUBSTRING_INDEX(res,'m',1) AS DECIMAL(5,2))<=0.5 THEN RETURN 'High';
  ELSEIF CAST(SUBSTRING_INDEX(res,'m',1) AS DECIMAL(5,2))<=1 THEN RETURN 'Medium';
  ELSE RETURN 'Low';
  END IF;
END;
//
DELIMITER ;

-- 39. Apply resolution_class UDF
SELECT id, resolution, resolution_class(resolution) AS res_rating FROM SatelliteImagery;

-- 40. Images with High resolution
SELECT * FROM SatelliteImagery WHERE resolution_class(resolution)='High';

-- 41. Count images per resolution_class
SELECT resolution_class(resolution) AS rating, COUNT(*) AS total FROM SatelliteImagery GROUP BY rating;

-- 42. Images captured by same source as id=5
SELECT * FROM SatelliteImagery WHERE captured_by=(SELECT captured_by FROM SatelliteImagery WHERE id=5);

-- 43. Images with 'forest' in analysis_report
SELECT * FROM SatelliteImagery WHERE analysis_report LIKE '%forest%';

-- 44. Count images per status
SELECT status, COUNT(*) AS total FROM SatelliteImagery GROUP BY status;

-- 45. Images pending and captured by PlanetScope
SELECT * FROM SatelliteImagery WHERE status='Pending' AND captured_by LIKE '%PlanetScope%';

-- 46. Images captured between two dates
SELECT * FROM SatelliteImagery WHERE image_date BETWEEN '2025-05-01' AND '2025-06-01';

-- 47. Images with analysis_report length > 30
SELECT * FROM SatelliteImagery WHERE LENGTH(analysis_report)>30;

-- 48. Stations with file_path ending in .jpg
SELECT * FROM SatelliteImagery WHERE file_path LIKE '%.jpg';

-- 49. Top 5 latest images
SELECT * FROM SatelliteImagery ORDER BY image_date DESC LIMIT 5;

-- 50. Images with status 'Analyzed' and resolution Medium or High
SELECT * FROM SatelliteImagery WHERE status='Analyzed' AND resolution_class(resolution) IN ('Medium','High');

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

-- 1. List all reports
SELECT * FROM IllegalLoggingReports;

-- 2. Reports in June 2025
SELECT * FROM IllegalLoggingReports WHERE MONTH(report_date)=6 AND YEAR(report_date)=2025;

-- 3. Uppercase location
SELECT id, UPPER(location) AS loc_upper FROM IllegalLoggingReports;

-- 4. Reports with status 'Resolved'
SELECT * FROM IllegalLoggingReports WHERE status='Resolved';

-- 5. Count total reports
SELECT COUNT(*) AS total_reports FROM IllegalLoggingReports;

-- 6. Count per status
SELECT status, COUNT(*) AS total FROM IllegalLoggingReports GROUP BY status;

-- 7. Reports containing 'tree'
SELECT * FROM IllegalLoggingReports WHERE description LIKE '%tree%';

-- 8. Replace spaces in reporter_name with underscores
SELECT REPLACE(reporter_name,' ','_') AS reporter_fmt FROM IllegalLoggingReports;

-- 9. Latest report
SELECT * FROM IllegalLoggingReports ORDER BY report_date DESC LIMIT 1;

-- 10. Earliest report
SELECT * FROM IllegalLoggingReports ORDER BY report_date ASC LIMIT 1;

-- 11. Reports by 'Ravi Sharma'
SELECT * FROM IllegalLoggingReports WHERE reporter_name='Ravi Sharma';

-- 12. Reports pending or ongoing
SELECT * FROM IllegalLoggingReports WHERE status IN ('Pending','Ongoing');

-- 13. Reports with description length > 50
SELECT * FROM IllegalLoggingReports WHERE LENGTH(description)>50;

-- 14. Concatenate reporter and status
SELECT CONCAT(reporter_name,' - ',status) AS report_label FROM IllegalLoggingReports;

-- 15. Subquery: reports with same status as id=1
SELECT * FROM IllegalLoggingReports WHERE status=(SELECT status FROM IllegalLoggingReports WHERE id=1);

-- 16. Count reports per authority_contacted
SELECT authority_contacted, COUNT(*) AS total FROM IllegalLoggingReports GROUP BY authority_contacted;

-- 17. Reports resolved this month
SELECT * FROM IllegalLoggingReports WHERE status='Resolved' AND MONTH(report_date)=MONTH(CURDATE());

-- 18. Reports before June 2025
SELECT * FROM IllegalLoggingReports WHERE report_date<'2025-06-01';

-- 19. Reports after May 2025
SELECT * FROM IllegalLoggingReports WHERE report_date>'2025-05-31';

-- 20. Reports under investigation
SELECT * FROM IllegalLoggingReports WHERE status='Under Investigation';

-- 21. Count reports per month
SELECT MONTH(report_date) AS month, COUNT(*) AS total FROM IllegalLoggingReports GROUP BY month;

-- 22. Reports mentioning 'drone'
SELECT * FROM IllegalLoggingReports WHERE description LIKE '%drone%';

-- 23. Pending reports
SELECT * FROM IllegalLoggingReports WHERE status='Pending';

-- 24. Reports escalated
SELECT * FROM IllegalLoggingReports WHERE status='Escalated';

-- 25. Reports monitored or watch initiated
SELECT * FROM IllegalLoggingReports WHERE status IN ('Monitoring','Watch Initiated');

-- 26. Subquery: reports reported by same reporter as id=5
SELECT * FROM IllegalLoggingReports WHERE reporter_name=(SELECT reporter_name FROM IllegalLoggingReports WHERE id=5);

-- 27. Count reports per location
SELECT location, COUNT(*) AS total FROM IllegalLoggingReports GROUP BY location;

-- 28. Join example with WeatherStations (assume same area/location)
SELECT l.id, l.location, w.temperature, w.humidity 
FROM IllegalLoggingReports l
JOIN WeatherStations w ON l.location=w.location;

-- 29. Left join to include all reports
SELECT l.id, l.location, w.temperature 
FROM IllegalLoggingReports l LEFT JOIN WeatherStations w ON l.location=w.location;

-- 30. Right join to include all weather stations
SELECT l.id, l.location, w.temperature 
FROM IllegalLoggingReports l RIGHT JOIN WeatherStations w ON l.location=w.location;

-- 31. Reports by multiple reporters
SELECT * FROM IllegalLoggingReports WHERE reporter_name IN ('Ravi Sharma','Sneha Patil','Asif Khan');

-- 32. Reports with description containing 'illegal'
SELECT * FROM IllegalLoggingReports WHERE description LIKE '%illegal%';

-- 33. Count reports per action_taken
SELECT action_taken, COUNT(*) AS total FROM IllegalLoggingReports GROUP BY action_taken;

-- 34. Reports sorted by report_date descending
SELECT * FROM IllegalLoggingReports ORDER BY report_date DESC;

-- 35. Reports sorted by reporter_name ascending
SELECT * FROM IllegalLoggingReports ORDER BY reporter_name ASC;

-- 36. Subquery: reports with same authority_contacted as id=3
SELECT * FROM IllegalLoggingReports WHERE authority_contacted=(SELECT authority_contacted FROM IllegalLoggingReports WHERE id=3);

-- 37. Reports with 'core' in location
SELECT * FROM IllegalLoggingReports WHERE location LIKE '%core%';

-- 38. Reports between two dates
SELECT * FROM IllegalLoggingReports WHERE report_date BETWEEN '2025-05-28' AND '2025-06-10';

-- 39. Reports with status not 'Resolved'
SELECT * FROM IllegalLoggingReports WHERE status<>'Resolved';

-- 40. Reports where description contains more than 3 words
SELECT * FROM IllegalLoggingReports WHERE LENGTH(description)-LENGTH(REPLACE(description,' ',' '))>=3;

-- 41. User-defined function to classify status
DELIMITER //
CREATE FUNCTION status_class(s VARCHAR(50))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF s IN ('Resolved','Escalated') THEN RETURN 'Closed';
  ELSEIF s IN ('Pending','Under Investigation') THEN RETURN 'Open';
  ELSE RETURN 'Monitoring';
  END IF;
END;
//
DELIMITER ;

-- 42. Apply status_class UDF
SELECT id, status, status_class(status) AS status_category FROM IllegalLoggingReports;

-- 43. Count per status category
SELECT status_class(status) AS category, COUNT(*) AS total FROM IllegalLoggingReports GROUP BY category;

-- 44. Reports with 'tree' or 'logs' in description
SELECT * FROM IllegalLoggingReports WHERE description LIKE '%tree%' OR description LIKE '%logs%';

-- 45. Reports pending and reported by 'Rajeev Nayak'
SELECT * FROM IllegalLoggingReports WHERE status='Pending' AND reporter_name='Rajeev Nayak';

-- 46. Reports action taken like '%drone%'
SELECT * FROM IllegalLoggingReports WHERE action_taken LIKE '%drone%';

-- 47. Reports resolved before June 5, 2025
SELECT * FROM IllegalLoggingReports WHERE status='Resolved' AND report_date<'2025-06-05';

-- 48. Count reports per reporter
SELECT reporter_name, COUNT(*) AS total FROM IllegalLoggingReports GROUP BY reporter_name;

-- 49. Top 5 latest reports
SELECT * FROM IllegalLoggingReports ORDER BY report_date DESC LIMIT 5;

-- 50. Reports with status Open (using UDF)
SELECT * FROM IllegalLoggingReports WHERE status_class(status)='Open';


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

-- 1. Select all
SELECT * FROM ForestBoundaries;

-- 2. Active boundaries
SELECT * FROM ForestBoundaries WHERE status='Active';

-- 3. Boundaries larger than 250 sq km
SELECT * FROM ForestBoundaries WHERE area_sq_km>250;

-- 4. Uppercase names
SELECT UPPER(name) AS name_upper FROM ForestBoundaries;

-- 5. Boundaries established before 2010
SELECT * FROM ForestBoundaries WHERE established_date<'2010-01-01';

-- 6. Count total boundaries
SELECT COUNT(*) AS total_boundaries FROM ForestBoundaries;

-- 7. Count per boundary_type
SELECT boundary_type, COUNT(*) AS total FROM ForestBoundaries GROUP BY boundary_type;

-- 8. Boundaries with 'Core' type
SELECT * FROM ForestBoundaries WHERE boundary_type='Core';

-- 9. Concatenate name and status
SELECT CONCAT(name,' - ',status) AS name_status FROM ForestBoundaries;

-- 10. Replace spaces in name with underscores
SELECT REPLACE(name,' ','_') AS name_fmt FROM ForestBoundaries;

-- 11. Latest established boundary
SELECT * FROM ForestBoundaries ORDER BY established_date DESC LIMIT 1;

-- 12. Earliest established boundary
SELECT * FROM ForestBoundaries ORDER BY established_date ASC LIMIT 1;

-- 13. Subquery: boundaries in same location as id=1
SELECT * FROM ForestBoundaries WHERE location=(SELECT location FROM ForestBoundaries WHERE id=1);

-- 14. Boundaries with area between 200 and 300 sq km
SELECT * FROM ForestBoundaries WHERE area_sq_km BETWEEN 200 AND 300;

-- 15. Count boundaries per status
SELECT status, COUNT(*) AS total FROM ForestBoundaries GROUP BY status;

-- 16. Boundaries containing 'Line' in name
SELECT * FROM ForestBoundaries WHERE name LIKE '%Line%';

-- 17. Boundaries with 'Monitoring' status
SELECT * FROM ForestBoundaries WHERE status='Monitoring';

-- 18. Boundaries not active
SELECT * FROM ForestBoundaries WHERE status<>'Active';

-- 19. Sort by area descending
SELECT * FROM ForestBoundaries ORDER BY area_sq_km DESC;

-- 20. Sort by name ascending
SELECT * FROM ForestBoundaries ORDER BY name ASC;

-- 21. Boundaries with map_reference starting with 'MAP_K'
SELECT * FROM ForestBoundaries WHERE map_reference LIKE 'MAP_K%';

-- 22. Count per location
SELECT location, COUNT(*) AS total FROM ForestBoundaries GROUP BY location;

-- 23. Boundaries with 'Buffer' or 'Protected'
SELECT * FROM ForestBoundaries WHERE boundary_type IN ('Buffer','Protected');

-- 24. Boundaries with area larger than average
SELECT * FROM ForestBoundaries WHERE area_sq_km>(SELECT AVG(area_sq_km) FROM ForestBoundaries);

-- 25. Boundaries with area smaller than max
SELECT * FROM ForestBoundaries WHERE area_sq_km<(SELECT MAX(area_sq_km) FROM ForestBoundaries);

-- 26. Boundaries established in 2005
SELECT * FROM ForestBoundaries WHERE YEAR(established_date)=2005;

-- 27. Left join example with IllegalLoggingReports (matching location)
SELECT f.id, f.name, l.reporter_name, l.status 
FROM ForestBoundaries f LEFT JOIN IllegalLoggingReports l ON f.location=l.location;

-- 28. Inner join example with IllegalLoggingReports
SELECT f.id, f.name, l.id AS report_id, l.status 
FROM ForestBoundaries f INNER JOIN IllegalLoggingReports l ON f.location=l.location;

-- 29. Right join example
SELECT f.id, f.name, l.id AS report_id 
FROM ForestBoundaries f RIGHT JOIN IllegalLoggingReports l ON f.location=l.location;

-- 30. Boundaries with name length >20
SELECT * FROM ForestBoundaries WHERE LENGTH(name)>20;

-- 31. Subquery: boundaries with same status as id=5
SELECT * FROM ForestBoundaries WHERE status=(SELECT status FROM ForestBoundaries WHERE id=5);

-- 32. Boundaries containing 'Coastal' or 'Mountain'
SELECT * FROM ForestBoundaries WHERE boundary_type IN ('Coastal','Mountain');

-- 33. Count per boundary_type and status
SELECT boundary_type, status, COUNT(*) AS total FROM ForestBoundaries GROUP BY boundary_type,status;

-- 34. Boundaries with area < median
SELECT * FROM ForestBoundaries WHERE area_sq_km<(
    SELECT AVG(area_sq_km) FROM (
        SELECT area_sq_km FROM ForestBoundaries
    ) AS sub
);

-- 35. Boundaries established after 2010 and active
SELECT * FROM ForestBoundaries WHERE established_date>'2010-01-01' AND status='Active';

-- 36. Substring of map_reference
SELECT id, SUBSTRING(map_reference,5,3) AS map_code FROM ForestBoundaries;

-- 37. Boundaries with 'Zone A' in location
SELECT * FROM ForestBoundaries WHERE location LIKE '%Zone A%';

-- 38. Boundaries with area rounded
SELECT id, name, ROUND(area_sq_km) AS area_rounded FROM ForestBoundaries;

-- 39. Boundaries with ceiling of area
SELECT id, name, CEIL(area_sq_km) AS area_ceil FROM ForestBoundaries;

-- 40. Boundaries with floor of area
SELECT id, name, FLOOR(area_sq_km) AS area_floor FROM ForestBoundaries;

-- 41. User-defined function for boundary size category
DELIMITER //
CREATE FUNCTION size_category(a FLOAT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF a<200 THEN RETURN 'Small';
  ELSEIF a<=300 THEN RETURN 'Medium';
  ELSE RETURN 'Large';
  END IF;
END;
//
DELIMITER ;

-- 42. Apply size_category function
SELECT id, name, area_sq_km, size_category(area_sq_km) AS size_cat FROM ForestBoundaries;

-- 43. Count per size category
SELECT size_category(area_sq_km) AS category, COUNT(*) AS total FROM ForestBoundaries GROUP BY category;

-- 44. Boundaries with 'Core' and 'Active'
SELECT * FROM ForestBoundaries WHERE boundary_type='Core' AND status='Active';

-- 45. Boundaries with 'Buffer' and 'Monitoring'
SELECT * FROM ForestBoundaries WHERE boundary_type='Buffer' AND status='Monitoring';

-- 46. Boundaries with location containing 'Zone'
SELECT * FROM ForestBoundaries WHERE location LIKE '%Zone%';

-- 47. Subquery: boundaries with area equal to max
SELECT * FROM ForestBoundaries WHERE area_sq_km=(SELECT MAX(area_sq_km) FROM ForestBoundaries);

-- 48. Boundaries not under review
SELECT * FROM ForestBoundaries WHERE status<>'Under Review';

-- 49. Boundaries established in 2000s decade
SELECT * FROM ForestBoundaries WHERE YEAR(established_date) BETWEEN 2000 AND 2009;

-- 50. Top 5 largest boundaries
SELECT * FROM ForestBoundaries ORDER BY area_sq_km DESC LIMIT 5;


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

-- 1. Select all
SELECT * FROM CommunityOutreach;

-- 2. Completed programs
SELECT * FROM CommunityOutreach WHERE status='Completed';

-- 3. Programs targeting School Children
SELECT * FROM CommunityOutreach WHERE target_group='School Children';

-- 4. Uppercase program names
SELECT UPPER(program_name) AS program_upper FROM CommunityOutreach;

-- 5. Programs held after June 5, 2025
SELECT * FROM CommunityOutreach WHERE event_date>'2025-06-05';

-- 6. Count total programs
SELECT COUNT(*) AS total_programs FROM CommunityOutreach;

-- 7. Count per target_group
SELECT target_group, COUNT(*) AS total FROM CommunityOutreach GROUP BY target_group;

-- 8. Programs in Kanha Zone B1
SELECT * FROM CommunityOutreach WHERE location='Kanha Zone B1';

-- 9. Concatenate program_name and status
SELECT CONCAT(program_name,' - ',status) AS program_status FROM CommunityOutreach;

-- 10. Replace spaces in program_name with underscores
SELECT REPLACE(program_name,' ','_') AS program_fmt FROM CommunityOutreach;

-- 11. Latest event
SELECT * FROM CommunityOutreach ORDER BY event_date DESC LIMIT 1;

-- 12. Earliest event
SELECT * FROM CommunityOutreach ORDER BY event_date ASC LIMIT 1;

-- 13. Subquery: programs in same location as id=1
SELECT * FROM CommunityOutreach WHERE location=(SELECT location FROM CommunityOutreach WHERE id=1);

-- 14. Programs between 2025-06-01 and 2025-06-10
SELECT * FROM CommunityOutreach WHERE event_date BETWEEN '2025-06-01' AND '2025-06-10';

-- 15. Count per status
SELECT status, COUNT(*) AS total FROM CommunityOutreach GROUP BY status;

-- 16. Programs with 'Workshop' in name
SELECT * FROM CommunityOutreach WHERE program_name LIKE '%Workshop%';

-- 17. Programs targeting Tribal Youth
SELECT * FROM CommunityOutreach WHERE target_group='Tribal Youth';

-- 18. Programs not completed
SELECT * FROM CommunityOutreach WHERE status<>'Completed';

-- 19. Sort by event_date descending
SELECT * FROM CommunityOutreach ORDER BY event_date DESC;

-- 20. Sort by program_name ascending
SELECT * FROM CommunityOutreach ORDER BY program_name ASC;

-- 21. Programs with location containing 'Kanha'
SELECT * FROM CommunityOutreach WHERE location LIKE '%Kanha%';

-- 22. Count per location
SELECT location, COUNT(*) AS total FROM CommunityOutreach GROUP BY location;

-- 23. Programs targeting Schools or Villagers
SELECT * FROM CommunityOutreach WHERE target_group IN ('School Children','Local Villagers');

-- 24. Programs after average event_date
SELECT * FROM CommunityOutreach WHERE event_date>(SELECT AVG(event_date) FROM CommunityOutreach);

-- 25. Programs before latest event
SELECT * FROM CommunityOutreach WHERE event_date<(SELECT MAX(event_date) FROM CommunityOutreach);

-- 26. Programs in June 2025
SELECT * FROM CommunityOutreach WHERE MONTH(event_date)=6 AND YEAR(event_date)=2025;

-- 27. Left join example with ForestBoundaries (matching location)
SELECT c.id, c.program_name, f.name AS boundary_name
FROM CommunityOutreach c LEFT JOIN ForestBoundaries f ON c.location=f.location;

-- 28. Inner join example
SELECT c.id, c.program_name, f.id AS boundary_id, f.status
FROM CommunityOutreach c INNER JOIN ForestBoundaries f ON c.location=f.location;

-- 29. Right join example
SELECT c.id, c.program_name, f.id AS boundary_id
FROM CommunityOutreach c RIGHT JOIN ForestBoundaries f ON c.location=f.location;

-- 30. Programs with name length >20
SELECT * FROM CommunityOutreach WHERE LENGTH(program_name)>20;

-- 31. Subquery: programs with same status as id=5
SELECT * FROM CommunityOutreach WHERE status=(SELECT status FROM CommunityOutreach WHERE id=5);

-- 32. Programs with target_group 'College Students' or 'Rural Women'
SELECT * FROM CommunityOutreach WHERE target_group IN ('College Students','Rural Women');

-- 33. Count per target_group and status
SELECT target_group, status, COUNT(*) AS total FROM CommunityOutreach GROUP BY target_group,status;

-- 34. Programs before median date
SELECT * FROM CommunityOutreach WHERE event_date<(
    SELECT AVG(event_date) FROM (
        SELECT event_date FROM CommunityOutreach
    ) AS sub
);

-- 35. Programs after June 1 and completed
SELECT * FROM CommunityOutreach WHERE event_date>'2025-06-01' AND status='Completed';

-- 36. Substring of program_name
SELECT id, SUBSTRING(program_name,1,10) AS prog_sub FROM CommunityOutreach;

-- 37. Programs with 'Drive' in name
SELECT * FROM CommunityOutreach WHERE program_name LIKE '%Drive%';

-- 38. Programs with feedback length >30
SELECT * FROM CommunityOutreach WHERE LENGTH(feedback)>30;

-- 39. Programs with day of week
SELECT id, program_name, DAYNAME(event_date) AS day_of_week FROM CommunityOutreach;

-- 40. Programs with month
SELECT id, program_name, MONTH(event_date) AS month_num FROM CommunityOutreach;

-- 41. User-defined function for program type based on target_group
DELIMITER //
CREATE FUNCTION program_type(tg VARCHAR(100))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF tg LIKE '%School%' THEN RETURN 'Education';
  ELSEIF tg LIKE '%Villagers%' OR tg LIKE '%Community%' THEN RETURN 'Awareness';
  ELSE RETURN 'Training';
  END IF;
END;
//
DELIMITER ;

-- 42. Apply program_type function
SELECT id, program_name, target_group, program_type(target_group) AS prog_type FROM CommunityOutreach;

-- 43. Count per program_type
SELECT program_type(target_group) AS type, COUNT(*) AS total FROM CommunityOutreach GROUP BY type;

-- 44. Programs completed targeting Forest Guards
SELECT * FROM CommunityOutreach WHERE target_group='Forest Guards' AND status='Completed';

-- 45. Programs completed targeting Tribal Youth
SELECT * FROM CommunityOutreach WHERE target_group='Tribal Youth' AND status='Completed';

-- 46. Programs with 'Forest' in name
SELECT * FROM CommunityOutreach WHERE program_name LIKE '%Forest%';

-- 47. Subquery: programs on same date as id=10
SELECT * FROM CommunityOutreach WHERE event_date=(SELECT event_date FROM CommunityOutreach WHERE id=10);

-- 48. Programs not targeting School Children
SELECT * FROM CommunityOutreach WHERE target_group<>'School Children';

-- 49. Programs in May 2025
SELECT * FROM CommunityOutreach WHERE MONTH(event_date)=5 AND YEAR(event_date)=2025;

-- 50. Top 5 latest events
SELECT * FROM CommunityOutreach ORDER BY event_date DESC LIMIT 5;

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

-- 1. Select all
SELECT * FROM BudgetAllocations;

-- 2. Fully utilized budgets
SELECT * FROM BudgetAllocations WHERE status='Utilized';

-- 3. Partially utilized budgets
SELECT * FROM BudgetAllocations WHERE status='Partially Utilized';

-- 4. Allocation amount > 5 million
SELECT * FROM BudgetAllocations WHERE allocation_amount>5000000;

-- 5. Departments with spent_amount < allocation_amount
SELECT * FROM BudgetAllocations WHERE spent_amount<allocation_amount;

-- 6. Remaining budget calculation
SELECT id, department, allocation_amount-spent_amount AS remaining_amount FROM BudgetAllocations;

-- 7. Count total departments
SELECT COUNT(*) AS total_departments FROM BudgetAllocations;

-- 8. Max allocation amount
SELECT * FROM BudgetAllocations ORDER BY allocation_amount DESC LIMIT 1;

-- 9. Min allocation amount
SELECT * FROM BudgetAllocations ORDER BY allocation_amount ASC LIMIT 1;

-- 10. Average allocation
SELECT AVG(allocation_amount) AS avg_allocation FROM BudgetAllocations;

-- 11. Departments above average allocation
SELECT * FROM BudgetAllocations WHERE allocation_amount>(SELECT AVG(allocation_amount) FROM BudgetAllocations);

-- 12. Departments below average allocation
SELECT * FROM BudgetAllocations WHERE allocation_amount<(SELECT AVG(allocation_amount) FROM BudgetAllocations);

-- 13. Departments with 'Forest' in name
SELECT * FROM BudgetAllocations WHERE department LIKE '%Forest%';

-- 14. Departments with 'Unit' in name
SELECT * FROM BudgetAllocations WHERE department LIKE '%Unit%';

-- 15. Sum of allocation per fiscal_year
SELECT fiscal_year, SUM(allocation_amount) AS total_allocated FROM BudgetAllocations GROUP BY fiscal_year;

-- 16. Sum of spent per fiscal_year
SELECT fiscal_year, SUM(spent_amount) AS total_spent FROM BudgetAllocations GROUP BY fiscal_year;

-- 17. Departments with 100% utilized
SELECT * FROM BudgetAllocations WHERE allocation_amount=spent_amount;

-- 18. Departments not spent
SELECT * FROM BudgetAllocations WHERE spent_amount=0;

-- 19. Concatenate department and fiscal_year
SELECT CONCAT(department,' - ',fiscal_year) AS dept_year FROM BudgetAllocations;

-- 20. Round allocation amount
SELECT id, department, ROUND(allocation_amount,-3) AS rounded_alloc FROM BudgetAllocations;

-- 21. Join with CommunityOutreach by department=program_name
SELECT b.id, b.department, c.program_name, c.status AS program_status
FROM BudgetAllocations b LEFT JOIN CommunityOutreach c ON b.department=c.program_name;

-- 22. Inner join example
SELECT b.id, b.department, c.id AS outreach_id, c.status
FROM BudgetAllocations b INNER JOIN CommunityOutreach c ON b.department=c.program_name;

-- 23. Left join example
SELECT b.id, b.department, c.id AS outreach_id
FROM BudgetAllocations b LEFT JOIN CommunityOutreach c ON b.department=c.program_name;

-- 24. Right join example
SELECT b.id, b.department, c.id AS outreach_id
FROM BudgetAllocations b RIGHT JOIN CommunityOutreach c ON b.department=c.program_name;

-- 25. Departments with allocation > 4 million
SELECT * FROM BudgetAllocations WHERE allocation_amount>4000000;

-- 26. Departments with allocation < 3 million
SELECT * FROM BudgetAllocations WHERE allocation_amount<3000000;

-- 27. Departments with remaining_amount >1 million
SELECT *, allocation_amount-spent_amount AS remaining_amount FROM BudgetAllocations HAVING remaining_amount>1000000;

-- 28. Subquery: departments with same status as id=6
SELECT * FROM BudgetAllocations WHERE status=(SELECT status FROM BudgetAllocations WHERE id=6);

-- 29. Departments in progress
SELECT * FROM BudgetAllocations WHERE status='In Progress';

-- 30. Departments ongoing
SELECT * FROM BudgetAllocations WHERE status='Ongoing';

-- 31. Departments unutilized
SELECT * FROM BudgetAllocations WHERE status='Unutilized';

-- 32. Departments partially utilized
SELECT * FROM BudgetAllocations WHERE status='Partially Utilized';

-- 33. Departments with remarks containing 'pending'
SELECT * FROM BudgetAllocations WHERE remarks LIKE '%pending%';

-- 34. Substring of purpose
SELECT id, SUBSTRING(purpose,1,30) AS purpose_snippet FROM BudgetAllocations;

-- 35. Departments allocated more than average
SELECT * FROM BudgetAllocations WHERE allocation_amount>(SELECT AVG(allocation_amount) FROM BudgetAllocations);

-- 36. Departments spent more than average
SELECT * FROM BudgetAllocations WHERE spent_amount>(SELECT AVG(spent_amount) FROM BudgetAllocations);

-- 37. Count per status
SELECT status, COUNT(*) AS total FROM BudgetAllocations GROUP BY status;

-- 38. Departments with allocation_amount between 2M and 5M
SELECT * FROM BudgetAllocations WHERE allocation_amount BETWEEN 2000000 AND 5000000;

-- 39. Departments with high remaining_amount
SELECT *, allocation_amount-spent_amount AS remaining_amount FROM BudgetAllocations ORDER BY remaining_amount DESC;

-- 40. Departments with allocation_amount rounded
SELECT id, department, ROUND(allocation_amount,-4) AS alloc_rounded FROM BudgetAllocations;

-- 41. Departments with fiscal year 2024-2025
SELECT * FROM BudgetAllocations WHERE fiscal_year='2024-2025';

-- 42. Departments not utilized fully
SELECT * FROM BudgetAllocations WHERE allocation_amount<>spent_amount;

-- 43. Departments with allocation_amount>spent_amount
SELECT * FROM BudgetAllocations WHERE allocation_amount>spent_amount;

-- 44. Subquery: departments with allocation > min allocation
SELECT * FROM BudgetAllocations WHERE allocation_amount>(SELECT MIN(allocation_amount) FROM BudgetAllocations);

-- 45. Subquery: departments with allocation < max allocation
SELECT * FROM BudgetAllocations WHERE allocation_amount<(SELECT MAX(allocation_amount) FROM BudgetAllocations);

-- 46. Departments with allocation and spent difference >1M
SELECT *, allocation_amount-spent_amount AS diff_amount FROM BudgetAllocations HAVING diff_amount>1000000;

-- 47. Built-in function: UPPER department
SELECT id, UPPER(department) AS dept_upper FROM BudgetAllocations;

-- 48. Built-in function: LENGTH of remarks
SELECT id, LENGTH(remarks) AS remarks_length FROM BudgetAllocations;

-- 49. User-defined function to classify budget status
DELIMITER //
CREATE FUNCTION budget_category(spent DECIMAL(12,2), alloc DECIMAL(12,2))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  IF spent=0 THEN RETURN 'Unutilized';
  ELSEIF spent=alloc THEN RETURN 'Fully Utilized';
  ELSEIF spent<alloc THEN RETURN 'Partially Utilized';
  ELSE RETURN 'Over Spent';
  END IF;
END;
//
DELIMITER ;

-- 50. Apply budget_category function
SELECT id, department, allocation_amount, spent_amount, budget_category(spent_amount, allocation_amount) AS category FROM BudgetAllocations;

