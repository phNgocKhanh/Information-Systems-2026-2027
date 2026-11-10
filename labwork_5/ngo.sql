-- LABWORK 5: NGO DATABASE DESIGN
-- Report 11

CREATE DATABASE IF NOT EXISTS ngo;
USE ngo;

-- Table 1: Head_offices
CREATE TABLE Head_offices (
    head_office_id INT PRIMARY KEY,
    city VARCHAR(100),
    country VARCHAR(100),
    address VARCHAR(100),
    phone VARCHAR(100),
    director_name VARCHAR(100)
);

-- Table 2: Projects
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    code VARCHAR(100),
    title VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(15,2),
    person_in_charge VARCHAR(100),
    office_id INT,
    FOREIGN KEY (office_id)
        REFERENCES Head_offices(head_office_id)
);

-- Table 3: Action
CREATE TABLE Action (
    action_id INT PRIMARY KEY,
    project_id INT,
    description VARCHAR(100),
    FOREIGN KEY (project_id)
        REFERENCES Projects(project_id)
);

-- Table 4: City
CREATE TABLE City (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(100),
    country VARCHAR(100),
    population INT
);

-- Table 5: Action_of_city
CREATE TABLE Action_of_city (
    action_id INT,
    city_id INT,
    PRIMARY KEY (action_id, city_id),
    FOREIGN KEY (action_id)
        REFERENCES Action(action_id),
    FOREIGN KEY (city_id)
        REFERENCES City(city_id)
);

-- Table 6: Project_city_budget
CREATE TABLE Project_city_budget (
    project_id INT,
    city_id INT,
    investment DECIMAL(15,2),
    PRIMARY KEY (project_id, city_id),
    FOREIGN KEY (project_id)
        REFERENCES Projects(project_id),
    FOREIGN KEY (city_id)
        REFERENCES City(city_id)
);
