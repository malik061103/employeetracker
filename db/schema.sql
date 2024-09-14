DROP DATABASE IF EXISTS db_employee;
CREATE DATABASE db_employee;
\c db_employee;
CREATE table departments(
id SERIAL PRIMARY KEY,
title VARCHAR(30) NOT NULL
);

CREATE table role(
id SERIAL PRIMARY KEY,
title VARCHAR(30) NOT NULL,
salary DECIMAL NOT NULL,
departments_id INTEGER NOT NULL, 
FOREIGN KEY (departments_id)
REFERENCES departments(id)
);

CREATE table employee (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER NOT NULL,
    manager_id INTEGER,
    FOREIGN KEY (manager_id)
    REFERENCES employee(id),
    FOREIGN KEY (role_id)
    REFERENCES role(id)
);