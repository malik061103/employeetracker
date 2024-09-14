\c db_employee;

INSERT INTO departments(title)
VALUES ('hr'),
();

INSERT INTO role (title,salary,departments_id)
VALUES('fronted developer',50000,1),
('backend debeloper',70000,1);

INSERT INTO employee (first_name,last_name,manager_id,role_id)
VALUES('malik','kerek',NULL,1),
('leo','kerek',NULL,2);
