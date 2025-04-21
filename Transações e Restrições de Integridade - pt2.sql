CREATE TABLE avaliacaocontinua.company (
	company_name varchar(100) NOT NULL,
	city varchar(100),
	CONSTRAINT pk_company_name PRIMARY KEY (company_name)
)

CREATE TABLE avaliacaocontinua.employee (
	person_name varchar(100) NOT NULL,
	street varchar(100),
	city varchar(100),
	CONSTRAINT pk_person_name PRIMARY KEY (person_name)
)

CREATE TABLE avaliacaocontinua.manages (
	person_name varchar(100) NOT NULL,
	manager_name varchar(100),
	CONSTRAINT pk_person_name_man PRIMARY KEY (person_name)
)

CREATE TABLE avaliacaocontinua.works (
	person_name varchar(100) NOT NULL,
	company_name varchar(100) NOT NULL,
	salary decimal(10,2),
	CONSTRAINT pk_person_name_work PRIMARY KEY (person_name)
)

ALTER TABLE avaliacaocontinua.works
ADD CONSTRAINT fk_employee_works_person_name
FOREIGN KEY (person_name)
REFERENCES avaliacaocontinua.employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE avaliacaocontinua.works
ADD CONSTRAINT fk_company_works_company_name
FOREIGN KEY (company_name)
REFERENCES avaliacaocontinua.company(company_name)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE avaliacaocontinua.manages
ADD CONSTRAINT fk_employee_manages_person_name
FOREIGN KEY (person_name)
REFERENCES avaliacaocontinua.employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;