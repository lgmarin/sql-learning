CREATE TABLE Employee (
    emp_id INT,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    birth_date DATE,
    sex VARCHAR(1),
    salary DECIMAL,
    super_id INT,
    branch_id INT,
    PRIMARY KEY (emp_id)
);

CREATE TABLE Branch (
    branch_id INT,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    PRIMARY KEY (branch_id),
    FOREIGN KEY (mgr_id) REFERENCES Employee(emp_id) ON DELETE SET NULL
);


-- create foreign keys for the Employee table directed to the branch table

ALTER TABLE Employee
ADD FOREIGN KEY(branch_id)
REFERENCES Branch(branch_id)
ON DELETE SET NULL;

ALTER TABLE Employee
ADD FOREIGN KEY(super_id)
REFERENCES Employee(emp_id)
ON DELETE SET NULL;


CREATE TABLE Client (
    client_id INT,
    client_name VARCHAR(40),
    PRIMARY KEY (client_id),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id) ON DELETE SET NULL
);

CREATE TABLE Works_With (
    emp_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY (emp_id, client_id),
    FOREIGN KEY(emp_id) REFERENCES Employee(emp_id) ON DELETE CASCADE,
    FOREIGN KEY(client_id) REFERENCES Client(client_id) ON    DELETE CASCADE
);

CREATE TABLE Branch_Supplier (
    branch_id INT,
    supplier_name VARCHAR(40),
    supply_type VARCHAR(40),
    PRIMARY KEY(branch_id, supplier_name),
    FOREIGN KEY(branch_id) REFERENCES Branch(branch_id) ON DELETE CASCADE
);
