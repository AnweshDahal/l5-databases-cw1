CREATE USER iic IDENTIFIED BY iic;

GRANT CONNECT< RESOURCE TO iic;

CONNECT iic/iic

-- OK
CREATE TABLE person (
  person_id NUMBER NOT NULL PRIMARY KEY,
  first_name VARCHAR2(25) NOT NULL,
  last_name VARCHAR2(25) NOT NULL,
  m_country VARCHAR2(25) NOT NULL,
  m_province VARCHAR2(25) NOT NULL,
  m_city VARCHAR2(25) NOT NULL,
  m_street VARCHAR2(25) NOT NULL,
  m_house_no VARCHAR2(10) NOT NULL UNIQUE,
  m_phone_no VARCHAR2(15) NOT NULL,
  m_fax_no VARCHAR2(15),
  position VARCHAR2(10) NOT NULL CHECK(position in ('stud', 'inst'))
);

DESC person;

-- OK
CREATE TABLE address (
  address_id NUMBER NOT NULL PRIMARY KEY,
  country VARCHAR2(25) NOT NULL,
  province VARCHAR2(25) NOT NULL,
  city VARCHAR2(25) NOT NULL,
  street VARCHAR2(25) NOT NULL,
  house_no VARCHAR2(10) NOT NULL UNIQUE,
  phone_no VARCHAR2(15),
  fax_no VARCHAR2(15)
);

DESC address;

-- OK
CREATE TABLE person_address (
  person_id NUMBER NOT NULL,
  address_id NUMBER NOT NULL,
  PRIMARY KEY (person_id, address_id),
  FOREIGN KEY (person_id) REFERENCES person (person_id),
  FOREIGN KEY (address_id) REFERENCES address (address_id)
);

DESC person_address;

-- OK
CREATE TABLE course (
  course_id NUMBER NOT NULL PRIMARY KEY,
  course_name VARCHAR2(25) NOT NULL UNIQUE
);

DESC course;

-- OK
CREATE TABLE specification (
  specification_id NUMBER PRIMARY KEY,
  course_id NUMBER NOT NULL,
  specification_name VARCHAR2(25) NOT NULL UNIQUE,
  FOREIGN KEY (course_id) REFERENCES course (course_id)
);

DESC specification;

-- OK
CREATE TABLE class (
  class_number NUMBER PRIMARY KEY,
  class_name VARCHAR2(25) UNIQUE NOT NULL
);

DESC class;

-- OK
CREATE TABLE modules (
  modules_code VARCHAR2(15) PRIMARY KEY,
  modules_name VARCHAR2(50) NOT NULL UNIQUE,
  class_number NUMBER NOT NULL,
  FOREIGN KEY (class_number) REFERENCES class (class_number)
);

DESC modules;

-- OK
CREATE TABLE modules_specification (
  modules_code VARCHAR2(15) NOT NULL,
  specification_id NUMBER NOT NULL,
  PRIMARY KEY (modules_code, specification_id),
  FOREIGN Key (modules_code) REFERENCES modules(modules_code),
  FOREIGN KEY (specification_id) REFERENCES specification (specification_id)
);

DESC modules_specification;

-- OK
CREATE TABLE modules_person (
  modules_code VARCHAR2(15) NOT NULL,
  person_id NUMBER NOT NULL,
  PRIMARY KEY (modules_code, person_id),
  FOREIGN KEY (modules_code) REFERENCES modules (modules_code),
  FOREIGN KEY (person_id) REFERENCES person (person_id)
);

DESC modules_person;

-- OK
CREATE TABLE instructor (
  person_id NUMBER PRIMARY KEY,
  salary NUMBER NOT NULL,
  hire_date DATE NOT NULL,
  role VARCHAR2(25) NOT NULL CHECK (role IN ('teacher', 'mod ldr', 'crs ldr')),
  course_id NUMBER NOT NULL,
  specification_id NUMBER NOT NULL,
  FOREIGN KEY (person_id) REFERENCES person (person_id),
  FOREIGN KEY (course_id) REFERENCES course (course_id),
  FOREIGN KEY (specification_id) REFERENCES specification (specification_id)
);

DESC instructor;

-- OK
CREATE TABLE student (
  person_id NUMBER NOT NULL PRIMARY KEY,
  fees NUMBER NOT NULL,
  admission_date DATE NOT NULL,
  marks NUMBER NOT NULL,
  specification_id NUMBER NOT NULL,
  course_id NUMBER NOT NULL,
  FOREIGN KEY (person_id) REFERENCES person (person_id),
  FOREIGN KEY (course_id) REFERENCES course (course_id),
  FOREIGN KEY (specification_id) REFERENCES specification (specification_id)
);

