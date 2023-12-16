-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Category (
    category_id varchar(4)   NOT NULL,
    category varchar(50)   NOT NULL,
    CONSTRAINT pk_Category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE Subcategory (
    subcategory_id varchar(8)   NOT NULL,
    subcategory varchar(50)   NOT NULL,
    CONSTRAINT pk_Subcategory PRIMARY KEY (
        subcategory_id
     )
);

CREATE TABLE Contacts (
    contact_id int   NOT NULL,
    first_name varchar(20)   NOT NULL,
    last_name varchar(20)   NOT NULL,
    email varchar(50)   NOT NULL,
    CONSTRAINT pk_Contacts PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE Campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar(50)   NOT NULL,
    description varchar(100)   NOT NULL,
    goal decimal   NOT NULL,
    pledged decimal   NOT NULL,
    outcome varchar(10)   NOT NULL,
    backers_count int   NOT NULL,
    country varchar(2)   NOT NULL,
    currency varchar(5)   NOT NULL,
    launched_date varchar(20)   NOT NULL,
    end_date varchar(20)   NOT NULL,
    category_id varchar(4)   NOT NULL,
    subcategory_id varchar(8)   NOT NULL,
    CONSTRAINT pk_Campaign PRIMARY KEY (
        cf_id
     )
);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES Contacts (contact_id);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_category_id FOREIGN KEY(category_id)
REFERENCES Category (category_id);

ALTER TABLE Campaign ADD CONSTRAINT fk_Campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES Subcategory (subcategory_id);

