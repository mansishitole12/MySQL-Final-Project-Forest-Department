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
truncate table WildlifeSpecies

-- to remove complete records and attributes from table
drop table WildlifeSpecies;

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