--
-- File generated with SQLiteStudio v3.2.1 on Fri Feb 11 10:33:26 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: apimaster_address
DROP TABLE IF EXISTS apimaster_address;

CREATE TABLE apimaster_address (
    id                   INTEGER       NOT NULL
                                       PRIMARY KEY AUTOINCREMENT,
    subject              VARCHAR (150),
    locality             VARCHAR (100),
    address              VARCHAR (100),
    address2             VARCHAR (100),
    city                 VARCHAR (100),
    state                VARCHAR (100),
    country              VARCHAR (100),
    pincode              INTEGER,
    latitude_coordinate  VARCHAR (100),
    longitude_coordinate VARCHAR (100),
    status               BOOL          NOT NULL,
    is_deleted           BOOL          NOT NULL,
    created_by           INTEGER,
    updated_by           INTEGER,
    deleted_by           INTEGER,
    created_at           DATETIME      NOT NULL,
    updated_at           DATETIME,
    deleted_at           DATETIME,
    image                VARCHAR (100),
    user_id              INTEGER
);

INSERT INTO apimaster_address (id, subject, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, image, user_id) VALUES (1, 'Home Address', NULL, 'sec 15', NULL, 'noida', 'up', 'india', 201301, '1', '1', 0, 0, NULL, NULL, NULL, '2022-01-18 07:46:53.162958', NULL, NULL, '', 1);
INSERT INTO apimaster_address (id, subject, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, image, user_id) VALUES (2, 'Office Address', NULL, 'sec 15', NULL, 'noida', 'up', 'india', 201301, '1', '1', 0, 0, NULL, NULL, NULL, '2022-01-18 08:07:55.402322', NULL, NULL, '', 1);
INSERT INTO apimaster_address (id, subject, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, image, user_id) VALUES (3, 'Home new Address', NULL, 'sec 15', NULL, 'noida', 'up', 'india', 201301, '1', '1', 0, 0, NULL, NULL, NULL, '2022-01-21 07:13:16.195542', NULL, NULL, '', 51);
INSERT INTO apimaster_address (id, subject, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, image, user_id) VALUES (4, 'Suncity', NULL, 'Suncity', NULL, 'jaipur kota', 'Rajasthan', 'India', 333308, '28.77', '77.28', 0, 0, NULL, NULL, NULL, '2022-02-03 05:12:05.226996', NULL, NULL, '', 51);

-- Table: apimaster_consultationfees
DROP TABLE IF EXISTS apimaster_consultationfees;

CREATE TABLE apimaster_consultationfees (
    id          INTEGER       NOT NULL
                              PRIMARY KEY AUTOINCREMENT,
    name        VARCHAR (50),
    amount      DECIMAL       NOT NULL,
    start_at    DATETIME,
    end_at      DATETIME,
    message     VARCHAR (150),
    file        VARCHAR (100),
    user_id     INTEGER,
    description TEXT,
    status      BOOL          NOT NULL,
    is_deleted  BOOL          NOT NULL,
    created_by  INTEGER,
    updated_by  INTEGER,
    deleted_by  INTEGER,
    created_at  DATETIME      NOT NULL,
    updated_at  DATETIME,
    deleted_at  DATETIME
);

INSERT INTO apimaster_consultationfees (id, name, amount, start_at, end_at, message, file, user_id, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (1, '9930099301', 520, NULL, NULL, NULL, '', 44, NULL, 0, 0, NULL, NULL, NULL, '2021-12-29 17:01:02.468985', NULL, NULL);
INSERT INTO apimaster_consultationfees (id, name, amount, start_at, end_at, message, file, user_id, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (2, 'XXX', 0, NULL, NULL, NULL, '', 56, NULL, 0, 0, NULL, NULL, NULL, '2022-02-10 04:15:52.165798', NULL, NULL);

-- Table: apimaster_doctorverifications
DROP TABLE IF EXISTS apimaster_doctorverifications;

CREATE TABLE apimaster_doctorverifications (
    id         INTEGER       NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    name       VARCHAR (150),
    message    TEXT,
    issues_id  INTEGER,
    user_id    INTEGER,
    status     BOOL          NOT NULL,
    is_deleted BOOL          NOT NULL,
    created_by INTEGER,
    updated_by INTEGER,
    deleted_by INTEGER,
    created_at DATETIME      NOT NULL,
    updated_at DATETIME,
    deleted_at DATETIME
);

INSERT INTO apimaster_doctorverifications (id, name, message, issues_id, user_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (1, 'Recheck', 'test 1', NULL, 1, 0, 0, NULL, NULL, NULL, '2022-01-03 06:33:31.314639', NULL, NULL);
INSERT INTO apimaster_doctorverifications (id, name, message, issues_id, user_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (2, 'Recheck', 'test 2', NULL, 1, 0, 0, NULL, NULL, NULL, '2022-01-03 06:39:07.586086', NULL, NULL);
INSERT INTO apimaster_doctorverifications (id, name, message, issues_id, user_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (3, 'Recheck', 'sgeabef', NULL, 1, 0, 0, NULL, NULL, NULL, '2022-01-03 06:42:00.262452', NULL, NULL);
INSERT INTO apimaster_doctorverifications (id, name, message, issues_id, user_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (4, 'Recheck', 'wvwvw', NULL, 1, 0, 0, NULL, NULL, NULL, '2022-01-03 07:01:43.259762', NULL, NULL);
INSERT INTO apimaster_doctorverifications (id, name, message, issues_id, user_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (5, 'Reject', 'efwefwe', NULL, 1, 0, 0, NULL, NULL, NULL, '2022-01-03 07:18:22.589630', NULL, NULL);
INSERT INTO apimaster_doctorverifications (id, name, message, issues_id, user_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (6, 'Aprooved', 'done', NULL, 1, 0, 0, NULL, NULL, NULL, '2022-01-03 07:45:32.128680', NULL, NULL);
INSERT INTO apimaster_doctorverifications (id, name, message, issues_id, user_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (7, 'Aprooved', 'done', NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-01-04 07:46:58.305802', NULL, NULL);
INSERT INTO apimaster_doctorverifications (id, name, message, issues_id, user_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (8, 'Aprooved', 'test', NULL, 18, 0, 0, NULL, NULL, NULL, '2022-01-10 06:43:58.476969', NULL, NULL);
INSERT INTO apimaster_doctorverifications (id, name, message, issues_id, user_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (9, 'Recheck', 'check doc', NULL, 20, 0, 0, NULL, NULL, NULL, '2022-01-13 14:53:45.182738', NULL, NULL);
INSERT INTO apimaster_doctorverifications (id, name, message, issues_id, user_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (10, 'Recheck', 'toto', NULL, 20, 0, 0, NULL, NULL, NULL, '2022-01-18 12:43:49.309223', NULL, NULL);
INSERT INTO apimaster_doctorverifications (id, name, message, issues_id, user_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (11, 'Rejected', 'dasd', NULL, 20, 0, 0, NULL, NULL, NULL, '2022-01-18 12:46:53.856815', NULL, NULL);
INSERT INTO apimaster_doctorverifications (id, name, message, issues_id, user_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (12, 'Recheck', 'check your doc', NULL, 44, 0, 0, NULL, NULL, NULL, '2022-02-07 10:44:01.106760', NULL, NULL);

-- Table: apimaster_establishmentproofs
DROP TABLE IF EXISTS apimaster_establishmentproofs;

CREATE TABLE apimaster_establishmentproofs (
    id                  INTEGER       NOT NULL
                                      PRIMARY KEY AUTOINCREMENT,
    name                VARCHAR (150),
    identity_proof_type VARCHAR (50),
    identity_proof_no   VARCHAR (50),
    file                VARCHAR (100),
    description         TEXT,
    status              BOOL          NOT NULL,
    is_deleted          BOOL          NOT NULL,
    created_by          INTEGER,
    updated_by          INTEGER,
    deleted_by          INTEGER,
    created_at          DATETIME      NOT NULL,
    updated_at          DATETIME,
    deleted_at          DATETIME,
    user_id             INTEGER
                                      REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO apimaster_establishmentproofs (id, name, identity_proof_type, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (1, 'yogeshks', 'identity proof text', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 09:29:42.180224', NULL, NULL, 14);
INSERT INTO apimaster_establishmentproofs (id, name, identity_proof_type, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (2, 'yogi1', 'identity proof text', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:16:53.385835', NULL, NULL, 15);
INSERT INTO apimaster_establishmentproofs (id, name, identity_proof_type, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (3, 'yogi2', 'identity proof text', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:21:29.765248', NULL, NULL, 16);
INSERT INTO apimaster_establishmentproofs (id, name, identity_proof_type, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (4, 'yogi3', 'identity proof text', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:22:28.312074', NULL, NULL, 17);
INSERT INTO apimaster_establishmentproofs (id, name, identity_proof_type, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (5, 'yogi4', 'identity proof text', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:23:48.519265', NULL, NULL, 18);
INSERT INTO apimaster_establishmentproofs (id, name, identity_proof_type, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (6, 'yogi6', 'identity proof text', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:27:53.507991', NULL, NULL, 20);
INSERT INTO apimaster_establishmentproofs (id, name, identity_proof_type, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (7, '9930099301', 'identity proof text', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-29 17:01:01.595401', NULL, NULL, 44);
INSERT INTO apimaster_establishmentproofs (id, name, identity_proof_type, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (8, 'XXX', 'identity proof text', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2022-02-10 04:15:52.028783', NULL, NULL, 56);

-- Table: apimaster_establishmenttimings
DROP TABLE IF EXISTS apimaster_establishmenttimings;

CREATE TABLE apimaster_establishmenttimings (
    id          INTEGER       NOT NULL
                              PRIMARY KEY AUTOINCREMENT,
    name        VARCHAR (50),
    start_at    TIME,
    end_at      TIME,
    message     VARCHAR (150),
    file        VARCHAR (100),
    user_id     INTEGER,
    description TEXT,
    status      BOOL          NOT NULL,
    is_deleted  BOOL          NOT NULL,
    created_by  INTEGER,
    updated_by  INTEGER,
    deleted_by  INTEGER,
    created_at  DATETIME      NOT NULL,
    updated_at  DATETIME,
    deleted_at  DATETIME,
    clinic_id   BIGINT
                              REFERENCES apimaster_usersclinics (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO apimaster_establishmenttimings (id, name, start_at, end_at, message, file, user_id, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, clinic_id) VALUES (1, '9930099301', '08:00:00', '17:01:02', NULL, '', 44, NULL, 0, 0, NULL, NULL, NULL, '2021-12-29 17:01:02.271982', NULL, NULL, NULL);
INSERT INTO apimaster_establishmenttimings (id, name, start_at, end_at, message, file, user_id, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, clinic_id) VALUES (2, 'XXX', NULL, NULL, NULL, '', 56, NULL, 0, 0, NULL, NULL, NULL, '2022-02-10 04:15:52.115987', NULL, NULL, NULL);

-- Table: apimaster_familymemberprofiles
DROP TABLE IF EXISTS apimaster_familymemberprofiles;

CREATE TABLE apimaster_familymemberprofiles (
    id                   INTEGER       NOT NULL
                                       PRIMARY KEY AUTOINCREMENT,
    name                 VARCHAR (100),
    about                TEXT,
    dob                  DATE,
    photo                VARCHAR (100),
    sex                  VARCHAR (20)  NOT NULL,
    email                VARCHAR (150),
    mobile               VARCHAR (20),
    blood_group          VARCHAR (50),
    locality             VARCHAR (100),
    address              VARCHAR (100),
    address2             VARCHAR (100),
    city                 VARCHAR (100),
    state                VARCHAR (100),
    country              VARCHAR (100),
    pincode              INTEGER,
    latitude_coordinate  VARCHAR (100),
    longitude_coordinate VARCHAR (100),
    language             VARCHAR (250),
    language_id          INTEGER,
    status               BOOL          NOT NULL,
    is_deleted           BOOL          NOT NULL,
    created_by           INTEGER,
    updated_by           INTEGER,
    deleted_by           INTEGER,
    created_at           DATETIME      NOT NULL,
    updated_at           DATETIME,
    deleted_at           DATETIME,
    user_id              INTEGER       NOT NULL
                                       REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    blood_relationship   VARCHAR (50) 
);

INSERT INTO apimaster_familymemberprofiles (id, name, about, dob, photo, sex, email, mobile, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, language, language_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, blood_relationship) VALUES (1, 'Roshan KS 2', NULL, NULL, 'profile_photo/image_A0kiqJI.png', 'male', 'roshan@mailinator.com', '8464418444', NULL, NULL, 'sec 15 noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-02 07:56:12.430735', NULL, NULL, 44, NULL);
INSERT INTO apimaster_familymemberprofiles (id, name, about, dob, photo, sex, email, mobile, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, language, language_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, blood_relationship) VALUES (2, 'Rani', NULL, NULL, '', 'male', 'rani@mailinator.com', '8464418400', NULL, NULL, 'sec 15 noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-02 07:56:43.196070', NULL, NULL, 44, NULL);
INSERT INTO apimaster_familymemberprofiles (id, name, about, dob, photo, sex, email, mobile, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, language, language_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, blood_relationship) VALUES (3, 'Rani', NULL, NULL, '', 'male', 'rani@mailinator.com', '8464418400', NULL, NULL, 'sec 15 noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 07:07:18.180655', NULL, NULL, 44, NULL);
INSERT INTO apimaster_familymemberprofiles (id, name, about, dob, photo, sex, email, mobile, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, language, language_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, blood_relationship) VALUES (4, 'Rani', NULL, NULL, '', 'male', 'rani@mailinator.com', '8464418400', NULL, NULL, 'sec 15 noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 07:08:04.234128', NULL, NULL, 31, NULL);
INSERT INTO apimaster_familymemberprofiles (id, name, about, dob, photo, sex, email, mobile, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, language, language_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, blood_relationship) VALUES (5, 'vikas', NULL, NULL, '', 'male', 'rani@mailinator.com', '8464418400', NULL, NULL, 'sec 15 noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 07:08:28.531578', NULL, NULL, 31, NULL);
INSERT INTO apimaster_familymemberprofiles (id, name, about, dob, photo, sex, email, mobile, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, language, language_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, blood_relationship) VALUES (6, 'vikas', NULL, NULL, '', 'male', 'rani@mailinator.com', '8464418400', NULL, NULL, 'sec 15 noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 07:08:42.136113', NULL, NULL, 31, NULL);
INSERT INTO apimaster_familymemberprofiles (id, name, about, dob, photo, sex, email, mobile, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, language, language_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, blood_relationship) VALUES (7, 'vikas', NULL, NULL, '', 'male', 'rani@mailinator.com', '8464418400', NULL, NULL, 'sec 15 noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 07:10:24.684642', NULL, NULL, 50, NULL);
INSERT INTO apimaster_familymemberprofiles (id, name, about, dob, photo, sex, email, mobile, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, language, language_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, blood_relationship) VALUES (8, 'vikas', NULL, NULL, '', 'male', 'rani@mailinator.com', '8464418400', NULL, NULL, 'sec 15 noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 07:11:56.422833', NULL, NULL, 49, NULL);
INSERT INTO apimaster_familymemberprofiles (id, name, about, dob, photo, sex, email, mobile, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, language, language_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, blood_relationship) VALUES (9, 'Ayush', NULL, NULL, '', 'male', 'rani@mailinator.com', '8464418400', NULL, NULL, 'sec 15 noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 07:17:37.766399', NULL, NULL, 44, NULL);
INSERT INTO apimaster_familymemberprofiles (id, name, about, dob, photo, sex, email, mobile, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, language, language_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, blood_relationship) VALUES (10, 'vikas', NULL, NULL, '', 'male', 'rani@mailinator.com', '8464418400', NULL, NULL, 'sec 15 noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 07:27:08.690736', NULL, NULL, 49, NULL);
INSERT INTO apimaster_familymemberprofiles (id, name, about, dob, photo, sex, email, mobile, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, language, language_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, blood_relationship) VALUES (11, 'vikas', NULL, NULL, '', 'male', 'rani@mailinator.com', '8464418400', NULL, NULL, 'sec 15 noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 07:27:11.737854', NULL, NULL, 49, NULL);
INSERT INTO apimaster_familymemberprofiles (id, name, about, dob, photo, sex, email, mobile, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, language, language_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, blood_relationship) VALUES (12, 'vikas', NULL, NULL, '', 'male', 'rani@mailinator.com', '8464418400', NULL, NULL, 'sec 15 noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 08:44:54.362695', NULL, NULL, 49, NULL);
INSERT INTO apimaster_familymemberprofiles (id, name, about, dob, photo, sex, email, mobile, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, language, language_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, blood_relationship) VALUES (13, 'vikas', NULL, NULL, '', 'male', 'rani@mailinator.com', '8464418400', NULL, NULL, 'sec 15 noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 08:45:01.774493', NULL, NULL, 49, NULL);
INSERT INTO apimaster_familymemberprofiles (id, name, about, dob, photo, sex, email, mobile, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, language, language_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, blood_relationship) VALUES (14, 'vikas', NULL, NULL, '', 'male', 'rani@mailinator.com', '8464418400', NULL, NULL, 'sec 15 noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 08:45:08.669602', NULL, NULL, 49, NULL);

-- Table: apimaster_feveratedoctors
DROP TABLE IF EXISTS apimaster_feveratedoctors;

CREATE TABLE apimaster_feveratedoctors (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    created_by INTEGER,
    updated_by INTEGER,
    created_at DATETIME NOT NULL,
    updated_at DATETIME,
    doctor_id  INTEGER
                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    patient_id INTEGER
                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    profile_id BIGINT
                        REFERENCES apimaster_userprofiles (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO apimaster_feveratedoctors (id, created_by, updated_by, created_at, updated_at, doctor_id, patient_id, profile_id) VALUES (1, NULL, NULL, '2022-02-02 09:46:31.833645', NULL, 44, 10, 12);
INSERT INTO apimaster_feveratedoctors (id, created_by, updated_by, created_at, updated_at, doctor_id, patient_id, profile_id) VALUES (2, NULL, NULL, '2022-02-02 10:58:34.681330', NULL, 44, 10, 12);

-- Table: apimaster_maplocations
DROP TABLE IF EXISTS apimaster_maplocations;

CREATE TABLE apimaster_maplocations (
    id                   INTEGER       NOT NULL
                                       PRIMARY KEY AUTOINCREMENT,
    name                 VARCHAR (50),
    message              VARCHAR (150),
    locality             VARCHAR (100),
    address              VARCHAR (100),
    address2             VARCHAR (100),
    city                 VARCHAR (100),
    state                VARCHAR (100),
    country              VARCHAR (100),
    pincode              INTEGER,
    latitude_coordinate  VARCHAR (100),
    longitude_coordinate VARCHAR (100),
    file                 VARCHAR (100),
    user_id              INTEGER,
    description          TEXT,
    status               BOOL          NOT NULL,
    is_deleted           BOOL          NOT NULL,
    created_by           INTEGER,
    updated_by           INTEGER,
    deleted_by           INTEGER,
    created_at           DATETIME      NOT NULL,
    updated_at           DATETIME,
    deleted_at           DATETIME
);

INSERT INTO apimaster_maplocations (id, name, message, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, file, user_id, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (1, '9930099301', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 44, NULL, 0, 0, NULL, NULL, NULL, '2021-12-29 17:01:02.043577', NULL, NULL);
INSERT INTO apimaster_maplocations (id, name, message, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, file, user_id, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (2, 'XXX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 56, NULL, 0, 0, NULL, NULL, NULL, '2022-02-10 04:15:52.086141', NULL, NULL);

-- Table: apimaster_medicalregistrationproofs
DROP TABLE IF EXISTS apimaster_medicalregistrationproofs;

CREATE TABLE apimaster_medicalregistrationproofs (
    id                INTEGER       NOT NULL
                                    PRIMARY KEY AUTOINCREMENT,
    name              VARCHAR (150),
    identity_proof_no VARCHAR (50),
    file              VARCHAR (100),
    description       TEXT,
    status            BOOL          NOT NULL,
    is_deleted        BOOL          NOT NULL,
    created_by        INTEGER,
    updated_by        INTEGER,
    deleted_by        INTEGER,
    created_at        DATETIME      NOT NULL,
    updated_at        DATETIME,
    deleted_at        DATETIME,
    user_id           INTEGER
                                    REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO apimaster_medicalregistrationproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (1, 'yogeshks', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 09:29:41.746332', NULL, NULL, 14);
INSERT INTO apimaster_medicalregistrationproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (2, 'yogi1', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:16:52.121784', NULL, NULL, 15);
INSERT INTO apimaster_medicalregistrationproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (3, 'yogi2', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:21:28.664188', NULL, NULL, 16);
INSERT INTO apimaster_medicalregistrationproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (4, 'yogi3', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:22:27.521902', NULL, NULL, 17);
INSERT INTO apimaster_medicalregistrationproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (5, 'yogi4', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:23:47.714506', NULL, NULL, 18);
INSERT INTO apimaster_medicalregistrationproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (6, 'yogi6', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:27:52.340700', NULL, NULL, 20);
INSERT INTO apimaster_medicalregistrationproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (7, '9930099301', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-29 17:01:01.162373', NULL, NULL, 44);
INSERT INTO apimaster_medicalregistrationproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (8, 'XXX', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2022-02-10 04:15:51.965317', NULL, NULL, 56);

-- Table: apimaster_modelfunctions
DROP TABLE IF EXISTS apimaster_modelfunctions;

CREATE TABLE apimaster_modelfunctions (
    id          INTEGER      NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    name        VARCHAR (50),
    slug        VARCHAR (50),
    description TEXT,
    status      BOOL         NOT NULL,
    is_deleted  BOOL         NOT NULL,
    created_by  INTEGER,
    updated_by  INTEGER,
    deleted_by  INTEGER,
    created_at  DATETIME     NOT NULL,
    updated_at  DATETIME,
    deleted_at  DATETIME
);


-- Table: apimaster_modellanguages
DROP TABLE IF EXISTS apimaster_modellanguages;

CREATE TABLE apimaster_modellanguages (
    id          INTEGER      NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    code        VARCHAR (10) NOT NULL,
    value       VARCHAR (50) NOT NULL,
    description TEXT,
    created_at  DATETIME     NOT NULL,
    updated_at  DATETIME
);

INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (4, 'ab', 'Abkhazian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (5, 'ace', 'Achinese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (6, 'ach', 'Acoli', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (7, 'ada', 'Adangme', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (8, 'ady', 'Adyghe', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (9, 'aa', 'Afar', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (10, 'afh', 'Afrihili', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (11, 'af', 'Afrikaans', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (12, 'agq', 'Aghem', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (13, 'ain', 'Ainu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (14, 'ak', 'Akan', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (15, 'akk', 'Akkadian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (16, 'bss', 'Akoose', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (17, 'akz', 'Alabama', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (18, 'sq', 'Albanian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (19, 'ale', 'Aleut', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (20, 'arq', 'Algerian Arabic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (21, 'am', 'Amarik', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (22, 'en_US', 'American English', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (23, 'ase', 'American Sign Language', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (24, 'egy', 'Ancient Egyptian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (25, 'grc', 'Ancient Greek', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (26, 'anp', 'Angika', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (27, 'njo', 'Ao Naga', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (28, 'ar', 'Arabik', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (29, 'an', 'Aragonese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (30, 'arc', 'Aramaic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (31, 'aro', 'Araona', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (32, 'arp', 'Arapaho', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (33, 'arw', 'Arawak', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (34, 'hy', 'Armenian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (35, 'rup', 'Aromanian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (36, 'frp', 'Arpitan', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (37, 'as', 'Assamese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (38, 'ast', 'Asturian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (39, 'asa', 'Asu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (40, 'cch', 'Atsam', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (41, 'en_AU', 'Australian English', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (42, 'de_AT', 'Austrian German', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (43, 'av', 'Avaric', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (44, 'ae', 'Avestan', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (45, 'awa', 'Awadhi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (46, 'ay', 'Aymara', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (47, 'az', 'Azerbaijani', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (48, 'bfq', 'Badaga', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (49, 'ksf', 'Bafia', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (50, 'bfd', 'Bafut', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (51, 'bqi', 'Bakhtiari', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (52, 'ban', 'Balinese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (53, 'bal', 'Baluchi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (54, 'bm', 'Bambara', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (55, 'bax', 'Bamun', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (56, 'bjn', 'Banjar', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (57, 'bas', 'Basaa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (58, 'ba', 'Bashkir', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (59, 'eu', 'Basque', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (60, 'bbc', 'Batak Toba', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (61, 'bar', 'Bavarian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (62, 'bej', 'Beja', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (63, 'be', 'Belarus kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (64, 'bem', 'Bemba', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (65, 'bez', 'Bena', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (66, 'bn', 'Bengali kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (67, 'bew', 'Betawi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (68, 'my', 'B??mis kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (69, 'bho', 'Bhojpuri', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (70, 'bik', 'Bikol', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (71, 'bin', 'Bini', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (72, 'bpy', 'Bishnupriya', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (73, 'bi', 'Bislama', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (74, 'byn', 'Blin', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (75, 'zbl', 'Blissymbols', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (76, 'brx', 'Bodo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (77, 'en', 'Bor?fo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (78, 'bs', 'Bosnian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (79, 'bg', 'B?lgeria kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (80, 'brh', 'Brahui', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (81, 'bra', 'Braj', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (82, 'pt_BR', 'Brazilian Portuguese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (83, 'br', 'Breton', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (84, 'en_GB', 'British English', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (85, 'bug', 'Buginese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (86, 'bum', 'Bulu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (87, 'bua', 'Buriat', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (88, 'cad', 'Caddo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (89, 'frc', 'Cajun French', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (90, 'en_CA', 'Canadian English', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (91, 'fr_CA', 'Canadian French', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (92, 'yue', 'Cantonese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (93, 'cps', 'Capiznon', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (94, 'car', 'Carib', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (95, 'ca', 'Catalan', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (96, 'cay', 'Cayuga', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (97, 'ceb', 'Cebuano', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (98, 'tzm', 'Central Atlas Tamazight', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (99, 'dtp', 'Central Dusun', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (100, 'ckb', 'Central Kurdish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (101, 'esu', 'Central Yupik', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (102, 'shu', 'Chadian Arabic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (103, 'chg', 'Chagatai', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (104, 'ch', 'Chamorro', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (105, 'ce', 'Chechen', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (106, 'chr', 'Cherokee', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (107, 'chy', 'Cheyenne', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (108, 'chb', 'Chibcha', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (109, 'cgg', 'Chiga', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (110, 'qug', 'Chimborazo Highland Quichua', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (111, 'chn', 'Chinook Jargon', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (112, 'chp', 'Chipewyan', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (113, 'cho', 'Choctaw', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (114, 'cu', 'Church Slavic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (115, 'chk', 'Chuukese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (116, 'cv', 'Chuvash', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (117, 'nwc', 'Classical Newari', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (118, 'syc', 'Classical Syriac', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (119, 'ksh', 'Colognian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (120, 'swb', 'Comorian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (121, 'swc', 'Congo Swahili', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (122, 'cop', 'Coptic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (123, 'kw', 'Cornish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (124, 'co', 'Corsican', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (125, 'cr', 'Cree', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (126, 'mus', 'Creek', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (127, 'crh', 'Crimean Turkish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (128, 'hr', 'Croatian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (129, 'dak', 'Dakota', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (130, 'da', 'Danish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (131, 'dar', 'Dargwa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (132, 'dzg', 'Dazaga', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (133, 'del', 'Delaware', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (134, 'nl', 'D??kye', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (135, 'din', 'Dinka', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (136, 'dv', 'Divehi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (137, 'doi', 'Dogri', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (138, 'dgr', 'Dogrib', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (139, 'dua', 'Duala', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (140, 'dyu', 'Dyula', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (141, 'dz', 'Dzongkha', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (142, 'frs', 'Eastern Frisian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (143, 'efi', 'Efik', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (144, 'arz', 'Egyptian Arabic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (145, 'eka', 'Ekajuk', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (146, 'elx', 'Elamite', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (147, 'ebu', 'Embu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (148, 'egl', 'Emilian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (149, 'myv', 'Erzya', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (150, 'eo', 'Esperanto', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (151, 'et', 'Estonian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (152, 'pt_PT', 'European Portuguese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (153, 'es_ES', 'European Spanish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (154, 'ee', 'Ewe', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (155, 'ewo', 'Ewondo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (156, 'ext', 'Extremaduran', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (157, 'fan', 'Fang', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (158, 'fat', 'Fanti', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (159, 'fo', 'Faroese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (160, 'hif', 'Fiji Hindi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (161, 'fj', 'Fijian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (162, 'fil', 'Filipino', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (163, 'fi', 'Finnish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (164, 'nl_BE', 'Flemish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (165, 'fon', 'Fon', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (166, 'gur', 'Frafra', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (167, 'fr', 'Fr?nkye', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (168, 'fur', 'Friulian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (169, 'ff', 'Fulah', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (170, 'gaa', 'Ga', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (171, 'gag', 'Gagauz', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (172, 'gl', 'Galician', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (173, 'gan', 'Gan Chinese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (174, 'lg', 'Ganda', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (175, 'gay', 'Gayo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (176, 'gba', 'Gbaya', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (177, 'gez', 'Geez', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (178, 'ka', 'Georgian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (179, 'aln', 'Gheg Albanian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (180, 'bbj', 'Ghomala', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (181, 'glk', 'Gilaki', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (182, 'gil', 'Gilbertese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (183, 'gom', 'Goan Konkani', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (184, 'gon', 'Gondi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (185, 'gor', 'Gorontalo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (186, 'got', 'Gothic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (187, 'grb', 'Grebo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (188, 'el', 'Greek kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (189, 'gn', 'Guarani', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (190, 'gu', 'Gujarati', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (191, 'guz', 'Gusii', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (192, 'gwi', 'Gwich'in', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (193, 'de', 'Gyaaman', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (194, 'jv', 'Gyabanis kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (195, 'ja', 'Gyapan kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (196, 'hai', 'Haida', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (197, 'ht', 'Haitian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (198, 'hak', 'Hakka Chinese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (199, 'hu', 'Hangri kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (200, 'ha', 'Hausa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (201, 'haw', 'Hawaiian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (202, 'he', 'Hebrew', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (203, 'hz', 'Herero', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (204, 'hil', 'Hiligaynon', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (205, 'hi', 'Hindi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (206, 'ho', 'Hiri Motu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (207, 'hit', 'Hittite', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (208, 'hmn', 'Hmong', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (209, 'hup', 'Hupa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (210, 'iba', 'Iban', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (211, 'ibb', 'Ibibio', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (212, 'is', 'Icelandic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (213, 'io', 'Ido', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (214, 'ig', 'Igbo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (215, 'ilo', 'Iloko', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (216, 'smn', 'Inari Sami', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (217, 'id', 'Indonihyia kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (218, 'izh', 'Ingrian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (219, 'inh', 'Ingush', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (220, 'ia', 'Interlingua', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (221, 'ie', 'Interlingue', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (222, 'iu', 'Inuktitut', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (223, 'ik', 'Inupiaq', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (224, 'ga', 'Irish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (225, 'it', 'Italy kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (226, 'jam', 'Jamaican Creole English', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (227, 'kaj', 'Jju', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (228, 'dyo', 'Jola-Fonyi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (229, 'jrb', 'Judeo-Arabic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (230, 'jpr', 'Judeo-Persian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (231, 'jut', 'Jutish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (232, 'kbd', 'Kabardian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (233, 'kea', 'Kabuverdianu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (234, 'kab', 'Kabyle', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (235, 'kac', 'Kachin', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (236, 'kgp', 'Kaingang', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (237, 'kkj', 'Kako', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (238, 'kl', 'Kalaallisut', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (239, 'kln', 'Kalenjin', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (240, 'xal', 'Kalmyk', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (241, 'kam', 'Kamba', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (242, 'km', 'Kambodia kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (243, 'kbl', 'Kanembu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (244, 'kn', 'Kannada', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (245, 'kr', 'Kanuri', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (246, 'kaa', 'Kara-Kalpak', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (247, 'krc', 'Karachay-Balkar', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (248, 'krl', 'Karelian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (249, 'ks', 'Kashmiri', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (250, 'csb', 'Kashubian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (251, 'kaw', 'Kawi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (252, 'kk', 'Kazakh', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (253, 'ken', 'Kenyang', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (254, 'kha', 'Khasi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (255, 'kho', 'Khotanese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (256, 'khw', 'Khowar', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (257, 'ki', 'Kikuyu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (258, 'kmb', 'Kimbundu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (259, 'krj', 'Kinaray-a', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (260, 'kiu', 'Kirmanjki', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (261, 'tlh', 'Klingon', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (262, 'bkm', 'Kom', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (263, 'kv', 'Komi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (264, 'koi', 'Komi-Permyak', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (265, 'kg', 'Kongo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (266, 'kok', 'Konkani', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (267, 'ko', 'Korea kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (268, 'kfo', 'Koro', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (269, 'kos', 'Kosraean', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (270, 'avk', 'Kotava', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (271, 'khq', 'Koyra Chiini', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (272, 'ses', 'Koyraboro Senni', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (273, 'kpe', 'Kpelle', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (274, 'kri', 'Krio', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (275, 'kj', 'Kuanyama', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (276, 'kum', 'Kumyk', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (277, 'ku', 'Kurdish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (278, 'kru', 'Kurukh', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (279, 'kut', 'Kutenai', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (280, 'nmg', 'Kwasio', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (281, 'zh', 'Kyaena kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (282, 'cs', 'Ky?k kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (283, 'ky', 'Kyrgyz', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (284, 'quc', 'K'iche'', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (285, 'lad', 'Ladino', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (286, 'lah', 'Lahnda', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (287, 'lkt', 'Lakota', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (288, 'lam', 'Lamba', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (289, 'lag', 'Langi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (290, 'lo', 'Lao', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (291, 'ltg', 'Latgalian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (292, 'la', 'Latin', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (293, 'es_419', 'Latin American Spanish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (294, 'lv', 'Latvian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (295, 'lzz', 'Laz', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (296, 'lez', 'Lezghian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (297, 'lij', 'Ligurian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (298, 'li', 'Limburgish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (299, 'ln', 'Lingala', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (300, 'lfn', 'Lingua Franca Nova', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (301, 'lzh', 'Literary Chinese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (302, 'lt', 'Lithuanian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (303, 'liv', 'Livonian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (304, 'jbo', 'Lojban', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (305, 'lmo', 'Lombard', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (306, 'nds', 'Low German', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (307, 'sli', 'Lower Silesian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (308, 'dsb', 'Lower Sorbian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (309, 'loz', 'Lozi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (310, 'lu', 'Luba-Katanga', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (311, 'lua', 'Luba-Lulua', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (312, 'lui', 'Luiseno', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (313, 'smj', 'Lule Sami', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (314, 'lun', 'Lunda', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (315, 'luo', 'Luo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (316, 'lb', 'Luxembourgish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (317, 'luy', 'Luyia', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (318, 'mde', 'Maba', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (319, 'mk', 'Macedonian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (320, 'jmc', 'Machame', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (321, 'mad', 'Madurese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (322, 'maf', 'Mafa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (323, 'mag', 'Magahi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (324, 'vmf', 'Main-Franconian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (325, 'mai', 'Maithili', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (326, 'mak', 'Makasar', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (327, 'mgh', 'Makhuwa-Meetto', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (328, 'kde', 'Makonde', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (329, 'mg', 'Malagasy', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (330, 'ms', 'Malay kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (331, 'ml', 'Malayalam', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (332, 'mt', 'Maltese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (333, 'mnc', 'Manchu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (334, 'mdr', 'Mandar', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (335, 'man', 'Mandingo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (336, 'mni', 'Manipuri', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (337, 'gv', 'Manx', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (338, 'mi', 'Maori', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (339, 'arn', 'Mapuche', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (340, 'mr', 'Marathi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (341, 'chm', 'Mari', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (342, 'mh', 'Marshallese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (343, 'mwr', 'Marwari', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (344, 'mas', 'Masai', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (345, 'mzn', 'Mazanderani', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (346, 'byv', 'Medumba', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (347, 'men', 'Mende', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (348, 'mwv', 'Mentawai', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (349, 'mer', 'Meru', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (350, 'mgo', 'Meta'', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (351, 'es_MX', 'Mexican Spanish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (352, 'mic', 'Micmac', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (353, 'dum', 'Middle Dutch', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (354, 'enm', 'Middle English', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (355, 'frm', 'Middle French', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (356, 'gmh', 'Middle High German', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (357, 'mga', 'Middle Irish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (358, 'nan', 'Min Nan Chinese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (359, 'min', 'Minangkabau', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (360, 'xmf', 'Mingrelian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (361, 'mwl', 'Mirandese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (362, 'lus', 'Mizo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (363, 'ar_001', 'Modern Standard Arabic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (364, 'moh', 'Mohawk', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (365, 'mdf', 'Moksha', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (366, 'ro_MD', 'Moldavian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (367, 'lol', 'Mongo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (368, 'mn', 'Mongolian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (369, 'mfe', 'Morisyen', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (370, 'ary', 'Moroccan Arabic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (371, 'mos', 'Mossi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (372, 'mul', 'Multiple Languages', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (373, 'mua', 'Mundang', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (374, 'ttt', 'Muslim Tat', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (375, 'mye', 'Myene', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (376, 'naq', 'Nama', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (377, 'na', 'Nauru', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (378, 'nv', 'Navajo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (379, 'ng', 'Ndonga', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (380, 'nap', 'Neapolitan', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (381, 'new', 'Newari', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (382, 'ne', 'N?pal kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (383, 'sba', 'Ngambay', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (384, 'nnh', 'Ngiemboon', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (385, 'jgo', 'Ngomba', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (386, 'yrl', 'Nheengatu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (387, 'nia', 'Nias', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (388, 'niu', 'Niuean', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (389, 'zxx', 'No linguistic content', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (390, 'nog', 'Nogai', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (391, 'nd', 'North Ndebele', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (392, 'frr', 'Northern Frisian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (393, 'se', 'Northern Sami', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (394, 'nso', 'Northern Sotho', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (395, 'no', 'Norwegian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (396, 'nb', 'Norwegian Bokmål', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (397, 'nn', 'Norwegian Nynorsk', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (398, 'nov', 'Novial', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (399, 'nus', 'Nuer', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (400, 'nym', 'Nyamwezi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (401, 'ny', 'Nyanja', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (402, 'nyn', 'Nyankole', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (403, 'tog', 'Nyasa Tonga', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (404, 'nyo', 'Nyoro', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (405, 'nzi', 'Nzima', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (406, 'nqo', 'N'Ko', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (407, 'oc', 'Occitan', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (408, 'oj', 'Ojibwa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (409, 'ang', 'Old English', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (410, 'fro', 'Old French', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (411, 'goh', 'Old High German', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (412, 'sga', 'Old Irish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (413, 'non', 'Old Norse', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (414, 'peo', 'Old Persian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (415, 'pro', 'Old Provençal', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (416, 'or', 'Oriya', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (417, 'om', 'Oromo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (418, 'osa', 'Osage', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (419, 'os', 'Ossetic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (420, 'ota', 'Ottoman Turkish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (421, 'pal', 'Pahlavi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (422, 'pfl', 'Palatine German', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (423, 'pau', 'Palauan', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (424, 'pi', 'Pali', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (425, 'pam', 'Pampanga', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (426, 'pag', 'Pangasinan', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (427, 'pap', 'Papiamento', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (428, 'ps', 'Pashto', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (429, 'pdc', 'Pennsylvania German', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (430, 'fa', 'P??hyia kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (431, 'phn', 'Phoenician', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (432, 'pcd', 'Picard', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (433, 'pms', 'Piedmontese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (434, 'pdt', 'Plautdietsch', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (435, 'pon', 'Pohnpeian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (436, 'pnt', 'Pontic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (437, 'pl', 'P?land kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (438, 'pt', 'P??tugal kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (439, 'prg', 'Prussian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (440, 'pa', 'Pungyabi kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (441, 'qu', 'Quechua', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (442, 'ru', 'Rahyia kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (443, 'raj', 'Rajasthani', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (444, 'rap', 'Rapanui', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (445, 'rar', 'Rarotongan', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (446, 'rw', 'Rewanda kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (447, 'rif', 'Riffian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (448, 'rgn', 'Romagnol', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (449, 'rm', 'Romansh', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (450, 'rom', 'Romany', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (451, 'rof', 'Rombo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (452, 'ro', 'Romenia kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (453, 'root', 'Root', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (454, 'rtm', 'Rotuman', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (455, 'rug', 'Roviana', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (456, 'rn', 'Rundi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (457, 'rue', 'Rusyn', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (458, 'rwk', 'Rwa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (459, 'ssy', 'Saho', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (460, 'sah', 'Sakha', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (461, 'sam', 'Samaritan Aramaic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (462, 'saq', 'Samburu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (463, 'sm', 'Samoan', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (464, 'sgs', 'Samogitian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (465, 'sad', 'Sandawe', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (466, 'sg', 'Sango', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (467, 'sbp', 'Sangu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (468, 'sa', 'Sanskrit', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (469, 'sat', 'Santali', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (470, 'sc', 'Sardinian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (471, 'sas', 'Sasak', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (472, 'sdc', 'Sassarese Sardinian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (473, 'stq', 'Saterland Frisian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (474, 'saz', 'Saurashtra', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (475, 'sco', 'Scots', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (476, 'gd', 'Scottish Gaelic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (477, 'sly', 'Selayar', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (478, 'sel', 'Selkup', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (479, 'seh', 'Sena', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (480, 'see', 'Seneca', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (481, 'sr', 'Serbian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (482, 'sh', 'Serbo-Croatian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (483, 'srr', 'Serer', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (484, 'sei', 'Seri', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (485, 'ksb', 'Shambala', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (486, 'shn', 'Shan', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (487, 'sn', 'Shona', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (488, 'ii', 'Sichuan Yi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (489, 'scn', 'Sicilian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (490, 'sid', 'Sidamo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (491, 'bla', 'Siksika', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (492, 'szl', 'Silesian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (493, 'zh_Hans', 'Simplified Chinese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (494, 'sd', 'Sindhi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (495, 'si', 'Sinhala', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (496, 'sms', 'Skolt Sami', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (497, 'den', 'Slave', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (498, 'sk', 'Slovak', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (499, 'sl', 'Slovenian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (500, 'xog', 'Soga', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (501, 'sog', 'Sogdien', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (502, 'so', 'Somalia kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (503, 'snk', 'Soninke', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (504, 'azb', 'South Azerbaijani', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (505, 'nr', 'South Ndebele', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (506, 'alt', 'Southern Altai', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (507, 'sma', 'Southern Sami', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (508, 'st', 'Southern Sotho', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (509, 'es', 'Spain kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (510, 'srn', 'Sranan Tongo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (511, 'zgh', 'Standard Moroccan Tamazight', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (512, 'suk', 'Sukuma', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (513, 'sux', 'Sumerian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (514, 'su', 'Sundanese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (515, 'sus', 'Susu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (516, 'sw', 'Swahili', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (517, 'ss', 'Swati', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (518, 'sv', 'Sweden kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (519, 'fr_CH', 'Swiss French', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (520, 'gsw', 'Swiss German', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (521, 'de_CH', 'Swiss High German', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (522, 'syr', 'Syriac', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (523, 'shi', 'Tachelhit', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (524, 'th', 'Taeland kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (525, 'tl', 'Tagalog', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (526, 'ty', 'Tahitian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (527, 'dav', 'Taita', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (528, 'tg', 'Tajik', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (529, 'tly', 'Talysh', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (530, 'tmh', 'Tamashek', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (531, 'ta', 'Tamil kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (532, 'trv', 'Taroko', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (533, 'twq', 'Tasawaq', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (534, 'tt', 'Tatar', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (535, 'te', 'Telugu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (536, 'ter', 'Tereno', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (537, 'teo', 'Teso', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (538, 'tet', 'Tetum', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (539, 'tr', 'T??ki kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (540, 'bo', 'Tibetan', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (541, 'tig', 'Tigre', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (542, 'ti', 'Tigrinya', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (543, 'tem', 'Timne', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (544, 'tiv', 'Tiv', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (545, 'tli', 'Tlingit', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (546, 'tpi', 'Tok Pisin', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (547, 'tkl', 'Tokelau', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (548, 'to', 'Tongan', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (549, 'fit', 'Tornedalen Finnish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (550, 'zh_Hant', 'Traditional Chinese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (551, 'tkr', 'Tsakhur', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (552, 'tsd', 'Tsakonian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (553, 'tsi', 'Tsimshian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (554, 'ts', 'Tsonga', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (555, 'tn', 'Tswana', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (556, 'tcy', 'Tulu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (557, 'tum', 'Tumbuka', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (558, 'aeb', 'Tunisian Arabic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (559, 'tk', 'Turkmen', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (560, 'tru', 'Turoyo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (561, 'tvl', 'Tuvalu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (562, 'tyv', 'Tuvinian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (563, 'tw', 'Twi', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (564, 'kcg', 'Tyap', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (565, 'udm', 'Udmurt', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (566, 'uga', 'Ugaritic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (567, 'uk', 'Ukren kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (568, 'umb', 'Umbundu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (569, 'und', 'Unknown Language', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (570, 'hsb', 'Upper Sorbian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (571, 'ur', 'Urdu kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (572, 'ug', 'Uyghur', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (573, 'uz', 'Uzbek', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (574, 'vai', 'Vai', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (575, 've', 'Venda', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (576, 'vec', 'Venetian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (577, 'vep', 'Veps', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (578, 'vi', 'Vi?tnam kasa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (579, 'vo', 'Volapük', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (580, 'vro', 'Võro', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (581, 'vot', 'Votic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (582, 'vun', 'Vunjo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (583, 'wa', 'Walloon', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (584, 'wae', 'Walser', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (585, 'war', 'Waray', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (586, 'wbp', 'Warlpiri', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (587, 'was', 'Washo', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (588, 'guc', 'Wayuu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (589, 'cy', 'Welsh', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (590, 'vls', 'West Flemish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (591, 'fy', 'Western Frisian', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (592, 'mrj', 'Western Mari', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (593, 'wal', 'Wolaytta', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (594, 'wo', 'Wolof', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (595, 'wuu', 'Wu Chinese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (596, 'xh', 'Xhosa', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (597, 'hsn', 'Xiang Chinese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (598, 'yav', 'Yangben', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (599, 'yao', 'Yao', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (600, 'yap', 'Yapese', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (601, 'ybb', 'Yemba', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (602, 'yi', 'Yiddish', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (603, 'yo', 'Yoruba', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (604, 'zap', 'Zapotec', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (605, 'dje', 'Zarma', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (606, 'zza', 'Zaza', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (607, 'zea', 'Zeelandic', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (608, 'zen', 'Zenaga', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (609, 'za', 'Zhuang', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (610, 'gbz', 'Zoroastrian Dari', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (611, 'zu', 'Zulu', NULL, '2021-12-29 17:01:02.468985', NULL);
INSERT INTO apimaster_modellanguages (id, code, value, description, created_at, updated_at) VALUES (612, 'zun', 'Zuni', NULL, '2021-12-29 17:01:02.468985', NULL);

-- Table: apimaster_modelmenus
DROP TABLE IF EXISTS apimaster_modelmenus;

CREATE TABLE apimaster_modelmenus (
    id          INTEGER      NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    name        VARCHAR (50),
    slug        VARCHAR (50),
    description TEXT,
    status      BOOL         NOT NULL,
    is_deleted  BOOL         NOT NULL,
    created_by  INTEGER,
    updated_by  INTEGER,
    deleted_by  INTEGER,
    created_at  DATETIME     NOT NULL,
    updated_at  DATETIME,
    deleted_at  DATETIME
);


-- Table: apimaster_modelrights
DROP TABLE IF EXISTS apimaster_modelrights;

CREATE TABLE apimaster_modelrights (
    id          INTEGER      NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    name        VARCHAR (50),
    slug        VARCHAR (50),
    description TEXT,
    status      BOOL         NOT NULL,
    is_deleted  BOOL         NOT NULL,
    created_by  INTEGER,
    updated_by  INTEGER,
    deleted_by  INTEGER,
    created_at  DATETIME     NOT NULL,
    updated_at  DATETIME,
    deleted_at  DATETIME,
    User_id     INTEGER      NOT NULL
                             REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    function_id BIGINT       NOT NULL
                             REFERENCES apimaster_modelfunctions (id) DEFERRABLE INITIALLY DEFERRED,
    menu_id     BIGINT       NOT NULL
                             REFERENCES apimaster_modelmenus (id) DEFERRABLE INITIALLY DEFERRED,
    submenu_id  BIGINT       NOT NULL
                             REFERENCES apimaster_modelsubmenus (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: apimaster_modelsubmenus
DROP TABLE IF EXISTS apimaster_modelsubmenus;

CREATE TABLE apimaster_modelsubmenus (
    id          INTEGER      NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    name        VARCHAR (50),
    slug        VARCHAR (50),
    description TEXT,
    status      BOOL         NOT NULL,
    is_deleted  BOOL         NOT NULL,
    created_by  INTEGER,
    updated_by  INTEGER,
    deleted_by  INTEGER,
    created_at  DATETIME     NOT NULL,
    updated_at  DATETIME,
    deleted_at  DATETIME,
    menu_id     BIGINT       NOT NULL
                             REFERENCES apimaster_modelmenus (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: apimaster_recommendeddoctors
DROP TABLE IF EXISTS apimaster_recommendeddoctors;

CREATE TABLE apimaster_recommendeddoctors (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    created_by INTEGER,
    updated_by INTEGER,
    created_at DATETIME NOT NULL,
    updated_at DATETIME,
    doctor_id  INTEGER
                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    patient_id INTEGER
                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    profile_id BIGINT
                        REFERENCES apimaster_userprofiles (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: apimaster_userprofiles
DROP TABLE IF EXISTS apimaster_userprofiles;

CREATE TABLE apimaster_userprofiles (
    id                   INTEGER       NOT NULL
                                       PRIMARY KEY AUTOINCREMENT,
    name                 VARCHAR (100),
    title                VARCHAR (120),
    about                TEXT,
    description          TEXT,
    dob                  DATE,
    occupation           VARCHAR (20)  NOT NULL,
    photo                VARCHAR (100),
    sex                  VARCHAR (20)  NOT NULL,
    email                VARCHAR (150),
    mobile               VARCHAR (20),
    mobile1              VARCHAR (20),
    blood_group          VARCHAR (50),
    locality             VARCHAR (100),
    address              VARCHAR (100),
    address2             VARCHAR (100),
    city                 VARCHAR (100),
    state                VARCHAR (100),
    country              VARCHAR (100),
    pincode              INTEGER,
    latitude_coordinate  VARCHAR (100),
    longitude_coordinate VARCHAR (100),
    users_id             INTEGER,
    profile_id           INTEGER,
    status               BOOL          NOT NULL,
    is_deleted           BOOL          NOT NULL,
    created_by           INTEGER,
    updated_by           INTEGER,
    deleted_by           INTEGER,
    created_at           DATETIME      NOT NULL,
    updated_at           DATETIME,
    deleted_at           DATETIME,
    specialties          VARCHAR (150),
    work_experience      VARCHAR (50),
    language             VARCHAR (250),
    language_id          INTEGER,
    verification         INTEGER,
    verification_text    VARCHAR (20),
    section_flag         TEXT,
    flag_count           INTEGER,
    specialty_id         BIGINT
                                       REFERENCES hospital_treatments (id) DEFERRABLE INITIALLY DEFERRED,
    phone_code           VARCHAR (20) 
);

INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (1, 'dash kamal', 'General User', '', 'update base64 image 2021-12-29 15:58:18', '2021-11-10', 'doctor', 'profile_photo/image_Wn6BFli.png', 'male', 'dashkamal@mailinator.com', '9846584616', '', '', '', 'noida', '', '', '', '', NULL, '', '', 1, NULL, 1, 0, NULL, NULL, NULL, '2021-11-29 12:19:31.472602', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Aprooved', '[True, True, False]', 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (2, 'Roshan', 'General User', '', '', NULL, 'patient', '', 'male', 'roshan@mailinator.com', '8464418444', '', '', '', 'noida', '', '', '', '', NULL, '', '', NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-11-29 13:04:30.864868', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (3, 'new patient', 'General User', '', '', NULL, 'patient', '', 'male', 'patient@mailinator.com', '8884488844', '', '', '', 'noida ', '', '', '', '', NULL, '', '', NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-12-03 05:37:13.332151', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (4, 'new doctor', 'General User', '', '', '1998-02-10', 'doctor', '', 'male', 'newdoctor@mailinator.com', '8844188441', '', '', '', 'niida', '', '', '', '', NULL, '', '', NULL, NULL, 1, 0, NULL, NULL, NULL, '2021-12-03 05:41:58.931459', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Aprooved', NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (5, 'sameer', 'General User', NULL, NULL, NULL, 'patient', NULL, 'male', 'sameer@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, NULL, NULL, NULL, '2021-12-04 05:48:58.999433', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (6, 'sameer1', 'General User', NULL, NULL, NULL, 'patient', NULL, 'male', 'sameer1@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-12-04 05:53:45.252376', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (7, 'sameerks', 'General User', NULL, NULL, NULL, 'patient', NULL, 'male', 'sameerks@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 0, 0, NULL, NULL, NULL, '2021-12-04 05:56:23.893051', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (8, 'poonam', 'General User', NULL, NULL, NULL, 'patient', NULL, 'male', 'poonam@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 08:17:36.190088', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (9, 'manish', 'General User', NULL, NULL, NULL, 'patient', NULL, 'male', 'manish@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 08:31:01.064222', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (10, 'maneesh', 'General User', NULL, NULL, NULL, 'patient', NULL, 'male', 'maneesh@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 08:35:12.593653', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (11, 'maneeshks', 'General User', NULL, NULL, NULL, 'patient', NULL, 'male', 'maneeshks@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 08:50:38.578617', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (12, 'monika', 'General User', NULL, NULL, NULL, 'patient', NULL, 'male', 'monika@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 09:02:08.893510', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (13, 'monikasoni', 'General User', NULL, NULL, NULL, 'patient', NULL, 'male', 'monikasoni@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 09:27:02.602677', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (14, 'yogeshsoni', 'General User', NULL, NULL, NULL, 'patient', NULL, 'male', 'yogeshsoni@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 09:28:20.352452', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (15, 'yogeshks', 'General User', NULL, NULL, NULL, 'patient', NULL, 'male', 'yogeshks@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 09:29:39.620923', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (16, 'yogi1', 'General User', NULL, NULL, NULL, 'patient', NULL, 'male', 'yogi1@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:16:45.911473', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (17, 'yogi2', 'General User', NULL, NULL, NULL, 'patient', NULL, 'male', 'yogi2@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:21:23.200531', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (18, 'yogi3', 'General User', NULL, NULL, NULL, 'patient', NULL, 'male', 'yogi3@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:22:23.115667', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (19, 'yogi4', 'General User', NULL, NULL, NULL, 'doctor', '', 'male', 'yogi4@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, 1, 0, NULL, NULL, NULL, '2021-12-12 15:23:42.382056', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Aprooved', NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (20, 'yogi to 102', 'General User', NULL, 'demo description', NULL, 'doctor', 'profile_photo/20723-2-mario-image_pcRTCQ0.png', 'male', 'yogi6@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:27:44.296325', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Rejected', NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (21, 'yogi to 102', 'General User', NULL, 'demo description', NULL, 'patient', 'profile_photo/20723-2-mario-image.png', 'male', 'yogi8@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:31:58.661505', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (22, '9988008800', 'General User', NULL, NULL, NULL, 'patient', '', 'male', 'yogi9@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, NULL, 0, 0, NULL, NULL, NULL, '2021-12-28 09:30:16.691156', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (23, '9988008802', 'General User', NULL, NULL, NULL, 'patient', '', 'male', 'yogi10@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, 0, 0, NULL, NULL, NULL, '2021-12-28 11:37:25.455242', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (24, '9988008804', 'General User', NULL, NULL, NULL, 'patient', '', 'male', 'yogi11@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, NULL, 0, 0, NULL, NULL, NULL, '2021-12-28 11:42:01.387853', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (25, '9988008805', 'General User', NULL, NULL, NULL, 'patient', '', 'male', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, 0, 0, NULL, NULL, NULL, '2021-12-28 12:07:23.351779', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (26, '998800890', 'General User', NULL, NULL, NULL, 'patient', '', 'male', '998800890@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, 0, 0, NULL, NULL, NULL, '2021-12-28 12:25:13.390060', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (27, '998800891', 'General User', NULL, NULL, NULL, 'patient', '', 'male', 'test@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, 0, 0, NULL, NULL, NULL, '2021-12-28 12:27:36.051362', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (28, 'Name', 'General User', NULL, NULL, NULL, 'patient', '', 'male', 'test1234@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, NULL, 0, 0, NULL, NULL, NULL, '2021-12-29 06:48:48.636605', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (29, 'Name', 'General User', NULL, NULL, NULL, 'patient', '', 'male', 'test1234@gmail.com', '9984008401', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, NULL, 0, 0, NULL, NULL, NULL, '2021-12-29 07:56:05.431690', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (30, 'Name', 'General User', NULL, NULL, NULL, 'patient', '', 'male', 'test1234@gmail.com', '9984800898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, NULL, 0, 0, NULL, NULL, NULL, '2021-12-29 16:48:22.984916', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (31, 'yogi to 121', 'General User', NULL, 'update base64 image 2022-01-21 12:19:08', NULL, 'doctor', 'profile_photo/image_lKCsLDD.png', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, NULL, 0, 0, NULL, NULL, NULL, '2021-12-29 17:00:58.906327', NULL, NULL, NULL, NULL, '[''ab'', ''en'']', NULL, 0, 'Recheck', '[True, True, False]', 2, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (32, 'yogi to 121', 'General User', NULL, 'demo description', NULL, 'patient', '', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, NULL, 0, 0, NULL, NULL, NULL, '2022-01-12 13:58:09.182819', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '[False, False, False]', 1, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (33, 'XXX', 'General User', NULL, NULL, NULL, 'patient', '', 'male', 'test1234@gmail.com', '9984848400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, NULL, 0, 0, NULL, NULL, NULL, '2022-01-19 07:28:29.902572', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '[False, False, False]', 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (34, NULL, 'General User', NULL, NULL, NULL, 'patient', '', 'male', NULL, '9198316509', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, NULL, 0, 0, NULL, NULL, NULL, '2022-01-28 10:36:39.171019', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '[False, False, False]', 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (35, NULL, 'General User', NULL, NULL, NULL, 'patient', '', 'male', NULL, '8233081931', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, NULL, 0, 0, NULL, NULL, NULL, '2022-02-02 11:21:05.855519', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '[False, False, False]', 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (36, NULL, 'General User', NULL, NULL, NULL, 'patient', '', 'male', NULL, '918233081931', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 07:10:10.987472', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '[False, False, False]', 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (37, NULL, 'General User', NULL, NULL, NULL, 'patient', '', 'male', NULL, '9974188851', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 11:08:36.817693', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '[False, False, False]', 0, 1, NULL);
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (38, NULL, 'General User', NULL, NULL, NULL, 'patient', '', 'male', NULL, '9974188854', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 11:25:22.900105', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '[False, False, False]', 0, 1, '+92');
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (39, NULL, 'General User', NULL, NULL, NULL, 'patient', '', 'male', NULL, '9974188855', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, NULL, 0, 0, NULL, NULL, NULL, '2022-02-03 11:40:35.233929', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '[False, False, False]', 0, 1, '+92');
INSERT INTO apimaster_userprofiles (id, name, title, about, description, dob, occupation, photo, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, users_id, profile_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, specialties, work_experience, language, language_id, verification, verification_text, section_flag, flag_count, specialty_id, phone_code) VALUES (40, NULL, 'General User', NULL, NULL, NULL, 'doctor', '', 'male', NULL, '8128929546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56, NULL, 0, 0, NULL, NULL, NULL, '2022-02-10 04:15:51.672900', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '[False, False, False]', 0, 1, NULL);

-- Table: apimaster_userreviews
DROP TABLE IF EXISTS apimaster_userreviews;

CREATE TABLE apimaster_userreviews (
    id         INTEGER  NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    message    TEXT,
    ratting    INTEGER,
    status     BOOL     NOT NULL,
    is_deleted BOOL     NOT NULL,
    created_by INTEGER,
    updated_by INTEGER,
    deleted_by INTEGER,
    created_at DATETIME NOT NULL,
    updated_at DATETIME,
    deleted_at DATETIME,
    patient_id INTEGER
                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    profile_id BIGINT
                        REFERENCES apimaster_userprofiles (id) DEFERRABLE INITIALLY DEFERRED,
    doctor_id  INTEGER
                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO apimaster_userreviews (id, message, ratting, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, patient_id, profile_id, doctor_id) VALUES (1, 'good service', 4, 0, 0, NULL, NULL, NULL, '2022-02-02 09:34:28.850628', NULL, NULL, 10, 12, 44);

-- Table: apimaster_usersachievements
DROP TABLE IF EXISTS apimaster_usersachievements;

CREATE TABLE apimaster_usersachievements (
    id          INTEGER       NOT NULL
                              PRIMARY KEY AUTOINCREMENT,
    name        VARCHAR (150),
    subject     VARCHAR (150),
    description TEXT,
    univercity  VARCHAR (150),
    college     VARCHAR (150),
    bord        VARCHAR (150),
    grade       INTEGER,
    file        VARCHAR (100),
    status      BOOL          NOT NULL,
    is_deleted  BOOL          NOT NULL,
    created_by  INTEGER,
    updated_by  INTEGER,
    deleted_by  INTEGER,
    created_at  DATETIME      NOT NULL,
    updated_at  DATETIME,
    deleted_at  DATETIME,
    user_id     INTEGER
);


-- Table: apimaster_usersclinicimages
DROP TABLE IF EXISTS apimaster_usersclinicimages;

CREATE TABLE apimaster_usersclinicimages (
    id         INTEGER       NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    subject    VARCHAR (150),
    image      VARCHAR (100),
    status     BOOL          NOT NULL,
    is_deleted BOOL          NOT NULL,
    created_by INTEGER,
    updated_by INTEGER,
    deleted_by INTEGER,
    created_at DATETIME      NOT NULL,
    updated_at DATETIME,
    deleted_at DATETIME,
    clinic_id  BIGINT        NOT NULL
                             REFERENCES apimaster_usersclinics (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: apimaster_usersclinics
DROP TABLE IF EXISTS apimaster_usersclinics;

CREATE TABLE apimaster_usersclinics (
    id                   INTEGER       NOT NULL
                                       PRIMARY KEY AUTOINCREMENT,
    name                 VARCHAR (150),
    clinic_id            VARCHAR (50),
    about                VARCHAR (150),
    description          TEXT,
    clinic_fee           INTEGER,
    locality             VARCHAR (100),
    address              VARCHAR (100),
    address2             VARCHAR (100),
    city                 VARCHAR (100),
    state                VARCHAR (100),
    country              VARCHAR (100),
    pincode              INTEGER,
    latitude_coordinate  VARCHAR (100),
    longitude_coordinate VARCHAR (100),
    image                VARCHAR (100),
    file                 VARCHAR (100),
    status               BOOL          NOT NULL,
    is_deleted           BOOL          NOT NULL,
    created_by           INTEGER,
    updated_by           INTEGER,
    deleted_by           INTEGER,
    created_at           DATETIME      NOT NULL,
    updated_at           DATETIME,
    deleted_at           DATETIME,
    user_id              INTEGER
                                       REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    from_at              TIME,
    to_at                TIME
);

INSERT INTO apimaster_usersclinics (id, name, clinic_id, about, description, clinic_fee, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, image, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, from_at, to_at) VALUES (1, 'yogeshsoni', NULL, 'subject text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, NULL, NULL, NULL, '2021-12-12 09:28:21.768546', NULL, NULL, 13, NULL, NULL);
INSERT INTO apimaster_usersclinics (id, name, clinic_id, about, description, clinic_fee, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, image, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, from_at, to_at) VALUES (2, 'yogeshks', NULL, 'subject text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, NULL, NULL, NULL, '2021-12-12 09:29:40.862601', NULL, NULL, 14, NULL, NULL);
INSERT INTO apimaster_usersclinics (id, name, clinic_id, about, description, clinic_fee, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, image, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, from_at, to_at) VALUES (3, 'yogi1', NULL, 'subject text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, NULL, NULL, NULL, '2021-12-12 15:16:49.699093', NULL, NULL, 15, NULL, NULL);
INSERT INTO apimaster_usersclinics (id, name, clinic_id, about, description, clinic_fee, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, image, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, from_at, to_at) VALUES (4, 'yogi2', NULL, 'subject text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, NULL, NULL, NULL, '2021-12-12 15:21:25.767006', NULL, NULL, 16, NULL, NULL);
INSERT INTO apimaster_usersclinics (id, name, clinic_id, about, description, clinic_fee, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, image, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, from_at, to_at) VALUES (5, 'yogi3', NULL, 'subject text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, NULL, NULL, NULL, '2021-12-12 15:22:25.623106', NULL, NULL, 17, NULL, NULL);
INSERT INTO apimaster_usersclinics (id, name, clinic_id, about, description, clinic_fee, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, image, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, from_at, to_at) VALUES (6, 'yogi4', NULL, 'subject text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, NULL, NULL, NULL, '2021-12-12 15:23:46.053601', NULL, NULL, 18, NULL, NULL);
INSERT INTO apimaster_usersclinics (id, name, clinic_id, about, description, clinic_fee, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, image, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, from_at, to_at) VALUES (7, 'yogi6', NULL, 'subject text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, NULL, NULL, NULL, '2021-12-12 15:27:49.322685', NULL, NULL, 20, NULL, NULL);
INSERT INTO apimaster_usersclinics (id, name, clinic_id, about, description, clinic_fee, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, image, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, from_at, to_at) VALUES (8, 'Saini Hospital , multi speciality hospital', NULL, 'subject text', NULL, NULL, NULL, 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, NULL, NULL, NULL, '2021-12-29 17:00:59.972968', NULL, NULL, 44, '08:00:00', '10:00:00');
INSERT INTO apimaster_usersclinics (id, name, clinic_id, about, description, clinic_fee, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, image, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, from_at, to_at) VALUES (9, 'IBS Cybernics Centre', NULL, 'subject text', NULL, NULL, NULL, 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, NULL, NULL, NULL, '2021-12-29 17:00:59.972968', NULL, NULL, 44, '14:00:00', '16:00:00');
INSERT INTO apimaster_usersclinics (id, name, clinic_id, about, description, clinic_fee, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, image, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, from_at, to_at) VALUES (10, 'Dharamshila Narayana Superspeciality Hospital, Delhi', NULL, 'subject text', NULL, NULL, NULL, 'Delhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, NULL, NULL, NULL, '2021-12-29 17:00:59.972968', NULL, NULL, 44, '20:00:00', '23:49:00');
INSERT INTO apimaster_usersclinics (id, name, clinic_id, about, description, clinic_fee, locality, address, address2, city, state, country, pincode, latitude_coordinate, longitude_coordinate, image, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, from_at, to_at) VALUES (11, 'XXX', NULL, 'subject text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0, 0, NULL, NULL, NULL, '2022-02-10 04:15:51.855033', NULL, NULL, 56, NULL, NULL);

-- Table: apimaster_userseducations
DROP TABLE IF EXISTS apimaster_userseducations;

CREATE TABLE apimaster_userseducations (
    id           INTEGER       NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    name         VARCHAR (150),
    description  TEXT,
    univercity   VARCHAR (150),
    college      VARCHAR (150),
    grade        INTEGER,
    file         VARCHAR (100),
    status       BOOL          NOT NULL,
    is_deleted   BOOL          NOT NULL,
    created_by   INTEGER,
    updated_by   INTEGER,
    deleted_by   INTEGER,
    created_at   DATETIME      NOT NULL,
    updated_at   DATETIME,
    deleted_at   DATETIME,
    board        VARCHAR (150),
    passing_year VARCHAR (10),
    user_id      INTEGER
                               REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    end_at       DATE,
    from_at      DATE
);

INSERT INTO apimaster_userseducations (id, name, description, univercity, college, grade, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, board, passing_year, user_id, end_at, from_at) VALUES (1, 'xxx', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-11-26 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apimaster_userseducations (id, name, description, univercity, college, grade, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, board, passing_year, user_id, end_at, from_at) VALUES (2, 'yogeshsoni', NULL, NULL, NULL, NULL, '', 0, 0, NULL, NULL, NULL, '2021-12-12 09:28:21.393982', NULL, NULL, NULL, NULL, 13, NULL, NULL);
INSERT INTO apimaster_userseducations (id, name, description, univercity, college, grade, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, board, passing_year, user_id, end_at, from_at) VALUES (3, 'yogeshks', NULL, NULL, NULL, NULL, '', 0, 0, NULL, NULL, NULL, '2021-12-12 09:29:40.515268', NULL, NULL, NULL, NULL, 14, NULL, NULL);
INSERT INTO apimaster_userseducations (id, name, description, univercity, college, grade, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, board, passing_year, user_id, end_at, from_at) VALUES (4, 'yogi1', NULL, NULL, NULL, NULL, '', 0, 0, NULL, NULL, NULL, '2021-12-12 15:16:48.197587', NULL, NULL, NULL, NULL, 15, NULL, NULL);
INSERT INTO apimaster_userseducations (id, name, description, univercity, college, grade, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, board, passing_year, user_id, end_at, from_at) VALUES (5, 'yogi2', NULL, NULL, NULL, NULL, '', 0, 0, NULL, NULL, NULL, '2021-12-12 15:21:24.869397', NULL, NULL, NULL, NULL, 16, NULL, NULL);
INSERT INTO apimaster_userseducations (id, name, description, univercity, college, grade, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, board, passing_year, user_id, end_at, from_at) VALUES (6, 'yogi3', NULL, NULL, NULL, NULL, '', 0, 0, NULL, NULL, NULL, '2021-12-12 15:22:24.846046', NULL, NULL, NULL, NULL, 17, NULL, NULL);
INSERT INTO apimaster_userseducations (id, name, description, univercity, college, grade, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, board, passing_year, user_id, end_at, from_at) VALUES (7, 'yogi4', NULL, NULL, NULL, NULL, '', 0, 0, NULL, NULL, NULL, '2021-12-12 15:23:44.878959', NULL, NULL, NULL, NULL, 18, NULL, NULL);
INSERT INTO apimaster_userseducations (id, name, description, univercity, college, grade, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, board, passing_year, user_id, end_at, from_at) VALUES (8, 'yogi to 101', 'demo description', NULL, NULL, NULL, '', 0, 0, NULL, NULL, NULL, '2021-12-12 15:27:47.435145', NULL, NULL, NULL, NULL, 20, NULL, NULL);
INSERT INTO apimaster_userseducations (id, name, description, univercity, college, grade, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, board, passing_year, user_id, end_at, from_at) VALUES (9, 'BMS', NULL, 'Hamdard Institute of Medical Sciences', 'Hamdard Institute of Medical Sciences', 84, '', 0, 0, NULL, NULL, NULL, '2021-12-29 17:00:59.595599', NULL, NULL, NULL, '2008', 44, '2004-08-08', '2008-08-08');
INSERT INTO apimaster_userseducations (id, name, description, univercity, college, grade, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, board, passing_year, user_id, end_at, from_at) VALUES (10, 'MS', NULL, 'Hamdard Institute of Medical Sciences', 'Hamdard Institute of Medical Sciences', 84, '', 0, 0, NULL, NULL, NULL, '2021-12-29 17:00:59.595599', NULL, NULL, NULL, '2010', 44, '2010-08-08', '2008-08-08');
INSERT INTO apimaster_userseducations (id, name, description, univercity, college, grade, file, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, board, passing_year, user_id, end_at, from_at) VALUES (11, 'XXX', NULL, NULL, NULL, NULL, '', 0, 0, NULL, NULL, NULL, '2022-02-10 04:15:51.794380', NULL, NULL, NULL, NULL, 56, NULL, NULL);

-- Table: apimaster_usersidentityproofs
DROP TABLE IF EXISTS apimaster_usersidentityproofs;

CREATE TABLE apimaster_usersidentityproofs (
    id                INTEGER       NOT NULL
                                    PRIMARY KEY AUTOINCREMENT,
    name              VARCHAR (150),
    identity_proof_no VARCHAR (50),
    file              VARCHAR (100),
    description       TEXT,
    status            BOOL          NOT NULL,
    is_deleted        BOOL          NOT NULL,
    created_by        INTEGER,
    updated_by        INTEGER,
    deleted_by        INTEGER,
    created_at        DATETIME      NOT NULL,
    updated_at        DATETIME,
    deleted_at        DATETIME,
    user_id           INTEGER
                                    REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO apimaster_usersidentityproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (1, 'yogeshsoni', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 09:28:22.171823', NULL, NULL, 13);
INSERT INTO apimaster_usersidentityproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (2, 'yogeshks', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 09:29:41.317302', NULL, NULL, 14);
INSERT INTO apimaster_usersidentityproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (3, 'yogi1', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:16:50.737042', NULL, NULL, 15);
INSERT INTO apimaster_usersidentityproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (4, 'yogi2', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:21:27.347825', NULL, NULL, 16);
INSERT INTO apimaster_usersidentityproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (5, 'yogi3', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:22:26.427587', NULL, NULL, 17);
INSERT INTO apimaster_usersidentityproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (6, 'yogi4', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:23:46.944097', NULL, NULL, 18);
INSERT INTO apimaster_usersidentityproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (7, 'yogi6', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:27:51.176622', NULL, NULL, 20);
INSERT INTO apimaster_usersidentityproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (8, 'new', NULL, 'doctors_docs/image_ty8wucJ.png', 'Identity proof submited', 0, 0, NULL, NULL, NULL, '2021-12-29 17:01:00.314068', NULL, NULL, 44);
INSERT INTO apimaster_usersidentityproofs (id, name, identity_proof_no, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id) VALUES (9, 'XXX', NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2022-02-10 04:15:51.912243', NULL, NULL, 56);

-- Table: apimaster_usersissues
DROP TABLE IF EXISTS apimaster_usersissues;

CREATE TABLE apimaster_usersissues (
    id          INTEGER       NOT NULL
                              PRIMARY KEY AUTOINCREMENT,
    name        VARCHAR (150),
    subject     VARCHAR (150),
    description TEXT,
    issues_id   INTEGER,
    status      BOOL          NOT NULL,
    is_deleted  BOOL          NOT NULL,
    created_by  INTEGER,
    updated_by  INTEGER,
    deleted_by  INTEGER,
    created_at  DATETIME      NOT NULL,
    updated_at  DATETIME,
    deleted_at  DATETIME,
    user_id     INTEGER
);


-- Table: apimaster_usersregistrationcouncils
DROP TABLE IF EXISTS apimaster_usersregistrationcouncils;

CREATE TABLE apimaster_usersregistrationcouncils (
    id                INTEGER       NOT NULL
                                    PRIMARY KEY AUTOINCREMENT,
    name              VARCHAR (150),
    registration_no   VARCHAR (50),
    registration_year VARCHAR (100),
    file              VARCHAR (100),
    description       TEXT,
    status            BOOL          NOT NULL,
    is_deleted        BOOL          NOT NULL,
    created_by        INTEGER,
    updated_by        INTEGER,
    deleted_by        INTEGER,
    created_at        DATETIME      NOT NULL,
    updated_at        DATETIME,
    deleted_at        DATETIME,
    user_id           INTEGER
                                    REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    profile_id        INTEGER
);

INSERT INTO apimaster_usersregistrationcouncils (id, name, registration_no, registration_year, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, profile_id) VALUES (1, 'sameerks', 'EBEGEV6437657', '2022', '', 'demo data', 0, 0, NULL, NULL, NULL, '2021-12-06 11:11:15.137235', NULL, NULL, NULL, NULL);
INSERT INTO apimaster_usersregistrationcouncils (id, name, registration_no, registration_year, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, profile_id) VALUES (2, 'yogeshsoni', NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 09:28:20.829138', NULL, NULL, 13, NULL);
INSERT INTO apimaster_usersregistrationcouncils (id, name, registration_no, registration_year, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, profile_id) VALUES (3, 'yogeshks', NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 09:29:40.076596', NULL, NULL, 14, NULL);
INSERT INTO apimaster_usersregistrationcouncils (id, name, registration_no, registration_year, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, profile_id) VALUES (4, 'yogi1', NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:16:46.850998', NULL, NULL, 15, NULL);
INSERT INTO apimaster_usersregistrationcouncils (id, name, registration_no, registration_year, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, profile_id) VALUES (5, 'yogi2', NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:21:24.025160', NULL, NULL, 16, NULL);
INSERT INTO apimaster_usersregistrationcouncils (id, name, registration_no, registration_year, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, profile_id) VALUES (6, 'yogi3', NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:22:23.962393', NULL, NULL, 17, NULL);
INSERT INTO apimaster_usersregistrationcouncils (id, name, registration_no, registration_year, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, profile_id) VALUES (7, 'yogi4', NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:23:43.965581', NULL, NULL, 18, NULL);
INSERT INTO apimaster_usersregistrationcouncils (id, name, registration_no, registration_year, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, profile_id) VALUES (8, 'yogi6', NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-12 15:27:44.824069', NULL, NULL, 20, NULL);
INSERT INTO apimaster_usersregistrationcouncils (id, name, registration_no, registration_year, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, profile_id) VALUES (9, 'yogi to 121', 'CCEFF001', '2022', '', 'demo description', 0, 0, NULL, NULL, NULL, '2021-12-29 17:00:59.136926', NULL, NULL, 44, NULL);
INSERT INTO apimaster_usersregistrationcouncils (id, name, registration_no, registration_year, file, description, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, user_id, profile_id) VALUES (10, 'XXX', NULL, NULL, '', NULL, 0, 0, NULL, NULL, NULL, '2022-02-10 04:15:51.737473', NULL, NULL, 56, NULL);

-- Table: apimaster_usersspecializations
DROP TABLE IF EXISTS apimaster_usersspecializations;

CREATE TABLE apimaster_usersspecializations (
    id          INTEGER       NOT NULL
                              PRIMARY KEY AUTOINCREMENT,
    name        VARCHAR (150),
    subject     VARCHAR (150),
    description TEXT,
    univercity  VARCHAR (150),
    college     VARCHAR (150),
    bord        VARCHAR (150),
    grade       INTEGER,
    file        VARCHAR (100),
    status      BOOL          NOT NULL,
    is_deleted  BOOL          NOT NULL,
    created_by  INTEGER,
    updated_by  INTEGER,
    deleted_by  INTEGER,
    created_at  DATETIME      NOT NULL,
    updated_at  DATETIME,
    deleted_at  DATETIME,
    user_id     INTEGER
);


-- Table: apimaster_usersworkexperiences
DROP TABLE IF EXISTS apimaster_usersworkexperiences;

CREATE TABLE apimaster_usersworkexperiences (
    id              INTEGER       NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    name            VARCHAR (150),
    description     TEXT,
    work_experience INTEGER,
    doj             DATE,
    dol             DATE,
    file            VARCHAR (100),
    status          BOOL          NOT NULL,
    user_id         INTEGER,
    is_deleted      BOOL          NOT NULL,
    created_by      INTEGER,
    updated_by      INTEGER,
    deleted_by      INTEGER,
    created_at      DATETIME      NOT NULL,
    updated_at      DATETIME,
    deleted_at      DATETIME
);


-- Table: auth_group
DROP TABLE IF EXISTS auth_group;

CREATE TABLE auth_group (
    id   INTEGER       NOT NULL
                       PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (150) NOT NULL
                       UNIQUE
);


-- Table: auth_group_permissions
DROP TABLE IF EXISTS auth_group_permissions;

CREATE TABLE auth_group_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    group_id      INTEGER NOT NULL
                          REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: auth_permission
DROP TABLE IF EXISTS auth_permission;

CREATE TABLE auth_permission (
    id              INTEGER       NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    content_type_id INTEGER       NOT NULL
                                  REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    codename        VARCHAR (100) NOT NULL,
    name            VARCHAR (255) NOT NULL
);

INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_authtoken', 'Can add auth token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_authtoken', 'Can change auth token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_authtoken', 'Can delete auth token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_authtoken', 'Can view auth token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_appmodels', 'Can add app models');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_appmodels', 'Can change app models');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_appmodels', 'Can delete app models');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_appmodels', 'Can view app models');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_appointments', 'Can add appointments');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_appointments', 'Can change appointments');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_appointments', 'Can delete appointments');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_appointments', 'Can view appointments');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_blogs', 'Can add blogs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_blogs', 'Can change blogs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_blogs', 'Can delete blogs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_blogs', 'Can view blogs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (41, 11, 'add_categories', 'Can add categories');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (42, 11, 'change_categories', 'Can change categories');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (43, 11, 'delete_categories', 'Can delete categories');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (44, 11, 'view_categories', 'Can view categories');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (45, 12, 'add_contacts', 'Can add Contacts');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (46, 12, 'change_contacts', 'Can change Contacts');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (47, 12, 'delete_contacts', 'Can delete Contacts');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (48, 12, 'view_contacts', 'Can view Contacts');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (49, 13, 'add_historylogs', 'Can add history logs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (50, 13, 'change_historylogs', 'Can change history logs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (51, 13, 'delete_historylogs', 'Can delete history logs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (52, 13, 'view_historylogs', 'Can view history logs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (53, 14, 'add_paymentgetways', 'Can add payment getways');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (54, 14, 'change_paymentgetways', 'Can change payment getways');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (55, 14, 'delete_paymentgetways', 'Can delete payment getways');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (56, 14, 'view_paymentgetways', 'Can view payment getways');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (57, 15, 'add_paymentmodes', 'Can add payment modes');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (58, 15, 'change_paymentmodes', 'Can change payment modes');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (59, 15, 'delete_paymentmodes', 'Can delete payment modes');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (60, 15, 'view_paymentmodes', 'Can view payment modes');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (61, 16, 'add_subcategories', 'Can add subcategories');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (62, 16, 'change_subcategories', 'Can change subcategories');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (63, 16, 'delete_subcategories', 'Can delete subcategories');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (64, 16, 'view_subcategories', 'Can view subcategories');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (65, 17, 'add_subscriptionhistory', 'Can add subscription history');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (66, 17, 'change_subscriptionhistory', 'Can change subscription history');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (67, 17, 'delete_subscriptionhistory', 'Can delete subscription history');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (68, 17, 'view_subscriptionhistory', 'Can view subscription history');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (69, 18, 'add_subscriptionplans', 'Can add subscription plans');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (70, 18, 'change_subscriptionplans', 'Can change subscription plans');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (71, 18, 'delete_subscriptionplans', 'Can delete subscription plans');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (72, 18, 'view_subscriptionplans', 'Can view subscription plans');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (73, 19, 'add_translations', 'Can add translations');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (74, 19, 'change_translations', 'Can change translations');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (75, 19, 'delete_translations', 'Can delete translations');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (76, 19, 'view_translations', 'Can view translations');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (77, 20, 'add_treatmentcategories', 'Can add treatment categories');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (78, 20, 'change_treatmentcategories', 'Can change treatment categories');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (79, 20, 'delete_treatmentcategories', 'Can delete treatment categories');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (80, 20, 'view_treatmentcategories', 'Can view treatment categories');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (81, 21, 'add_treatments', 'Can add treatments');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (82, 21, 'change_treatments', 'Can change treatments');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (83, 21, 'delete_treatments', 'Can delete treatments');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (84, 21, 'view_treatments', 'Can view treatments');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (85, 22, 'add_userslogs', 'Can add users logs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (86, 22, 'change_userslogs', 'Can change users logs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (87, 22, 'delete_userslogs', 'Can delete users logs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (88, 22, 'view_userslogs', 'Can view users logs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (89, 23, 'add_banners', 'Can add banners');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (90, 23, 'change_banners', 'Can change banners');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (91, 23, 'delete_banners', 'Can delete banners');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (92, 23, 'view_banners', 'Can view banners');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (93, 24, 'add_address', 'Can add Address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (94, 24, 'change_address', 'Can change Address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (95, 24, 'delete_address', 'Can delete Address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (96, 24, 'view_address', 'Can view Address');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (97, 25, 'add_userprofiles', 'Can add user profiles');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (98, 25, 'change_userprofiles', 'Can change user profiles');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (99, 25, 'delete_userprofiles', 'Can delete user profiles');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (100, 25, 'view_userprofiles', 'Can view user profiles');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (101, 26, 'add_usersachievements', 'Can add UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (102, 26, 'change_usersachievements', 'Can change UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (103, 26, 'delete_usersachievements', 'Can delete UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (104, 26, 'view_usersachievements', 'Can view UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (105, 27, 'add_userseducations', 'Can add UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (106, 27, 'change_userseducations', 'Can change UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (107, 27, 'delete_userseducations', 'Can delete UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (108, 27, 'view_userseducations', 'Can view UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (109, 28, 'add_usersissues', 'Can add UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (110, 28, 'change_usersissues', 'Can change UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (111, 28, 'delete_usersissues', 'Can delete UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (112, 28, 'view_usersissues', 'Can view UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (113, 29, 'add_usersspecializations', 'Can add UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (114, 29, 'change_usersspecializations', 'Can change UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (115, 29, 'delete_usersspecializations', 'Can delete UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (116, 29, 'view_usersspecializations', 'Can view UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (117, 30, 'add_pages', 'Can add pages');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (118, 30, 'change_pages', 'Can change pages');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (119, 30, 'delete_pages', 'Can delete pages');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (120, 30, 'view_pages', 'Can view pages');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (121, 31, 'add_policies', 'Can add policies');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (122, 31, 'change_policies', 'Can change policies');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (123, 31, 'delete_policies', 'Can delete policies');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (124, 31, 'view_policies', 'Can view policies');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (125, 32, 'add_usersclinics', 'Can add UsersAchievements');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (126, 32, 'change_usersclinics', 'Can change UsersAchievements');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (127, 32, 'delete_usersclinics', 'Can delete UsersAchievements');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (128, 32, 'view_usersclinics', 'Can view UsersAchievements');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (129, 33, 'add_usersregistrationcouncils', 'Can add UsersRegistrationCouncils');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (130, 33, 'change_usersregistrationcouncils', 'Can change UsersRegistrationCouncils');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (131, 33, 'delete_usersregistrationcouncils', 'Can delete UsersRegistrationCouncils');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (132, 33, 'view_usersregistrationcouncils', 'Can view UsersRegistrationCouncils');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (133, 34, 'add_consultationfees', 'Can add ConsultationFees');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (134, 34, 'change_consultationfees', 'Can change ConsultationFees');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (135, 34, 'delete_consultationfees', 'Can delete ConsultationFees');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (136, 34, 'view_consultationfees', 'Can view ConsultationFees');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (137, 35, 'add_establishmentproofs', 'Can add EstablishmentProofs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (138, 35, 'change_establishmentproofs', 'Can change EstablishmentProofs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (139, 35, 'delete_establishmentproofs', 'Can delete EstablishmentProofs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (140, 35, 'view_establishmentproofs', 'Can view EstablishmentProofs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (141, 36, 'add_establishmenttimings', 'Can add EstablishmentTimings');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (142, 36, 'change_establishmenttimings', 'Can change EstablishmentTimings');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (143, 36, 'delete_establishmenttimings', 'Can delete EstablishmentTimings');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (144, 36, 'view_establishmenttimings', 'Can view EstablishmentTimings');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (145, 37, 'add_maplocations', 'Can add MapLocations');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (146, 37, 'change_maplocations', 'Can change MapLocations');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (147, 37, 'delete_maplocations', 'Can delete MapLocations');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (148, 37, 'view_maplocations', 'Can view MapLocations');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (149, 38, 'add_medicalregistrationproofs', 'Can add MedicalRegistrationProofs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (150, 38, 'change_medicalregistrationproofs', 'Can change MedicalRegistrationProofs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (151, 38, 'delete_medicalregistrationproofs', 'Can delete MedicalRegistrationProofs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (152, 38, 'view_medicalregistrationproofs', 'Can view MedicalRegistrationProofs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (153, 39, 'add_usersidentityproofs', 'Can add UsersIdentityProofs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (154, 39, 'change_usersidentityproofs', 'Can change UsersIdentityProofs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (155, 39, 'delete_usersidentityproofs', 'Can delete UsersIdentityProofs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (156, 39, 'view_usersidentityproofs', 'Can view UsersIdentityProofs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (157, 40, 'add_modelfunctions', 'Can add ModelFunctions');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (158, 40, 'change_modelfunctions', 'Can change ModelFunctions');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (159, 40, 'delete_modelfunctions', 'Can delete ModelFunctions');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (160, 40, 'view_modelfunctions', 'Can view ModelFunctions');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (161, 41, 'add_modelmenus', 'Can add ModelMenus');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (162, 41, 'change_modelmenus', 'Can change ModelMenus');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (163, 41, 'delete_modelmenus', 'Can delete ModelMenus');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (164, 41, 'view_modelmenus', 'Can view ModelMenus');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (165, 42, 'add_modelsubmenus', 'Can add ModelSubMenus');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (166, 42, 'change_modelsubmenus', 'Can change ModelSubMenus');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (167, 42, 'delete_modelsubmenus', 'Can delete ModelSubMenus');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (168, 42, 'view_modelsubmenus', 'Can view ModelSubMenus');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (169, 43, 'add_modelrights', 'Can add ModelRights');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (170, 43, 'change_modelrights', 'Can change ModelRights');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (171, 43, 'delete_modelrights', 'Can delete ModelRights');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (172, 43, 'view_modelrights', 'Can view ModelRights');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (173, 44, 'add_token', 'Can add Token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (174, 44, 'change_token', 'Can change Token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (175, 44, 'delete_token', 'Can delete Token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (176, 44, 'view_token', 'Can view Token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (177, 45, 'add_tokenproxy', 'Can add token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (178, 45, 'change_tokenproxy', 'Can change token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (179, 45, 'delete_tokenproxy', 'Can delete token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (180, 45, 'view_tokenproxy', 'Can view token');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (181, 46, 'add_phonemodel', 'Can add phone model');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (182, 46, 'change_phonemodel', 'Can change phone model');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (183, 46, 'delete_phonemodel', 'Can delete phone model');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (184, 46, 'view_phonemodel', 'Can view phone model');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (185, 47, 'add_doctorverifications', 'Can add UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (186, 47, 'change_doctorverifications', 'Can change UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (187, 47, 'delete_doctorverifications', 'Can delete UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (188, 47, 'view_doctorverifications', 'Can view UsersIssues');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (189, 48, 'add_modellanguages', 'Can add ModelLanguages');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (190, 48, 'change_modellanguages', 'Can change ModelLanguages');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (191, 48, 'delete_modellanguages', 'Can delete ModelLanguages');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (192, 48, 'view_modellanguages', 'Can view ModelLanguages');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (193, 49, 'add_usersworkexperiences', 'Can add UsersWorkExperiences');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (194, 49, 'change_usersworkexperiences', 'Can change UsersWorkExperiences');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (195, 49, 'delete_usersworkexperiences', 'Can delete UsersWorkExperiences');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (196, 49, 'view_usersworkexperiences', 'Can view UsersWorkExperiences');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (197, 50, 'add_doctorprescriptions', 'Can add DoctorPrescriptions');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (198, 50, 'change_doctorprescriptions', 'Can change DoctorPrescriptions');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (199, 50, 'delete_doctorprescriptions', 'Can delete DoctorPrescriptions');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (200, 50, 'view_doctorprescriptions', 'Can view DoctorPrescriptions');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (201, 51, 'add_userreviews', 'Can add UserReviews');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (202, 51, 'change_userreviews', 'Can change UserReviews');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (203, 51, 'delete_userreviews', 'Can delete UserReviews');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (204, 51, 'view_userreviews', 'Can view UserReviews');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (205, 52, 'add_feveratedoctors', 'Can add FeverateDoctor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (206, 52, 'change_feveratedoctors', 'Can change FeverateDoctor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (207, 52, 'delete_feveratedoctors', 'Can delete FeverateDoctor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (208, 52, 'view_feveratedoctors', 'Can view FeverateDoctor');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (209, 53, 'add_familymemberprofiles', 'Can add FamilyMemberProfiles');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (210, 53, 'change_familymemberprofiles', 'Can change FamilyMemberProfiles');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (211, 53, 'delete_familymemberprofiles', 'Can delete FamilyMemberProfiles');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (212, 53, 'view_familymemberprofiles', 'Can view FamilyMemberProfiles');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (213, 54, 'add_recommendeddoctors', 'Can add RecommendedDoctors');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (214, 54, 'change_recommendeddoctors', 'Can change RecommendedDoctors');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (215, 54, 'delete_recommendeddoctors', 'Can delete RecommendedDoctors');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (216, 54, 'view_recommendeddoctors', 'Can view RecommendedDoctors');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (217, 55, 'add_usersclinicimages', 'Can add UsersClinicImages');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (218, 55, 'change_usersclinicimages', 'Can change UsersClinicImages');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (219, 55, 'delete_usersclinicimages', 'Can delete UsersClinicImages');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (220, 55, 'view_usersclinicimages', 'Can view UsersClinicImages');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (221, 56, 'add_v1_userotp', 'Can add v1_ user otp');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (222, 56, 'change_v1_userotp', 'Can change v1_ user otp');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (223, 56, 'delete_v1_userotp', 'Can delete v1_ user otp');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (224, 56, 'view_v1_userotp', 'Can view v1_ user otp');

-- Table: auth_user
DROP TABLE IF EXISTS auth_user;

CREATE TABLE auth_user (
    id           INTEGER       NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    password     VARCHAR (128) NOT NULL,
    last_login   DATETIME,
    is_superuser BOOL          NOT NULL,
    username     VARCHAR (150) NOT NULL
                               UNIQUE,
    last_name    VARCHAR (150) NOT NULL,
    email        VARCHAR (254) NOT NULL,
    is_staff     BOOL          NOT NULL,
    is_active    BOOL          NOT NULL,
    date_joined  DATETIME      NOT NULL,
    first_name   VARCHAR (150) NOT NULL
);

INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (1, 'pbkdf2_sha256$260000$4KhOExuncysVJyH4ouepjD$6Tk4Y1GS33+mqhHVhbdnrGWbx6LaL3CRNT2kgp/GrtQ=', NULL, 1, 'admin', '', 'admin@mailinator.com', 1, 1, '2021-11-29 11:52:36.704084', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (2, 'pbkdf2_sha256$260000$WHuooke6lLACoMO3HtZr2Q$ivXasXqxa0ZnBbQawuJFfskOYk5C7tpumxn7uMBH6kQ=', '2022-02-07 11:26:00.549086', 0, 'yogesh', '9100091000', 'yogesh@mailinator.com', 0, 1, '2021-12-02 06:22:43.511037', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (3, 'pbkdf2_sha256$260000$3QAAec4EH5u3O4vfdVpbJz$U2xC1ODbBJ3u1NM4lUeL+r9tslDpaxGl58+Ed8/TN9k=', NULL, 0, 'sameer', '', 'sameer@mailinator.com', 0, 1, '2021-12-04 05:48:58.332033', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (4, 'pbkdf2_sha256$260000$o4bU93C37QY1ltlij342UD$sHCc+nEwlPiLWYzFcsy+7hYgE+Vq+T1hIytfwHsvUxo=', NULL, 0, 'sameer1', '', 'sameer1@mailinator.com', 0, 1, '2021-12-04 05:53:44.630099', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (5, 'pbkdf2_sha256$260000$Xzhp5nT5dgdSDlUrtMgLKy$Lq/KwWHhqAvfjv45uXq1VW0Ko1RiaTLRzW9SL4IY66I=', NULL, 0, 'sameerks', '', 'sameerks@mailinator.com', 0, 1, '2021-12-04 05:56:23.314691', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (6, 'pbkdf2_sha256$260000$Z73ntRrkiRTQ9HUlYwwUh7$jS2Hp6rIHSZ/vzzPhf96PflADPE8V+6qgoCSG/MqfvA=', NULL, 0, 'poonam', '', 'poonam@mailinator.com', 0, 1, '2021-12-12 08:17:35.453087', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (7, 'pbkdf2_sha256$260000$A8CMQqDeQ9jBMQ0K3xJQYx$tBP6CZ+wn/GoB29PumuTtmj8uZi8b5phOuHlfYSyPig=', NULL, 0, 'manish', '', 'manish@mailinator.com', 0, 1, '2021-12-12 08:31:00.529221', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (8, 'pbkdf2_sha256$260000$VP18i0BSGyqEGyr4uzwhL0$Xt8dlj4kXilznq8t1RvZGBvE5vaasKupO/ryMWWctBg=', NULL, 0, 'maneesh', '', 'maneesh@mailinator.com', 0, 1, '2021-12-12 08:35:12.004408', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (9, 'pbkdf2_sha256$260000$V3T6Hn37LgzHaWmtPizx0G$IpjAdUbkeiKhBUorQSvg/DTKEbSvUzHV1TWOcObW3ls=', NULL, 0, 'maneeshks', '', 'maneeshks@mailinator.com', 0, 1, '2021-12-12 08:50:38.071614', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (10, 'pbkdf2_sha256$260000$HkgCejjyOq99oNq92fap75$Lko/siRG/MDvfK4nwVAbPw02ZA7aXftXZb5u1mBnrcE=', NULL, 0, 'monika', '', 'monika@mailinator.com', 0, 1, '2021-12-12 09:02:08.426500', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (11, 'pbkdf2_sha256$260000$E5axEdiKjNwECtVjODwn5x$YKAQ9WgwNENgGmWEpcur/4kd5gMxMGsW0XKodfed058=', NULL, 0, 'monika1', '', 'monika@mailinator.com', 0, 1, '2021-12-12 09:26:22.744757', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (12, 'pbkdf2_sha256$260000$0rgQUfKORC3YcYp9K8wlQM$T5erZEmxILVTNqIg670j1ENjJCaeze4aman7nttx1OY=', NULL, 0, 'monikasoni', '', 'monikasoni@mailinator.com', 0, 1, '2021-12-12 09:27:02.030717', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (13, 'pbkdf2_sha256$260000$a5a85JsRsS9mK0alncKs4B$gUWcoL+cYrBbaiiQbOVLPMgA4rnuExud7sh0IaiMZRw=', NULL, 0, 'yogeshsoni', '', 'yogeshsoni@mailinator.com', 0, 1, '2021-12-12 09:28:19.773452', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (14, 'pbkdf2_sha256$260000$IWXNZ2iRVeDvXeJZOWGleB$UNyuVsSWrcJdwnyvvEdYLR09wmByZCMrlqOoQa9LEu8=', NULL, 0, 'yogeshks', '', 'yogeshks@mailinator.com', 0, 1, '2021-12-12 09:29:39.065151', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (15, 'pbkdf2_sha256$260000$TzGCAef5b4H2Jen5vTWTjf$9AV95d4DWChA9iDsYRMSd2zctbpAUY7BaMapN2ZIepo=', NULL, 0, 'yogi1', '', 'yogi1@mailinator.com', 0, 1, '2021-12-12 15:16:44.259180', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (16, 'pbkdf2_sha256$260000$T3wkQMhoEk40HAVTE7bWmJ$hwQyMCpKIPrEMX9RaFCpKOVxPJTUCBGSRXbOFQ8AKeI=', NULL, 0, 'yogi2', '', 'yogi2@mailinator.com', 0, 1, '2021-12-12 15:21:21.929425', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (17, 'pbkdf2_sha256$260000$YTP0v1QWPh8nrY7JIjEtxs$Wgoszeh5tW4dD/goTwunslUhcN1HVcryuoKLxKB9Xm4=', NULL, 0, 'yogi3', '', 'yogi3@mailinator.com', 0, 1, '2021-12-12 15:22:22.364959', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (18, 'pbkdf2_sha256$260000$AUntSxkOIctFYcx99jfVq3$5FHcbUj/JFDOklaFgMqjxcrDCS2W/W11hB0u77ZcITA=', NULL, 0, 'yogi4', '', 'yogi4@mailinator.com', 0, 1, '2021-12-12 15:23:40.264814', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (19, 'pbkdf2_sha256$260000$WX3EgVrjFL5RkxhBf7uNyv$SvIGib2ktMBYwMbU5DzBUMohcNvQdKVqUvUbpNBMAcI=', NULL, 0, 'yogi5', '', 'yogi5@mailinator.com', 0, 1, '2021-12-12 15:26:28.972116', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (20, 'pbkdf2_sha256$260000$qkge4VaS2PJGVewCPwybbe$9Gn5kfwmbhp0CCAhygFepdQIAKl62ZCnyRDGj6HoUS4=', NULL, 0, 'yogi6', '', 'yogi6@mailinator.com', 0, 1, '2021-12-12 15:27:43.232579', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (21, 'pbkdf2_sha256$260000$CR9khifWj75lIrXNTZ9gPm$7iW9scIDfM8iuzPdNqwVcpUma7rnYz+rh7gqQ7ubpss=', NULL, 0, 'yogi7', '', 'yogi7@mailinator.com', 0, 1, '2021-12-12 15:29:19.287982', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (22, 'pbkdf2_sha256$260000$n7aDizNlcj3ZVXF0ZNyclV$i0b2vPmLM1lcsm5iZd1hfVJHH9Fkpq9xUW+Q9jlp65g=', NULL, 0, 'yogi8', '', 'yogi8@mailinator.com', 0, 1, '2021-12-12 15:31:57.860900', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (23, 'pbkdf2_sha256$260000$xg89IJkW85tQThdZuY3tor$YXUxAKOmo+UPbE96ZebjhByDMqtE+YwlG4XHy08VpA0=', '2021-12-28 11:40:24.553671', 0, '9988008800', '', 'yogi9@mailinator.com', 0, 1, '2021-12-28 09:30:16.079094', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (24, 'pbkdf2_sha256$260000$RTjsFLM6a3KlA7ilLB05o5$24bWfqv39FVGXqq928OZwXD9NVuCrLpB83CV3MAqP8U=', NULL, 0, '9988008801', '', 'yogi9@mailinator.com', 0, 1, '2021-12-28 11:03:57.786950', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (25, 'pbkdf2_sha256$260000$o0rNEF7G1QVJfRj7vpHlBO$ASrU4cLfqgdwo9c5XOLS8ebVV18DcMSly3fNILedp3U=', '2021-12-29 12:43:04.666163', 0, '9988008802', '', 'yogi10@gmail.com', 0, 1, '2021-12-28 11:37:24.951446', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (26, 'pbkdf2_sha256$260000$zsCpcuzf592VIuYOeqJWE6$xVlCxYoF88Ukf9J419p5kLiCzrhUsQwuqhGRm/QQE+s=', NULL, 0, '9988008803', '', 'yogi10@gmail.com', 0, 1, '2021-12-28 11:41:24.018450', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (27, 'pbkdf2_sha256$260000$u6R4s8DcjwOHnUXNOnaxWJ$97P4IwosXo6xiwd93IryO6Ao/PC5l5gokLtSzVpdej8=', NULL, 0, '9988008804', '', 'yogi11@gmail.com', 0, 1, '2021-12-28 11:42:00.682223', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (28, 'pbkdf2_sha256$260000$jMToQPLfirOYGS55qLOQlX$SLIT5oVYVIHNTEwKmXKGz8FY3RP2Pw514W2lxVNVU1I=', NULL, 0, '9988008805', '', '', 0, 1, '2021-12-28 12:07:22.669477', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (29, 'pbkdf2_sha256$260000$33b1RCNAjuj5vy2vQSlhuv$uqvhuME+HkwBC8nD0pyDJzB1eafxDgam2F2zjsfqayo=', NULL, 0, '9988008806', '', '', 0, 1, '2021-12-28 12:13:17.932564', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (30, 'pbkdf2_sha256$260000$pvKlCaCKN59ULqFS6pxOob$rKujJ30ZfKPFiMfaOlAzTFMryeDQ47cSt3aCnzdcGLQ=', NULL, 0, '9988008808', '', '', 0, 1, '2021-12-28 12:23:03.314452', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (31, 'pbkdf2_sha256$260000$RhhSIqBMDEWPKmzXjy9yEO$VJrW+bEbliLTkQO9wNFfnKXV7TjhG/tsLbliAv7zpss=', NULL, 0, '9988008809', '', '', 0, 1, '2021-12-28 12:23:29.803679', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (32, 'pbkdf2_sha256$260000$kDMGWnKILqaRBnJm8brAab$mze/dvT5PJqHK4MG83TUFAbJ9NhGtISpIVl0p1nw150=', NULL, 0, '998800890', '', '998800890@gmail.com', 0, 1, '2021-12-28 12:25:12.853332', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (33, 'pbkdf2_sha256$260000$zJkxnu6OzBPbyw8Pml6q8G$bqX1YiZdpsI2C5Lhbgmp8WvJtvY4VIzJ9ye+7uuPeKY=', NULL, 0, '998800891', '', 'test@gmail.com', 0, 1, '2021-12-28 12:27:35.356672', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (34, 'pbkdf2_sha256$260000$NsPTdmx6QbZLVwVpbXNoqD$CQr2NAQNnBjbXsctoI3JszEN53Hy0Y9OEE05+NuLQbM=', NULL, 0, '998800892', '', 'test@gmail.com', 0, 1, '2021-12-28 12:31:31.707253', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (35, 'pbkdf2_sha256$260000$CYv8HpjUki14MWJXlbfoxk$/rB7E5lhz2iHlLE2Tx2fb3Y8dCD8MoEicD3ACpHiM8Y=', NULL, 0, '998800893', '', 'test@gmail.com', 0, 1, '2021-12-28 12:33:02.359857', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (36, 'pbkdf2_sha256$260000$Wyt52HXmfTe2lCRZREZbKp$and6qMkgbF8ZTpN+uxcB5PtXoKdbrPXpKzW6kHjISPk=', '2021-12-28 13:23:14.062894', 0, '998800894', '', 'test1234@gmail.com', 0, 1, '2021-12-28 13:23:11.918343', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (37, 'pbkdf2_sha256$260000$V13Lis1ZfJVQH2ZZkrB9te$4m9Zu3pRABHhmTpF41735f1/8sasI3hn0pV2WSEtsG8=', '2021-12-28 13:32:57.919850', 0, '998800895', '', 'test1234@gmail.com', 0, 1, '2021-12-28 13:32:56.080712', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (38, 'pbkdf2_sha256$260000$i5UCnZ4tBUT31paKGMDPqv$/856TAe8A49c+8PPrLG/wPRGKevIAJhus53oDjSyP7k=', '2021-12-28 13:36:09.870725', 0, '998800896', '', 'test1234@gmail.com', 0, 1, '2021-12-28 13:36:08.417042', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (39, 'pbkdf2_sha256$260000$v15JP316FTXLhe0j97jHWM$8EeR2hRaTXCQCdHycDrzNTenaSZwoqSBiQ7SexWOvZ8=', '2021-12-29 06:48:46.229867', 0, '998800897', '', 'test1234@gmail.com', 0, 1, '2021-12-29 06:48:44.505729', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (40, 'pbkdf2_sha256$260000$excTxHxxbrkSiOUORMRAPS$oYwJQTA3axTyK2ntl0sZnRatCO0N+4i9zGBG67HWjV8=', '2021-12-29 07:50:46.924752', 0, '998800898', '', 'test1234@gmail.com', 0, 1, '2021-12-29 07:50:45.363584', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (41, 'pbkdf2_sha256$260000$BCsKFVURw6p6oqInz4JEnQ$S3uzoFv/LUmPYiQs9mx6PHN3a8+yNY9uYo8BYjwiVj0=', '2021-12-29 07:53:26.254024', 0, '9984008400', '', 'test1234@gmail.com', 0, 1, '2021-12-29 07:53:24.868431', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (42, 'pbkdf2_sha256$260000$8UzZbczQPBXjLXto81sbxW$No/8275c0Oxj8Wl/NzSbF1wxQOKuzJTMYu7cN85R71s=', '2021-12-29 07:56:04.955777', 0, '9984008401', '', 'test1234@gmail.com', 0, 1, '2021-12-29 07:56:03.748326', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (43, 'pbkdf2_sha256$260000$l91oKvqqJ8cj17R9oRKDzc$+vdTE84xG+00dxAFsj6DaJQ6uzFuK/9XYkAQN9yDGjY=', '2021-12-29 16:48:21.604917', 0, '9984800898', '', 'test1234@gmail.com', 0, 1, '2021-12-29 16:48:19.721718', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (44, 'pbkdf2_sha256$260000$2NafWClUAa2WWXykthl6fj$GZ03z3YG2Hsr4o7Lch18WN6MAqkgzEUXdQmvyGPaTnY=', NULL, 0, '9930099301', '', 'yogi123@mailinator.com', 0, 1, '2021-12-29 17:00:58.364252', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (45, 'pbkdf2_sha256$260000$JG9RkSQjtqJ2zfFODhxMTV$hn9Gi9hfdNEVGGJsmB39hDaSZCTwNSMtpH5ef/pXtRw=', '2022-01-12 13:57:29.243817', 0, '9198316507', '', 'test1234@gmail.com', 0, 1, '2022-01-12 13:31:14.851430', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (46, 'pbkdf2_sha256$260000$zFcrt1VNCTfEP78dRAJ6Um$eoBnNxfmOiA5qWZweCQGQt7UDOyUS4r1nr2dvFLZ5P8=', '2022-02-02 11:55:45.069216', 0, '9198316500', '', 'test1234@gmail.com', 0, 1, '2022-01-12 13:58:06.232815', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (47, 'pbkdf2_sha256$260000$PrezjBksLZGUTq4MfXvfaY$sviJnt2iyTkEgJABkLg2xVXrbcewsfeIlCenjlAcO9o=', '2022-01-19 08:23:01.086065', 0, '9984848400', '', 'test1234@gmail.com', 0, 1, '2022-01-19 07:28:25.903800', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (48, 'pbkdf2_sha256$260000$Erc8QEXlkWu4e6Wt5wFZt3$1eGP6whyrSx0Y6I6351yj90QLwjVQh0fCazCnpOqaJo=', '2022-01-28 10:36:32.329541', 0, '9198316509', '', '', 0, 1, '2022-01-28 10:36:30.270733', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (49, 'pbkdf2_sha256$260000$gtDhV1Ld8maiSVlu86Gjsk$12v3iX5hnUlyWuUjx0tdoBjTwy7tT+1uU1xJ1odhAgs=', '2022-02-09 12:24:58.053535', 0, '8233081931', '', '', 0, 1, '2022-02-02 11:21:04.599954', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (50, 'pbkdf2_sha256$260000$JJkX6wYAFXAWrPlEIEOJMs$qgb+VcrVwb69YnOaqVNBA7S2WQ/YcfpMHQw+U0beC78=', '2022-02-03 07:10:10.426605', 0, '918233081931', '', '', 0, 1, '2022-02-03 07:10:09.862481', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (51, 'pbkdf2_sha256$260000$zWaIPDb3xfwKEZDd1QzYUs$HusURV+Y7LxpOQJRgU2xHcVq/ur9+BL35GDyitbTCbY=', '2022-02-03 11:08:34.496693', 0, '9974188851', '', '', 0, 1, '2022-02-03 11:08:32.429192', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (52, 'pbkdf2_sha256$260000$lE2vqoMUKmcONmcLKF6Xc2$iHMkxmXdrk4NI/aTJrZ4XJhOqTzdNYbus4r2RcHC3AQ=', '2022-02-03 11:21:57.123573', 0, '9974188852', '', '', 0, 1, '2022-02-03 11:14:58.139791', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (53, 'pbkdf2_sha256$260000$x7CmWtkapOIoTssta2rvwv$i2kGPRFKH49AW1JI5UQy73gfqqVjA1OVn298cnNPBh8=', '2022-02-03 11:23:47.016876', 0, '9974188853', '', '', 0, 1, '2022-02-03 11:23:45.634422', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (54, 'pbkdf2_sha256$260000$NVIDqfOt42QvqDxBZrkwLb$TycszcOHwxs3nZ8ALL9ztIADmJpBAQ4pUfGN5jrp0oI=', '2022-02-03 11:25:22.335752', 0, '9974188854', '', '', 0, 1, '2022-02-03 11:25:20.933369', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (55, 'pbkdf2_sha256$260000$Rut5KKTcSYJzYcGw9Wjq2g$P5IPmndEPGdG8pdmL4NX8hKrtguQ4fwAwzJwT/W8nvk=', '2022-02-03 11:40:34.218306', 0, '9974188855', '', '', 0, 1, '2022-02-03 11:40:32.469943', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (56, 'pbkdf2_sha256$260000$KUAZx8v0JezbVLvouYSbTS$zLqL+372vIU1xsbLc5eh2iEG7LQSE0kPaHaPI56jY+E=', '2022-02-10 04:15:51.236351', 0, '8128929546', '', '', 0, 1, '2022-02-10 04:15:50.763988', '');

-- Table: auth_user_groups
DROP TABLE IF EXISTS auth_user_groups;

CREATE TABLE auth_user_groups (
    id       INTEGER NOT NULL
                     PRIMARY KEY AUTOINCREMENT,
    user_id  INTEGER NOT NULL
                     REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    group_id INTEGER NOT NULL
                     REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: auth_user_user_permissions
DROP TABLE IF EXISTS auth_user_user_permissions;

CREATE TABLE auth_user_user_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id       INTEGER NOT NULL
                          REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: authtoken_token
DROP TABLE IF EXISTS authtoken_token;

CREATE TABLE authtoken_token (
    [key]   VARCHAR (40) NOT NULL
                         PRIMARY KEY,
    created DATETIME     NOT NULL,
    user_id INTEGER      NOT NULL
                         UNIQUE
                         REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: django_admin_log
DROP TABLE IF EXISTS django_admin_log;

CREATE TABLE django_admin_log (
    id              INTEGER             NOT NULL
                                        PRIMARY KEY AUTOINCREMENT,
    action_time     DATETIME            NOT NULL,
    object_id       TEXT,
    object_repr     VARCHAR (200)       NOT NULL,
    change_message  TEXT                NOT NULL,
    content_type_id INTEGER
                                        REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    user_id         INTEGER             NOT NULL
                                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    action_flag     [SMALLINT UNSIGNED] NOT NULL
                                        CHECK ("action_flag" >= 0) 
);


-- Table: django_content_type
DROP TABLE IF EXISTS django_content_type;

CREATE TABLE django_content_type (
    id        INTEGER       NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    app_label VARCHAR (100) NOT NULL,
    model     VARCHAR (100) NOT NULL
);

INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'knox', 'authtoken');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'hospital', 'appmodels');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'hospital', 'appointments');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'hospital', 'blogs');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'hospital', 'categories');
INSERT INTO django_content_type (id, app_label, model) VALUES (12, 'hospital', 'contacts');
INSERT INTO django_content_type (id, app_label, model) VALUES (13, 'hospital', 'historylogs');
INSERT INTO django_content_type (id, app_label, model) VALUES (14, 'hospital', 'paymentgetways');
INSERT INTO django_content_type (id, app_label, model) VALUES (15, 'hospital', 'paymentmodes');
INSERT INTO django_content_type (id, app_label, model) VALUES (16, 'hospital', 'subcategories');
INSERT INTO django_content_type (id, app_label, model) VALUES (17, 'hospital', 'subscriptionhistory');
INSERT INTO django_content_type (id, app_label, model) VALUES (18, 'hospital', 'subscriptionplans');
INSERT INTO django_content_type (id, app_label, model) VALUES (19, 'hospital', 'translations');
INSERT INTO django_content_type (id, app_label, model) VALUES (20, 'hospital', 'treatmentcategories');
INSERT INTO django_content_type (id, app_label, model) VALUES (21, 'hospital', 'treatments');
INSERT INTO django_content_type (id, app_label, model) VALUES (22, 'hospital', 'userslogs');
INSERT INTO django_content_type (id, app_label, model) VALUES (23, 'hospital', 'banners');
INSERT INTO django_content_type (id, app_label, model) VALUES (24, 'apimaster', 'address');
INSERT INTO django_content_type (id, app_label, model) VALUES (25, 'apimaster', 'userprofiles');
INSERT INTO django_content_type (id, app_label, model) VALUES (26, 'apimaster', 'usersachievements');
INSERT INTO django_content_type (id, app_label, model) VALUES (27, 'apimaster', 'userseducations');
INSERT INTO django_content_type (id, app_label, model) VALUES (28, 'apimaster', 'usersissues');
INSERT INTO django_content_type (id, app_label, model) VALUES (29, 'apimaster', 'usersspecializations');
INSERT INTO django_content_type (id, app_label, model) VALUES (30, 'hospital', 'pages');
INSERT INTO django_content_type (id, app_label, model) VALUES (31, 'hospital', 'policies');
INSERT INTO django_content_type (id, app_label, model) VALUES (32, 'apimaster', 'usersclinics');
INSERT INTO django_content_type (id, app_label, model) VALUES (33, 'apimaster', 'usersregistrationcouncils');
INSERT INTO django_content_type (id, app_label, model) VALUES (34, 'apimaster', 'consultationfees');
INSERT INTO django_content_type (id, app_label, model) VALUES (35, 'apimaster', 'establishmentproofs');
INSERT INTO django_content_type (id, app_label, model) VALUES (36, 'apimaster', 'establishmenttimings');
INSERT INTO django_content_type (id, app_label, model) VALUES (37, 'apimaster', 'maplocations');
INSERT INTO django_content_type (id, app_label, model) VALUES (38, 'apimaster', 'medicalregistrationproofs');
INSERT INTO django_content_type (id, app_label, model) VALUES (39, 'apimaster', 'usersidentityproofs');
INSERT INTO django_content_type (id, app_label, model) VALUES (40, 'apimaster', 'modelfunctions');
INSERT INTO django_content_type (id, app_label, model) VALUES (41, 'apimaster', 'modelmenus');
INSERT INTO django_content_type (id, app_label, model) VALUES (42, 'apimaster', 'modelsubmenus');
INSERT INTO django_content_type (id, app_label, model) VALUES (43, 'apimaster', 'modelrights');
INSERT INTO django_content_type (id, app_label, model) VALUES (44, 'authtoken', 'token');
INSERT INTO django_content_type (id, app_label, model) VALUES (45, 'authtoken', 'tokenproxy');
INSERT INTO django_content_type (id, app_label, model) VALUES (46, 'verification', 'phonemodel');
INSERT INTO django_content_type (id, app_label, model) VALUES (47, 'apimaster', 'doctorverifications');
INSERT INTO django_content_type (id, app_label, model) VALUES (48, 'apimaster', 'modellanguages');
INSERT INTO django_content_type (id, app_label, model) VALUES (49, 'apimaster', 'usersworkexperiences');
INSERT INTO django_content_type (id, app_label, model) VALUES (50, 'hospital', 'doctorprescriptions');
INSERT INTO django_content_type (id, app_label, model) VALUES (51, 'apimaster', 'userreviews');
INSERT INTO django_content_type (id, app_label, model) VALUES (52, 'apimaster', 'feveratedoctors');
INSERT INTO django_content_type (id, app_label, model) VALUES (53, 'apimaster', 'familymemberprofiles');
INSERT INTO django_content_type (id, app_label, model) VALUES (54, 'apimaster', 'recommendeddoctors');
INSERT INTO django_content_type (id, app_label, model) VALUES (55, 'apimaster', 'usersclinicimages');
INSERT INTO django_content_type (id, app_label, model) VALUES (56, 'patientapi', 'v1_userotp');

-- Table: django_migrations
DROP TABLE IF EXISTS django_migrations;

CREATE TABLE django_migrations (
    id      INTEGER       NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    app     VARCHAR (255) NOT NULL,
    name    VARCHAR (255) NOT NULL,
    applied DATETIME      NOT NULL
);

INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2021-11-29 11:50:33.113479');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2021-11-29 11:50:33.342564');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2021-11-29 11:50:33.553255');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-11-29 11:50:33.660216');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-29 11:50:33.796007');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'apimaster', '0001_initial', '2021-11-29 11:50:33.953307');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'contenttypes', '0002_remove_content_type_name', '2021-11-29 11:50:34.135852');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2021-11-29 11:50:34.294833');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0003_alter_user_email_max_length', '2021-11-29 11:50:34.447825');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0004_alter_user_username_opts', '2021-11-29 11:50:34.649821');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0005_alter_user_last_login_null', '2021-11-29 11:50:34.788840');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0006_require_contenttypes_0002', '2021-11-29 11:50:34.909413');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2021-11-29 11:50:35.037087');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0008_alter_user_username_max_length', '2021-11-29 11:50:35.182368');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2021-11-29 11:50:35.321963');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0010_alter_group_name_max_length', '2021-11-29 11:50:35.459632');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'auth', '0011_update_proxy_permissions', '2021-11-29 11:50:35.591178');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2021-11-29 11:50:35.738040');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'hospital', '0001_initial', '2021-11-29 11:50:35.920064');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'hospital', '0002_auto_20211125_1643', '2021-11-29 11:50:36.102438');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'hospital', '0003_auto_20211126_1738', '2021-11-29 11:50:36.211883');
INSERT INTO django_migrations (id, app, name, applied) VALUES (22, 'knox', '0001_initial', '2021-11-29 11:50:36.416521');
INSERT INTO django_migrations (id, app, name, applied) VALUES (23, 'knox', '0002_auto_20150916_1425', '2021-11-29 11:50:36.649281');
INSERT INTO django_migrations (id, app, name, applied) VALUES (24, 'knox', '0003_auto_20150916_1526', '2021-11-29 11:50:36.862609');
INSERT INTO django_migrations (id, app, name, applied) VALUES (25, 'knox', '0004_authtoken_expires', '2021-11-29 11:50:37.026604');
INSERT INTO django_migrations (id, app, name, applied) VALUES (26, 'knox', '0005_authtoken_token_key', '2021-11-29 11:50:37.196416');
INSERT INTO django_migrations (id, app, name, applied) VALUES (27, 'knox', '0006_auto_20160818_0932', '2021-11-29 11:50:37.372519');
INSERT INTO django_migrations (id, app, name, applied) VALUES (28, 'knox', '0007_auto_20190111_0542', '2021-11-29 11:50:37.509641');
INSERT INTO django_migrations (id, app, name, applied) VALUES (29, 'sessions', '0001_initial', '2021-11-29 11:50:37.737056');
INSERT INTO django_migrations (id, app, name, applied) VALUES (30, 'apimaster', '0002_auto_20211129_1729', '2021-11-29 11:59:17.299462');
INSERT INTO django_migrations (id, app, name, applied) VALUES (31, 'hospital', '0004_alter_treatments_primary_image', '2021-11-29 11:59:17.570464');
INSERT INTO django_migrations (id, app, name, applied) VALUES (32, 'apimaster', '0003_auto_20211129_1747', '2021-11-29 12:17:31.024219');
INSERT INTO django_migrations (id, app, name, applied) VALUES (33, 'apimaster', '0004_auto_20211129_1749', '2021-11-29 12:19:15.138901');
INSERT INTO django_migrations (id, app, name, applied) VALUES (34, 'hospital', '0005_alter_appointments_patient_id', '2021-11-29 12:23:22.172994');
INSERT INTO django_migrations (id, app, name, applied) VALUES (35, 'hospital', '0006_auto_20211129_1757', '2021-11-29 12:27:53.980341');
INSERT INTO django_migrations (id, app, name, applied) VALUES (36, 'hospital', '0007_auto_20211130_1857', '2021-11-30 13:27:43.815465');
INSERT INTO django_migrations (id, app, name, applied) VALUES (37, 'hospital', '0008_rename_plan_id_subscriptionhistory_plan', '2021-11-30 13:39:14.912406');
INSERT INTO django_migrations (id, app, name, applied) VALUES (38, 'hospital', '0009_auto_20211202_1539', '2021-12-02 10:10:03.496805');
INSERT INTO django_migrations (id, app, name, applied) VALUES (39, 'hospital', '0010_policies', '2021-12-02 11:00:46.986953');
INSERT INTO django_migrations (id, app, name, applied) VALUES (40, 'apimaster', '0005_auto_20211203_1656', '2021-12-03 11:27:10.303437');
INSERT INTO django_migrations (id, app, name, applied) VALUES (41, 'apimaster', '0006_consultationfees_establishmentproofs_establishmenttimings_maplocations_medicalregistrationproofs_use', '2021-12-06 09:37:22.817228');
INSERT INTO django_migrations (id, app, name, applied) VALUES (42, 'apimaster', '0007_userprofiles_work_experience', '2021-12-06 09:45:56.094926');
INSERT INTO django_migrations (id, app, name, applied) VALUES (43, 'apimaster', '0008_auto_20211206_1621', '2021-12-06 10:51:19.286321');
INSERT INTO django_migrations (id, app, name, applied) VALUES (44, 'apimaster', '0009_rename_user_usersregistrationcouncils_user', '2021-12-06 11:10:51.860146');
INSERT INTO django_migrations (id, app, name, applied) VALUES (45, 'apimaster', '0010_usersregistrationcouncils_user_profile', '2021-12-07 07:15:23.947570');
INSERT INTO django_migrations (id, app, name, applied) VALUES (46, 'apimaster', '0011_rename_user_profile_usersregistrationcouncils_profile', '2021-12-07 07:19:09.773682');
INSERT INTO django_migrations (id, app, name, applied) VALUES (47, 'apimaster', '0012_auto_20211212_1240', '2021-12-12 07:12:35.640466');
INSERT INTO django_migrations (id, app, name, applied) VALUES (48, 'apimaster', '0013_auto_20211212_1404', '2021-12-12 08:34:41.228046');
INSERT INTO django_migrations (id, app, name, applied) VALUES (49, 'apimaster', '0014_alter_userprofiles_photo', '2021-12-13 10:14:41.295004');
INSERT INTO django_migrations (id, app, name, applied) VALUES (50, 'authtoken', '0001_initial', '2021-12-19 17:45:09.502677');
INSERT INTO django_migrations (id, app, name, applied) VALUES (51, 'authtoken', '0002_auto_20160226_1747', '2021-12-19 17:45:09.902894');
INSERT INTO django_migrations (id, app, name, applied) VALUES (52, 'authtoken', '0003_tokenproxy', '2021-12-19 17:45:10.016603');
INSERT INTO django_migrations (id, app, name, applied) VALUES (53, 'verification', '0001_initial', '2021-12-24 12:53:20.551334');
INSERT INTO django_migrations (id, app, name, applied) VALUES (54, 'apimaster', '0015_auto_20211229_1321', '2021-12-29 07:51:43.643360');
INSERT INTO django_migrations (id, app, name, applied) VALUES (55, 'verification', '0002_alter_phonemodel_id', '2021-12-29 07:51:43.829632');
INSERT INTO django_migrations (id, app, name, applied) VALUES (56, 'apimaster', '0016_alter_userprofiles_email', '2021-12-29 07:55:33.852954');
INSERT INTO django_migrations (id, app, name, applied) VALUES (57, 'apimaster', '0017_auto_20220103_1129', '2022-01-03 05:59:28.946782');
INSERT INTO django_migrations (id, app, name, applied) VALUES (58, 'hospital', '0011_alter_treatmentcategories_primary_image', '2022-01-03 05:59:29.112673');
INSERT INTO django_migrations (id, app, name, applied) VALUES (59, 'apimaster', '0018_userprofiles_verification_text', '2022-01-03 06:43:43.814423');
INSERT INTO django_migrations (id, app, name, applied) VALUES (60, 'apimaster', '0019_modellanguages', '2022-01-03 10:45:03.540368');
INSERT INTO django_migrations (id, app, name, applied) VALUES (61, 'apimaster', '0020_usersworkexperiences', '2022-01-04 11:55:29.619688');
INSERT INTO django_migrations (id, app, name, applied) VALUES (62, 'apimaster', '0021_alter_userprofiles_language', '2022-01-04 13:16:11.502217');
INSERT INTO django_migrations (id, app, name, applied) VALUES (63, 'apimaster', '0022_userprofiles_section_flag', '2022-01-05 11:05:28.908549');
INSERT INTO django_migrations (id, app, name, applied) VALUES (64, 'hospital', '0012_appointments_language', '2022-01-05 11:05:29.156837');
INSERT INTO django_migrations (id, app, name, applied) VALUES (65, 'apimaster', '0023_rename_section_flag_userprofiles_section_flag', '2022-01-05 11:06:58.464972');
INSERT INTO django_migrations (id, app, name, applied) VALUES (66, 'apimaster', '0024_alter_userprofiles_section_flag', '2022-01-05 11:13:39.341869');
INSERT INTO django_migrations (id, app, name, applied) VALUES (67, 'apimaster', '0025_alter_userprofiles_section_flag', '2022-01-05 11:29:02.384876');
INSERT INTO django_migrations (id, app, name, applied) VALUES (68, 'hospital', '0013_appointments_meeting_time_period', '2022-01-05 12:25:50.406181');
INSERT INTO django_migrations (id, app, name, applied) VALUES (69, 'apimaster', '0026_userprofiles_flag_count', '2022-01-17 09:32:09.745681');
INSERT INTO django_migrations (id, app, name, applied) VALUES (70, 'hospital', '0014_doctorprescriptions', '2022-01-17 09:32:10.107560');
INSERT INTO django_migrations (id, app, name, applied) VALUES (71, 'apimaster', '0027_alter_userprofiles_verification', '2022-01-18 08:07:11.501462');
INSERT INTO django_migrations (id, app, name, applied) VALUES (72, 'hospital', '0015_auto_20220124_1700', '2022-01-24 11:30:55.193801');
INSERT INTO django_migrations (id, app, name, applied) VALUES (73, 'apimaster', '0028_auto_20220201_1253', '2022-02-01 07:23:09.378285');
INSERT INTO django_migrations (id, app, name, applied) VALUES (74, 'apimaster', '0029_auto_20220201_1437', '2022-02-01 09:07:24.764763');
INSERT INTO django_migrations (id, app, name, applied) VALUES (75, 'apimaster', '0030_familymemberprofiles_feveratedoctors_recommendeddoctors', '2022-02-02 07:36:16.556962');
INSERT INTO django_migrations (id, app, name, applied) VALUES (76, 'apimaster', '0031_auto_20220203_1522', '2022-02-03 10:13:20.538628');
INSERT INTO django_migrations (id, app, name, applied) VALUES (77, 'apimaster', '0032_userprofiles_phone_code', '2022-02-03 10:28:37.975423');
INSERT INTO django_migrations (id, app, name, applied) VALUES (78, 'apimaster', '0033_usersclinicimages', '2022-02-04 06:59:52.301976');
INSERT INTO django_migrations (id, app, name, applied) VALUES (79, 'apimaster', '0034_auto_20220204_1300', '2022-02-04 07:31:57.977262');
INSERT INTO django_migrations (id, app, name, applied) VALUES (80, 'apimaster', '0035_establishmenttimings_clinic', '2022-02-04 07:35:33.119513');
INSERT INTO django_migrations (id, app, name, applied) VALUES (81, 'hospital', '0016_banners_type_id', '2022-02-07 06:51:41.833412');
INSERT INTO django_migrations (id, app, name, applied) VALUES (82, 'patientapi', '0001_initial', '2022-02-08 07:39:39.705499');

-- Table: django_session
DROP TABLE IF EXISTS django_session;

CREATE TABLE django_session (
    session_key  VARCHAR (40) NOT NULL
                              PRIMARY KEY,
    session_data TEXT         NOT NULL,
    expire_date  DATETIME     NOT NULL
);

INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('wckawiomxinuwxfuhz1i1f5gq9vqbdhj', 'e30:1msfgi:heKupec54nLns_nLyVBoV-_Z2xIetCgiY5JpNNFcAk8', '2021-12-16 06:35:24.015701');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('d768f9i9xel50jru5olbwmqex83mgyjq', '.eJxVjDsOwyAQRO9CHSHM8k2Z3mdAwK6DkwgkY1dR7h5bcpFUI817M28W4raWsHVawozsyiS7_HYp5ifVA-Aj1nvjudV1mRM_FH7SzseG9Lqd7t9Bib3sa-MdaBwy6AnI4p7JZImghfFJQ5aTFc6hBaIolDUgkRCczqiUVoNnny_UKjdT:1mt7Zx:ejhJ-Nyj4kLeJKUmp7E38EhErM3zLMsbGAReRJTORZE', '2021-12-17 12:22:17.600442');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('w8gj7lfh8nhgjyrkvyusyoxr4gtexsxj', 'e30:1muDKy:Gog04vjrBXTgcLOzsXV3sku9hEF4Iy3AiMHKXeVepoQ', '2021-12-20 12:43:20.255413');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('1llxxupe5xc0nakwrsvz38iec1yjb57v', 'e30:1muDOB:KmwQfAahIx4X2C-wxaifV3-qlWDqxPaWSnCpOxWdSN4', '2021-12-20 12:46:39.623381');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('5aj3cxw524ma0t9v8t49lf9qsmm5gu9t', 'e30:1muDQE:zaA-_Ha6uf6AXXJ7g7c4aimEl8Ady23hWFt249k1qOk', '2021-12-20 12:48:46.391940');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('1zmyzidktr7yjzvdnf90gnjwvvc7xazo', 'e30:1muDW5:12brCgVdwDeRD8eWirqXu1d4pmf01FO_5kJkMncMdbo', '2021-12-20 12:54:49.562821');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('zd3wbikzjlyyqrsyob6ojr13q132pdwm', 'e30:1muDbp:-_3hbcXzB4Y8f7_aL3oQ4aKlXxs3OtouUpYi9XLUXg8', '2021-12-20 13:00:45.715527');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ujy259oyk6t912gsbdkvozrni9mjogdq', 'e30:1mutIL:6zXwe5U3A1nwVohKhTvQ45j1SezMm3q68oiQeedtAWE', '2021-12-22 09:31:25.299274');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('cfw2wlbq2c0us865jlm2qw2zbavwtbmh', '.eJxVjDsOwyAQRO9CHSHM8k2Z3mdAwK6DkwgkY1dR7h5bcpFUI817M28W4raWsHVawozsyiS7_HYp5ifVA-Aj1nvjudV1mRM_FH7SzseG9Lqd7t9Bib3sa-MdaBwy6AnI4p7JZImghfFJQ5aTFc6hBaIolDUgkRCczqiUVoNnny_UKjdT:1mvwWl:CyhIBafmw-1BXVWIOcdcpVv8P3BmWzukf9nZ9Ww1op0', '2021-12-25 07:10:39.019406');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('sf7nf7h5pyrwqqkjrnlpwawpts1nti6a', '.eJxVjDsOwyAQRO9CHSHM8k2Z3mdAwK6DkwgkY1dR7h5bcpFUI817M28W4raWsHVawozsyiS7_HYp5ifVA-Aj1nvjudV1mRM_FH7SzseG9Lqd7t9Bib3sa-MdaBwy6AnI4p7JZImghfFJQ5aTFc6hBaIolDUgkRCczqiUVoNnny_UKjdT:1mvwPD:VpUk9QR1AF8rfPIchSTrWt0I-TM5OdcxYMYhNqL7w5o', '2021-12-25 07:02:51.066598');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('edplhes8h77awfohsfe4s0aebezeyjnw', '.eJxVjDsOwyAQRO9CHSHM8k2Z3mdAwK6DkwgkY1dR7h5bcpFUI817M28W4raWsHVawozsyiS7_HYp5ifVA-Aj1nvjudV1mRM_FH7SzseG9Lqd7t9Bib3sa-MdaBwy6AnI4p7JZImghfFJQ5aTFc6hBaIolDUgkRCczqiUVoNnny_UKjdT:1n1nbM:nM9R3VEyczb1G1EEq13fk7ZvCAZcwS8TSgmxaqIGS1s', '2022-01-10 10:51:36.761841');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('3r17tvl0tp740e8p1pna13vzkaxerlw4', 'e30:1n2Tm1:PrwUaNgGsfqK4SeEUVI_lLYXz83U8jCtKS_nCxMJ624', '2022-01-12 07:53:25.971295');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('qwaooh9xx8wliuetqjxmox4f08zg7sx9', '.eJxVjDsOwjAQBe_iGlmbxF9Kes5geb1rHEC2FCcV4u4QKQW0b2beS4S4rSVsnZcwkzgLZcTpd8SYHlx3QvdYb02mVtdlRrkr8qBdXhvx83K4fwcl9vKtI6PKo9XGaAcmGdAAqLO15NzAiGryowIyPtHAjhGIs-PEyWv2E6B4fwAEXzh5:1n91IU:lr0yspV8e6VxJcGq53TtXtbCTBBT9Dj-HGGaZsQDpPQ', '2022-01-30 08:53:58.903542');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('bqk64wz7rdm7xxberthbuwgpsdprnvd9', '.eJxVjDsOwyAQRO9CHSHM8k2Z3mdAwK6DkwgkY1dR7h5bcpFUI817M28W4raWsHVawozsyiS7_HYp5ifVA-Aj1nvjudV1mRM_FH7SzseG9Lqd7t9Bib3sa-MdaBwy6AnI4p7JZImghfFJQ5aTFc6hBaIolDUgkRCczqiUVoNnny_UKjdT:1n7wv4:_GV5t3bLzLmzqA8YkcKDzg9Ixw1jryVSEUXNEsDUXwM', '2022-01-27 10:01:22.766468');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('8pz32k4zcbw875dqvc7k99e8uewxyvzg', '.eJxVjDsOwyAQRO9CHSHM8k2Z3mdAwK6DkwgkY1dR7h5bcpFUI817M28W4raWsHVawozsyiS7_HYp5ifVA-Aj1nvjudV1mRM_FH7SzseG9Lqd7t9Bib3sa-MdaBwy6AnI4p7JZImghfFJQ5aTFc6hBaIolDUgkRCczqiUVoNnny_UKjdT:1nA3RG:xRiMfl_hSCxge_-EU5iBL890XjrNgGIVCqpPATg4y6U', '2022-02-02 05:23:18.600102');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('6qmfc2quzakot9iu6bzmoli95bwi821d', '.eJxVjMsOwiAUBf-FtSECpXBduu83EO6jUjUlKe3K-O_apAvdnpk5L5Xytpa0NVnSxOqiuqBOvyNmesi8E77n-VY11XldJtS7og_a9FBZntfD_TsouZVvbVnQsXeRqAOPQL0NMFqLgFGkRwlgxCFawRzC2cDoIwN6Q16oi6zeHyeeOOY:1nA6FC:HdZeEVopG7KERG6ybNd5EnF-YBIEuzsACR8onPyFhrw', '2022-02-02 08:23:02.087770');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('bat5076tvv3sfnvo7szgc5gmc7y1mj32', '.eJxVjEEOwiAQRe_C2pApZSh16b5nIAMzStVAUtqV8e7apAvd_vfef6lA25rD1mQJM6uzMur0u0VKDyk74DuVW9WplnWZo94VfdCmp8ryvBzu30Gmlr81DP2AxiA49BYpoUVDnDpIQD2wi9ynDn3Eq_WCIh6NHx15iQBuRKveH7M7Ntw:1nFD4l:9JWggKKjfKh_3D9ajmhnGYoje9nxA4WxkQz2uyLADtM', '2022-02-16 10:41:23.091486');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('2vvtur80blauqc3peovypnhhil6pwwds', '.eJxVjEEOwiAQRe_C2hAYKKUu3XsGwsyAVA0kpV0Z765NutDtf-_9lwhxW0vYelrCzOIs7CROvyNGeqS6E77HemuSWl2XGeWuyIN2eW2cnpfD_TsosZdvjTmrjBbJa03RgAPEMZPhTMlM2lkEdGxZIWTl1Dg4MskZ8DAQe6_F-wM6jziK:1nFDhB:KnT6gkdbiopfDBf8TnX89s6V_qiCuRCFEop1vqJWcS8', '2022-02-16 11:21:05.939809');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('2trdm1soupvvqf0n9kuwjp6kslqec7yi', '.eJxVjEEOwiAQRe_C2hAYKKUu3XsGwsyAVA0kpV0Z765NutDtf-_9lwhxW0vYelrCzOIs7CROvyNGeqS6E77HemuSWl2XGeWuyIN2eW2cnpfD_TsosZdvjTmrjBbJa03RgAPEMZPhTMlM2lkEdGxZIWTl1Dg4MskZ8DAQe6_F-wM6jziK:1nFDiy:mLL_VmL1QnG7C2ZE229fwtwSMWxaJV6Kkh4CMmylsPA', '2022-02-16 11:22:56.886735');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('1h873fbqce2ktwoc0206ky1jfg03scqf', '.eJxVjEEOwiAQRe_C2hAYKKUu3XsGwsyAVA0kpV0Z765NutDtf-_9lwhxW0vYelrCzOIs7CROvyNGeqS6E77HemuSWl2XGeWuyIN2eW2cnpfD_TsosZdvjTmrjBbJa03RgAPEMZPhTMlM2lkEdGxZIWTl1Dg4MskZ8DAQe6_F-wM6jziK:1nFWHP:pRNXyHMSk7RUDXavmqM1NOWORBjh6qFjPFldFQYwzL4', '2022-02-17 07:11:43.563604');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('gbwjxyc23vhrpz8ceowychcpjxat3ns3', '.eJxVjDEOAiEQRe9CbQgQBtHS3jOQYWaQVQPJslsZ766bbKHtf-_9l0q4LjWtQ-Y0sTorAHX4HTPSQ9pG-I7t1jX1tsxT1puidzr0tbM8L7v7d1Bx1G8duMQCzrJh8DYUjPmEhQ0ISYhHS-BJDCEFdAEQJZoSGUv2LoYMWb0_MVc5Vw:1nFaTc:JQx2edcaW7lpwJsGyaWv2pN3NPWhqSFwMt7eBIJCf-0', '2022-02-17 11:40:36.131988');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('pyljnl8xuf98urunp7m2tc2ehqw6z1rd', '.eJxVjDsOwyAQRO9CHSHM8k2Z3mdAwK6DkwgkY1dR7h5bcpFUI817M28W4raWsHVawozsyiS7_HYp5ifVA-Aj1nvjudV1mRM_FH7SzseG9Lqd7t9Bib3sa-MdaBwy6AnI4p7JZImghfFJQ5aTFc6hBaIolDUgkRCczqiUVoNnny_UKjdT:1nH29h:BbxT2SHeFZ2pACAgpekBB1lIae-TjWSf7Af3U3wo1GA', '2022-02-21 11:26:01.041087');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('9tm6i3yx9ieuwwo7aobcmfitv8b14n1p', '.eJxVjEEOwiAQRe_C2hAYKKUu3XsGwsyAVA0kpV0Z765NutDtf-_9lwhxW0vYelrCzOIs7CROvyNGeqS6E77HemuSWl2XGeWuyIN2eW2cnpfD_TsosZdvjTmrjBbJa03RgAPEMZPhTMlM2lkEdGxZIWTl1Dg4MskZ8DAQe6_F-wM6jziK:1nHm1q:9cEj7ishIUuIPjFaEX8IujbIXsB6yXDZbyJQ3bgK50s', '2022-02-23 12:24:58.583628');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('gr62wq817xp92bannqq3ygohyhdw3yn4', '.eJxVjEEOwiAQRe_C2hBgChSX7j0DGWamUjVtUtqV8e7apAvd_vfef6mM21rz1mTJI6uz8kGdfseC9JBpJ3zH6TZrmqd1GYveFX3Qpq8zy_NyuH8HFVv91oMXtgWQIjB1kAxa4WJiCUA9OXTROfAOrI3Gp05sQBZKvR-IrQFW7w8YOjgf:1nI0s4:93ZFciObwNKP9SDzy_B9BIQ1C628W8Awx3vnFOVoEX8', '2022-02-24 04:15:52.195873');

-- Table: hospital_appmodels
DROP TABLE IF EXISTS hospital_appmodels;

CREATE TABLE hospital_appmodels (
    id            INTEGER       NOT NULL
                                PRIMARY KEY AUTOINCREMENT,
    name          VARCHAR (50),
    description   TEXT,
    slug          VARCHAR (100),
    primary_image VARCHAR (150),
    sort_id       INTEGER,
    status        BOOL          NOT NULL,
    is_deleted    BOOL          NOT NULL,
    created_by    INTEGER,
    deleted_by    INTEGER,
    created_at    DATETIME      NOT NULL,
    updated_at    DATETIME,
    deleted_at    DATETIME,
    updated_by    INTEGER
);


-- Table: hospital_appointments
DROP TABLE IF EXISTS hospital_appointments;

CREATE TABLE hospital_appointments (
    id                    INTEGER       NOT NULL
                                        PRIMARY KEY AUTOINCREMENT,
    patient_id            INTEGER,
    name                  VARCHAR (100) NOT NULL,
    title                 VARCHAR (120),
    description           TEXT,
    dob                   DATE,
    occupation            VARCHAR (20)  NOT NULL,
    sex                   VARCHAR (20)  NOT NULL,
    email                 VARCHAR (254),
    mobile                VARCHAR (20),
    mobile1               VARCHAR (20),
    blood_group           VARCHAR (50),
    locality              VARCHAR (100),
    address               VARCHAR (100),
    address2              VARCHAR (100),
    city                  VARCHAR (100),
    state                 VARCHAR (100),
    country               VARCHAR (100),
    pincode               INTEGER,
    doctor_id             INTEGER,
    appointment_id        VARCHAR (100),
    doctor_appointment_at DATETIME,
    translation_id        VARCHAR (100),
    amount                DECIMAL       NOT NULL,
    payment_status        VARCHAR (50)  NOT NULL,
    payment_type          VARCHAR (20)  NOT NULL,
    illness_information   VARCHAR (100),
    status                BOOL          NOT NULL,
    is_deleted            BOOL          NOT NULL,
    created_by            INTEGER,
    updated_by            INTEGER,
    deleted_by            INTEGER,
    created_at            DATETIME      NOT NULL,
    updated_at            DATETIME,
    deleted_at            DATETIME,
    language              VARCHAR (250),
    meeting_time_period   VARCHAR (100) 
);

INSERT INTO hospital_appointments (id, patient_id, name, title, description, dob, occupation, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, doctor_id, appointment_id, doctor_appointment_at, translation_id, amount, payment_status, payment_type, illness_information, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, language, meeting_time_period) VALUES (1, 1, 'Ram Sagar', 'General user as patient', 'demo data', NULL, 'patient', 'male', NULL, '8468485468', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 3, NULL, '2022-01-10 08:00:00.368952', NULL, 250, 'Payment-Not-Completed', 'cod', '', 0, 0, NULL, NULL, NULL, '2021-11-29 12:34:22.756034', NULL, NULL, NULL, NULL);
INSERT INTO hospital_appointments (id, patient_id, name, title, description, dob, occupation, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, doctor_id, appointment_id, doctor_appointment_at, translation_id, amount, payment_status, payment_type, illness_information, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, language, meeting_time_period) VALUES (2, 1, 'Yogesh', 'General user as patient', NULL, NULL, 'patient', 'male', NULL, '9186522658', NULL, NULL, NULL, 'sec 15', NULL, 'Noida', NULL, NULL, NULL, 56, NULL, '2022-01-10 08:00:00.368952', NULL, 500, 'Payment-Not-Completed', 'cod', 'fever', 0, 0, NULL, NULL, NULL, '2022-01-05 08:17:43.223928', NULL, NULL, NULL, NULL);
INSERT INTO hospital_appointments (id, patient_id, name, title, description, dob, occupation, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, doctor_id, appointment_id, doctor_appointment_at, translation_id, amount, payment_status, payment_type, illness_information, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, language, meeting_time_period) VALUES (3, 2, 'Yogesh', 'General user as patient', NULL, NULL, 'patient', 'male', NULL, '9186522658', NULL, NULL, NULL, 'sec 15', NULL, 'Noida', NULL, NULL, NULL, 56, NULL, '2022-01-10 08:00:00.368952', NULL, 500, 'Payment-Not-Completed', 'cod', 'fever', 0, 0, NULL, NULL, NULL, '2022-01-05 08:20:08.507357', NULL, NULL, NULL, NULL);
INSERT INTO hospital_appointments (id, patient_id, name, title, description, dob, occupation, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, doctor_id, appointment_id, doctor_appointment_at, translation_id, amount, payment_status, payment_type, illness_information, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, language, meeting_time_period) VALUES (4, 1, 'Ayush', 'General user as patient', NULL, NULL, 'patient', 'male', NULL, '9186522658', NULL, NULL, NULL, 'sec 15', NULL, 'Noida', NULL, NULL, NULL, 56, NULL, '2022-01-10 08:00:00.368952', NULL, 500, 'Payment-Not-Completed', 'cod', 'fever', 0, 0, NULL, NULL, NULL, '2022-01-05 12:37:33.259467', NULL, NULL, NULL, '15 Min');
INSERT INTO hospital_appointments (id, patient_id, name, title, description, dob, occupation, sex, email, mobile, mobile1, blood_group, locality, address, address2, city, state, country, pincode, doctor_id, appointment_id, doctor_appointment_at, translation_id, amount, payment_status, payment_type, illness_information, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, language, meeting_time_period) VALUES (5, 1, 'Ayush', 'General user as patient', NULL, NULL, 'patient', 'male', NULL, '9186522658', NULL, NULL, NULL, 'sec 15', NULL, 'Noida', NULL, NULL, NULL, 3, NULL, '2022-01-10 08:00:00.368952', NULL, 1000, 'Payment-Not-Completed', 'cod', 'fever', 0, 0, NULL, NULL, NULL, '2022-01-17 07:37:24.676711', NULL, NULL, NULL, '15 Min');

-- Table: hospital_banners
DROP TABLE IF EXISTS hospital_banners;

CREATE TABLE hospital_banners (
    id               INTEGER       NOT NULL
                                   PRIMARY KEY AUTOINCREMENT,
    title            VARCHAR (200),
    description      TEXT,
    long_description TEXT,
    slug             VARCHAR (150),
    primary_image    VARCHAR (100),
    sort_id          INTEGER,
    status           BOOL          NOT NULL,
    is_deleted       BOOL          NOT NULL,
    created_by       INTEGER,
    updated_by       INTEGER,
    deleted_by       INTEGER,
    created_at       DATETIME      NOT NULL,
    updated_at       DATETIME,
    deleted_at       DATETIME,
    type_id          INTEGER
);

INSERT INTO hospital_banners (id, title, description, long_description, slug, primary_image, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, type_id) VALUES (1, 'home banner 1', '<p>home banner text</p>', NULL, NULL, 'banners/Womens-healthcare-digital.jpg', NULL, 0, 0, NULL, NULL, NULL, '2021-12-02 10:00:19.326786', NULL, NULL, NULL);

-- Table: hospital_blogs
DROP TABLE IF EXISTS hospital_blogs;

CREATE TABLE hospital_blogs (
    id               INTEGER       NOT NULL
                                   PRIMARY KEY AUTOINCREMENT,
    title            VARCHAR (200),
    description      TEXT,
    long_description TEXT,
    slug             VARCHAR (150),
    sort_id          INTEGER,
    status           BOOL          NOT NULL,
    is_deleted       BOOL          NOT NULL,
    created_by       INTEGER,
    updated_by       INTEGER,
    deleted_by       INTEGER,
    created_at       DATETIME      NOT NULL,
    updated_at       DATETIME,
    deleted_at       DATETIME,
    primary_image    VARCHAR (100) 
);

INSERT INTO hospital_blogs (id, title, description, long_description, slug, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, primary_image) VALUES (1, 'Hospital Management Software ', '<p style="text-align: left;"><span style="color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;"><strong>HOSPITAL MANAGEMENT SYSTEM</strong></span></p>
<p style="text-align: left;"><span style="color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;">The purpose of the project entitled as &ldquo;HOSPITAL MANAGEMENT SYSTEM&rdquo; is&nbsp;</span><strong style="color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;">to computerize the Front Office Management of Hospital to develop software</strong><span style="color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;">&nbsp;which is user friendly, simple, fast, and cost &ndash; effective. It deals with the collection of patient''s information, diagnosis details, etc.</span></p>', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-12-01 10:04:01.324507', NULL, NULL, 'blogs/hms.jpg');

-- Table: hospital_categories
DROP TABLE IF EXISTS hospital_categories;

CREATE TABLE hospital_categories (
    id            INTEGER       NOT NULL
                                PRIMARY KEY AUTOINCREMENT,
    name          VARCHAR (50),
    description   TEXT,
    slug          VARCHAR (100),
    primary_image VARCHAR (150),
    sort_id       INTEGER,
    status        BOOL          NOT NULL,
    is_deleted    BOOL          NOT NULL,
    created_by    INTEGER,
    deleted_by    INTEGER,
    created_at    DATETIME      NOT NULL,
    updated_at    DATETIME,
    deleted_at    DATETIME,
    updated_by    INTEGER
);


-- Table: hospital_contacts
DROP TABLE IF EXISTS hospital_contacts;

CREATE TABLE hospital_contacts (
    id         INTEGER       NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    name       VARCHAR (100) NOT NULL,
    subject    VARCHAR (150),
    message    TEXT,
    email      VARCHAR (150),
    mobile     VARCHAR (128) NOT NULL,
    status     BOOL          NOT NULL,
    is_deleted BOOL          NOT NULL,
    created_by INTEGER,
    deleted_by INTEGER,
    created_at DATETIME      NOT NULL,
    updated_at DATETIME,
    deleted_at DATETIME,
    updated_by INTEGER
);


-- Table: hospital_doctorprescriptions
DROP TABLE IF EXISTS hospital_doctorprescriptions;

CREATE TABLE hospital_doctorprescriptions (
    id                INTEGER       NOT NULL
                                    PRIMARY KEY AUTOINCREMENT,
    name              VARCHAR (150),
    message           TEXT,
    prescription_file VARCHAR (100),
    status            BOOL          NOT NULL,
    is_deleted        BOOL          NOT NULL,
    created_by        INTEGER,
    updated_by        INTEGER,
    deleted_by        INTEGER,
    created_at        DATETIME      NOT NULL,
    updated_at        DATETIME,
    deleted_at        DATETIME,
    appointment_id    BIGINT
                                    REFERENCES hospital_appointments (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: hospital_historylogs
DROP TABLE IF EXISTS hospital_historylogs;

CREATE TABLE hospital_historylogs (
    id            INTEGER       NOT NULL
                                PRIMARY KEY AUTOINCREMENT,
    name          VARCHAR (50),
    model_name    VARCHAR (50),
    email         VARCHAR (150),
    mobile        VARCHAR (128),
    city          VARCHAR (50),
    country       VARCHAR (50),
    address       TEXT,
    about         TEXT,
    slug          VARCHAR (100),
    primary_image VARCHAR (150),
    ip_address    VARCHAR (50),
    device        VARCHAR (50),
    os            VARCHAR (50),
    browser       VARCHAR (50),
    sort_id       INTEGER,
    status        BOOL          NOT NULL,
    is_deleted    BOOL          NOT NULL,
    created_by    INTEGER,
    created_at    DATETIME      NOT NULL,
    user_name     VARCHAR (50) 
);


-- Table: hospital_pages
DROP TABLE IF EXISTS hospital_pages;

CREATE TABLE hospital_pages (
    id               INTEGER       NOT NULL
                                   PRIMARY KEY AUTOINCREMENT,
    name             VARCHAR (50),
    title            VARCHAR (200),
    description      TEXT,
    long_description TEXT,
    slug             VARCHAR (150),
    primary_image    VARCHAR (100),
    sort_id          INTEGER,
    status           BOOL          NOT NULL,
    is_deleted       BOOL          NOT NULL,
    created_by       INTEGER,
    updated_by       INTEGER,
    deleted_by       INTEGER,
    created_at       DATETIME      NOT NULL,
    updated_at       DATETIME,
    deleted_at       DATETIME
);

INSERT INTO hospital_pages (id, name, title, description, long_description, slug, primary_image, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (1, 'About US', 'Medical Care', '<p><span style="color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;"><strong>Our </strong>hospitals are important to </span><strong style="color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;">treat minor and serious diseases, illnesses and disorders of the body function</strong><span style="color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;">&nbsp;of varying types and severity. Hospitals also help promote health, give information on prevention of illnesses and as well offer curative services.</span></p>', '<p><span style="color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;">Hospital-based services&nbsp;</span><strong style="color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;">Managed care Medical and other services provided</strong><span style="color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;">, to a nonadmitted Pt, by a hospital or other qualified facility&ndash;eg, mental health clinic, rural health clinic, mobile X-ray unit, free-standing dialysis unit Examples Physical therapy, diagnostic X-ray, lab tests. See Ambulatory services.</span></p>', NULL, 'page_images/about-us.jpg', NULL, 0, 0, NULL, NULL, NULL, '2021-12-02 10:36:47.861085', NULL, NULL);

-- Table: hospital_paymentgetways
DROP TABLE IF EXISTS hospital_paymentgetways;

CREATE TABLE hospital_paymentgetways (
    id            INTEGER       NOT NULL
                                PRIMARY KEY AUTOINCREMENT,
    name          VARCHAR (50),
    description   TEXT,
    slug          VARCHAR (100),
    primary_image VARCHAR (150),
    sort_id       INTEGER,
    status        BOOL          NOT NULL,
    is_deleted    BOOL          NOT NULL,
    created_by    INTEGER,
    deleted_by    INTEGER,
    created_at    DATETIME      NOT NULL,
    updated_at    DATETIME,
    deleted_at    DATETIME,
    updated_by    INTEGER
);


-- Table: hospital_paymentmodes
DROP TABLE IF EXISTS hospital_paymentmodes;

CREATE TABLE hospital_paymentmodes (
    id            INTEGER       NOT NULL
                                PRIMARY KEY AUTOINCREMENT,
    name          VARCHAR (50),
    description   TEXT,
    slug          VARCHAR (100),
    primary_image VARCHAR (150),
    sort_id       INTEGER,
    status        BOOL          NOT NULL,
    is_deleted    BOOL          NOT NULL,
    created_by    INTEGER,
    deleted_by    INTEGER,
    created_at    DATETIME      NOT NULL,
    updated_at    DATETIME,
    deleted_at    DATETIME,
    updated_by    INTEGER
);


-- Table: hospital_policies
DROP TABLE IF EXISTS hospital_policies;

CREATE TABLE hospital_policies (
    id               INTEGER       NOT NULL
                                   PRIMARY KEY AUTOINCREMENT,
    name             VARCHAR (50),
    title            VARCHAR (200),
    description      TEXT,
    long_description TEXT,
    slug             VARCHAR (150),
    primary_image    VARCHAR (100),
    policy_file      VARCHAR (100),
    sort_id          INTEGER,
    status           BOOL          NOT NULL,
    is_deleted       BOOL          NOT NULL,
    created_by       INTEGER,
    updated_by       INTEGER,
    deleted_by       INTEGER,
    created_at       DATETIME      NOT NULL,
    updated_at       DATETIME,
    deleted_at       DATETIME
);

INSERT INTO hospital_policies (id, name, title, description, long_description, slug, primary_image, policy_file, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at) VALUES (1, 'Privacy Policy', 'privacy policy full details', '<p><span style="color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;">privacy policy is&nbsp;</span><strong style="color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;">a statement or legal document (in privacy law)</strong><span style="color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;">&nbsp;that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client''s data. ... Their privacy laws apply not only to government operations but also to private enterprises and commercial transactions.</span></p>', '<p style="box-sizing: border-box; margin: 1em 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">Not everyone knows how to make&nbsp;<span style="box-sizing: border-box; font-weight: bold;">a Privacy Policy agreement</span>, especially with&nbsp;<span style="box-sizing: border-box; font-weight: bold;">CCPA</span>&nbsp;or&nbsp;<span style="box-sizing: border-box; font-weight: bold;">GDPR</span>&nbsp;or&nbsp;<span style="box-sizing: border-box; font-weight: bold;">CalOPPA</span>&nbsp;or&nbsp;<span style="box-sizing: border-box; font-weight: bold;">PIPEDA</span>&nbsp;or&nbsp;<span style="box-sizing: border-box; font-weight: bold;">Australia''s Privacy Act</span>&nbsp;provisions. If you are not a lawyer or someone who is familiar to Privacy Policies, you will be clueless. Some people might even take advantage of you because of this. Some people may even extort money from you. These are some examples that we want to stop from happening to you.</p>
<p style="box-sizing: border-box; margin: 1em 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">We will help you protect yourself by generating a Privacy Policy.</p>
<p style="box-sizing: border-box; margin: 1em 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">Our Privacy Policy Generator can help you make sure that your business complies with the law.</span>&nbsp;We are here to help you protect your business, yourself and your customers.</p>
<p style="box-sizing: border-box; margin: 1em 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;">Fill in the blank spaces below and we will create a personalized website Privacy Policy for your business. No account registration required.&nbsp;<span style="box-sizing: border-box; font-weight: bold;">Simply generate &amp; download a Privacy Policy in seconds!</span></p>
<p style="box-sizing: border-box; margin: 1em 0px; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;"><em style="box-sizing: border-box;">Small remark when filling in this Privacy Policy generator: Not all parts of this Privacy Policy might be applicable to your website. When there are parts that are not applicable, these can be removed. Optional elements can be selected in step 2. The accuracy of the generated Privacy Policy on this website is not legally binding. Use at your own risk.</em></p>', NULL, 'page_images/privacy-policy.jpg', '', NULL, 0, 0, NULL, NULL, NULL, '2021-12-02 11:13:12.009808', NULL, NULL);

-- Table: hospital_subcategories
DROP TABLE IF EXISTS hospital_subcategories;

CREATE TABLE hospital_subcategories (
    id            INTEGER       NOT NULL
                                PRIMARY KEY AUTOINCREMENT,
    name          VARCHAR (50),
    description   TEXT,
    slug          VARCHAR (100),
    primary_image VARCHAR (150),
    Category_id   INTEGER,
    sort_id       INTEGER,
    status        BOOL          NOT NULL,
    is_deleted    BOOL          NOT NULL,
    created_by    INTEGER,
    deleted_by    INTEGER,
    created_at    DATETIME      NOT NULL,
    updated_at    DATETIME,
    deleted_at    DATETIME,
    updated_by    INTEGER
);


-- Table: hospital_subscriptionhistory
DROP TABLE IF EXISTS hospital_subscriptionhistory;

CREATE TABLE hospital_subscriptionhistory (
    id                     INTEGER      NOT NULL
                                        PRIMARY KEY AUTOINCREMENT,
    joiner_id              INTEGER,
    doctor_id              INTEGER,
    remarks                TEXT,
    total_appointments     INTEGER,
    completed_appointments INTEGER,
    expiry_in_months       INTEGER,
    join_at                DATETIME,
    break_at               DATETIME,
    expiry_at              DATETIME,
    plan_amount            DECIMAL      NOT NULL,
    plan_discount          INTEGER,
    paid_amount            DECIMAL      NOT NULL,
    payment_status         VARCHAR (50),
    sort_id                INTEGER,
    status                 BOOL         NOT NULL,
    is_deleted             BOOL         NOT NULL,
    created_by             INTEGER,
    updated_by             INTEGER,
    deleted_by             INTEGER,
    created_at             DATETIME     NOT NULL,
    updated_at             DATETIME,
    deleted_at             DATETIME,
    plan_id                BIGINT       NOT NULL
                                        REFERENCES hospital_subscriptionplans (id) DEFERRABLE INITIALLY DEFERRED,
    order_id               VARCHAR (50) 
);

INSERT INTO hospital_subscriptionhistory (id, joiner_id, doctor_id, remarks, total_appointments, completed_appointments, expiry_in_months, join_at, break_at, expiry_at, plan_amount, plan_discount, paid_amount, payment_status, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, plan_id, order_id) VALUES (1, 2, 1, '1', 8, NULL, NULL, NULL, NULL, NULL, 2500, 50, 300, NULL, NULL, 1, 0, NULL, NULL, NULL, '2021-11-26 00:00:00', NULL, NULL, 1, 'ORD001');

-- Table: hospital_subscriptionplans
DROP TABLE IF EXISTS hospital_subscriptionplans;

CREATE TABLE hospital_subscriptionplans (
    id                  INTEGER       NOT NULL
                                      PRIMARY KEY AUTOINCREMENT,
    plan_key            VARCHAR (50),
    name                VARCHAR (100),
    title               VARCHAR (150),
    description         TEXT,
    amount              DECIMAL       NOT NULL,
    start_at            DATETIME,
    stop_at             DATETIME,
    expiry_in_months    INTEGER,
    discount            INTEGER,
    day_appointments    INTEGER,
    weekly_appointments INTEGER,
    total_appointments  INTEGER,
    slug                VARCHAR (100),
    doctor_id           INTEGER,
    sort_id             INTEGER,
    status              BOOL          NOT NULL,
    is_deleted          BOOL          NOT NULL,
    created_by          INTEGER,
    updated_by          INTEGER,
    deleted_by          INTEGER,
    created_at          DATETIME      NOT NULL,
    updated_at          DATETIME,
    deleted_at          DATETIME,
    primary_image       VARCHAR (100) 
);

INSERT INTO hospital_subscriptionplans (id, plan_key, name, title, description, amount, start_at, stop_at, expiry_in_months, discount, day_appointments, weekly_appointments, total_appointments, slug, doctor_id, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, primary_image) VALUES (1, NULL, '1 Month Plan', NULL, '<p>new starting plan for patients</p>', 799, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '2021-11-29 13:33:23.166172', NULL, NULL, 'treatments/planBasic_BG7YPMh.png');
INSERT INTO hospital_subscriptionplans (id, plan_key, name, title, description, amount, start_at, stop_at, expiry_in_months, discount, day_appointments, weekly_appointments, total_appointments, slug, doctor_id, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, primary_image) VALUES (2, NULL, '3 Months Plan', NULL, '3 Months Plan', 1499, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '2021-12-27 11:35:06.450866', NULL, NULL, '');
INSERT INTO hospital_subscriptionplans (id, plan_key, name, title, description, amount, start_at, stop_at, expiry_in_months, discount, day_appointments, weekly_appointments, total_appointments, slug, doctor_id, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, primary_image) VALUES (3, NULL, '6 Months Plan', NULL, 'This Plan fro 3 Months.', 2599, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '2021-12-27 11:37:20.828499', NULL, NULL, '');
INSERT INTO hospital_subscriptionplans (id, plan_key, name, title, description, amount, start_at, stop_at, expiry_in_months, discount, day_appointments, weekly_appointments, total_appointments, slug, doctor_id, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, primary_image) VALUES (4, NULL, 'Single Online Consultation', NULL, 'Single Online Consultation', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '2021-11-29 13:33:23.166172', NULL, NULL, NULL);

-- Table: hospital_translations
DROP TABLE IF EXISTS hospital_translations;

CREATE TABLE hospital_translations (
    id               INTEGER       NOT NULL
                                   PRIMARY KEY AUTOINCREMENT,
    translation_id   VARCHAR (200) NOT NULL,
    amount           DECIMAL       NOT NULL,
    translation_type VARCHAR (50)  NOT NULL,
    model_name       VARCHAR (100) NOT NULL,
    payment_status   VARCHAR (50),
    payment_type     VARCHAR (20)  NOT NULL,
    payment_mode     VARCHAR (50),
    payment_method   VARCHAR (50),
    payment_getway   VARCHAR (50),
    payment_note     VARCHAR (200),
    sender_user_id   INTEGER,
    sender_name      VARCHAR (100),
    sender_email     VARCHAR (100),
    recever_user_id  INTEGER,
    recever_name     VARCHAR (100),
    recever_email    VARCHAR (100),
    reference_code   VARCHAR (100),
    error_code       VARCHAR (50),
    description      TEXT,
    status           BOOL          NOT NULL,
    is_deleted       BOOL          NOT NULL,
    created_by       INTEGER,
    deleted_by       INTEGER,
    created_at       DATETIME      NOT NULL,
    updated_at       DATETIME,
    deleted_at       DATETIME,
    updated_by       INTEGER
);


-- Table: hospital_treatmentcategories
DROP TABLE IF EXISTS hospital_treatmentcategories;

CREATE TABLE hospital_treatmentcategories (
    id            INTEGER       NOT NULL
                                PRIMARY KEY AUTOINCREMENT,
    name          VARCHAR (50),
    description   TEXT,
    slug          VARCHAR (100),
    primary_image VARCHAR (100),
    sort_id       INTEGER,
    status        BOOL          NOT NULL,
    is_deleted    BOOL          NOT NULL,
    created_by    INTEGER,
    updated_by    INTEGER,
    deleted_by    INTEGER,
    created_at    DATETIME      NOT NULL,
    updated_at    DATETIME,
    deleted_at    DATETIME,
    treatment_id  BIGINT
                                REFERENCES hospital_treatments (id) DEFERRABLE INITIALLY DEFERRED
);

INSERT INTO hospital_treatmentcategories (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, treatment_id) VALUES (1, 'Fever', NULL, NULL, 'treatments_categories/fever.png', NULL, 1, 0, NULL, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, 1);
INSERT INTO hospital_treatmentcategories (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, treatment_id) VALUES (2, 'Cough', NULL, NULL, 'treatments_categories/cough.png', NULL, 1, 0, NULL, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, 1);
INSERT INTO hospital_treatmentcategories (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, treatment_id) VALUES (3, 'Cold', NULL, NULL, 'treatments_categories/cold.png', NULL, 1, 0, NULL, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, 1);
INSERT INTO hospital_treatmentcategories (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, treatment_id) VALUES (4, 'Headche', NULL, NULL, 'treatments_categories/fever.png', NULL, 1, 0, NULL, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, 3);
INSERT INTO hospital_treatmentcategories (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, treatment_id) VALUES (5, 'Stomach Pain', NULL, NULL, 'treatments_categories/fever.png', NULL, 1, 0, NULL, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, 3);
INSERT INTO hospital_treatmentcategories (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, treatment_id) VALUES (6, 'Arthritis', NULL, NULL, 'treatments_categories/arthritis.png', NULL, 1, 0, NULL, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, 3);
INSERT INTO hospital_treatmentcategories (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, treatment_id) VALUES (7, 'Breathing Problems', NULL, NULL, 'treatments_categories/fever.png', NULL, 1, 0, NULL, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, 3);
INSERT INTO hospital_treatmentcategories (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, updated_by, deleted_by, created_at, updated_at, deleted_at, treatment_id) VALUES (8, 'HIV', NULL, NULL, 'treatments_categories/hiv.png', NULL, 1, 0, NULL, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, 3);

-- Table: hospital_treatments
DROP TABLE IF EXISTS hospital_treatments;

CREATE TABLE hospital_treatments (
    id            INTEGER       NOT NULL
                                PRIMARY KEY AUTOINCREMENT,
    name          VARCHAR (50),
    description   TEXT,
    slug          VARCHAR (100),
    primary_image VARCHAR (100),
    sort_id       INTEGER,
    status        BOOL          NOT NULL,
    is_deleted    BOOL          NOT NULL,
    created_by    INTEGER,
    deleted_by    INTEGER,
    created_at    DATETIME      NOT NULL,
    updated_at    DATETIME,
    deleted_at    DATETIME,
    updated_by    INTEGER
);

INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (1, 'General Medicine', 'General Medicine', NULL, 'treatments/livercontent_hEXgOAC.png', NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (2, 'General Surgery', 'General Surgery', NULL, 'treatments/WomanHealth.jpg', NULL, 1, 0, NULL, NULL, '2021-12-01 07:07:03.470775', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (3, 'Psychiatry', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (4, 'General Physician', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (5, 'Rheumatology', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (6, 'Endocrinology', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (7, 'Veterinary', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (8, 'Homeopathy', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (9, 'Diabetology', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (10, 'Neurology', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (11, 'Coronavirus related', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (12, 'Stomach and digestion', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (13, 'Sexology', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (14, 'Mental Wellness', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (15, 'Urology', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (16, 'Physiotherapy', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (17, 'Cancer', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (18, 'Nephrology', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (19, 'Infertility', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (20, 'Cardiology', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (21, 'Ayurveda', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (22, 'Diet and nutrition', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (23, 'Dental', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (24, 'Eye and vision', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (25, 'ENT', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (26, 'Psychological Counselling', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (27, 'Orthopaedics', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (28, 'Dermatology', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (29, 'Pulmonology', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (30, 'Obstetrics & Gynaecology', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);
INSERT INTO hospital_treatments (id, name, description, slug, primary_image, sort_id, status, is_deleted, created_by, deleted_by, created_at, updated_at, deleted_at, updated_by) VALUES (31, 'Paediatrics', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-11-29 13:08:11.461102', NULL, NULL, NULL);

-- Table: hospital_userslogs
DROP TABLE IF EXISTS hospital_userslogs;

CREATE TABLE hospital_userslogs (
    id         INTEGER       NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    name       VARCHAR (50),
    email      VARCHAR (150),
    mobile     VARCHAR (128),
    ip_address VARCHAR (50),
    device     VARCHAR (50),
    browser    VARCHAR (50),
    is_deleted BOOL          NOT NULL,
    created_by INTEGER,
    created_at DATETIME      NOT NULL,
    os         VARCHAR (50) 
);


-- Table: knox_authtoken
DROP TABLE IF EXISTS knox_authtoken;

CREATE TABLE knox_authtoken (
    digest    VARCHAR (128) NOT NULL
                            PRIMARY KEY,
    salt      VARCHAR (16)  NOT NULL
                            UNIQUE,
    created   DATETIME      NOT NULL,
    user_id   INTEGER       NOT NULL
                            REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    expiry    DATETIME,
    token_key VARCHAR (8)   NOT NULL
);

INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('68305d66ae2247c260d4055bc74cd205f13a529d890f348dcb49baf19b1576bb4127310c7148845c18dca4893c0bd8f1f52017c5e5b67384db2fe8e9a48f7153', '400abf7610f09cdc', '2021-12-04 05:49:00.962659', 3, '2021-12-04 15:49:00.961660', '6c790278');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('64b11948972e9150bc1d0dbd628cdd0b6066641e6c3aa542bfee0d26d3b1bee1dfeb4f858e054c32f970f1c63a32852c5c50b0a93bc08140cbb077de9215516d', 'ab6c629f77a3f9b0', '2021-12-04 05:53:45.973600', 4, '2021-12-04 15:53:45.970599', '901e131f');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('6df00a96bda99abb7295a8d8a2a88e7d1fe82972903a54258f457ca079aac0c677ccbed3021855792cc0efc8afc6b74c45f2dcc88b8ec394510e84ee18b6b2b9', 'e4765da7aa13c6c6', '2021-12-04 05:56:24.423481', 5, '2021-12-04 15:56:24.423481', '8add8cd8');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('0f80466a6d0b31ac356ec2f9d064503a75ab782cdee54280f460af0fd2b9844f22c9cdd7ab42c78377dd15fb5dbf998d02cc404c28b9657f940ceeb0d4664ccf', 'af6ce9898759b44a', '2021-12-06 13:13:47.686354', 2, '2021-12-06 23:13:47.686354', 'b30b48c8');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('3c4dcbaacc170a949feba8b146b84af8eeb3fe4f93527a0bda8c56c5d6950e1a09ff81a0efc4448e6ec24b1fed9db2c62716d3a782383884fdedd076510fdab3', '2b4810b1e2af4cc0', '2021-12-09 10:55:06.173002', 2, '2021-12-09 20:55:06.154999', 'd5056eab');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('6d9548d187c41eae0fcf12663b6be2899ad5bebed17b773ce819ebdfe6d5a33482d41b53a6d3dedd17be348a32bffa86357716b83a400a4ccbbaa632ec7e8589', '32b656c3d7eb4f66', '2021-12-09 13:32:10.383505', 2, '2021-12-09 23:32:10.382507', '68657831');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('79fdaeab5f744b8029d50dbdd2eeb864f7d3bbd864272eae8bf0ab770090398c84e784321405e689f5eb4cf852696c8ba13f976f7c2813570b86af2165cbc73f', 'fe6cccf95e178572', '2021-12-09 13:35:46.591504', 2, '2021-12-09 23:35:46.591504', 'e70739fa');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('ff27c96a9fe7b44f37aadb815aac58824bb4f6733fab44ab6a9b17a9ae69b26e256734a36418906ecbd9112cab65c8139c8b6953a23cb2222fd4cce95690faf8', '845703438a97e9ae', '2021-12-09 13:44:32.040991', 2, '2021-12-09 23:44:32.039986', 'b09e2df1');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('4abae8d671ea23f1ba1b3bfbd8f6ff16e19f9b7d3376f27be8337a433361023e89479815e175cc4b50be7809c0dc24d50ba957356dfe6fe4adb34407afd2e949', '3f6c7a52813f8a86', '2021-12-11 07:08:06.793240', 2, '2021-12-11 17:08:06.792264', '4328ce6e');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('52741b75cb827b37c4a5c10cd6840a521f86bd7a1cf92b575c04969b964e544b8201817d31b047b5b2237b343f9e9cdc45b962fd719b669edf66bf4d45fddff7', '1605770eb39bffaa', '2021-12-11 07:09:45.584556', 2, '2021-12-11 17:09:45.584556', 'a80fcb82');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('08afb319e13cf7ab2b270f917b6fa11c881ffed6eefc8515df33914f0b1867c1db9c0310d947aec6b0a657ba912e1f1758e609219c1e62e69acaa7181a30fb19', '33926287633fca14', '2021-12-11 07:10:38.511571', 2, '2021-12-11 17:10:38.511571', '98b5c9d6');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('2620eb53bc2c153afed6901c5f446095a886d74768d90ce317ddb97fc5f3c03b26696e45f136a0f74cad1bcd5ea7a93625c6cb45cf0408c7ab798a21989baddf', '5ff49ae8781e91c6', '2021-12-12 08:17:37.933105', 6, '2021-12-12 18:17:37.932106', '001887e1');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('5f1f14a964df7cd81d5a8ad43a3119c360f4828f92510b98f91475bde31e7994ea9584d028b0050f5f19223fff7f9a9476677005abed3c65a6a6a5f748efd6cc', '9820b0c447a91b18', '2021-12-12 08:31:01.478999', 7, '2021-12-12 18:31:01.478003', '369251eb');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('01a07bdfd555044c7dba138b394b6dfcc9c88056197956c73cb05dfad98f9e6e90a2dd584f601401af43095736bfc9a9b091cd040e458f5b3e21afbd55468030', 'c33978fc9011a2be', '2021-12-12 08:35:13.090646', 8, '2021-12-12 18:35:13.089646', '271f1f09');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('dfb6094fd80b4e5ce7d54e9285ec0f88ca4871eebe670717752dda73ec3c897816ec6bc6f7baa3e1cfdd534108a7739500488eebfb9359767f486d89f02517c0', 'e8ca48c8c2966de1', '2021-12-12 08:50:39.057623', 9, '2021-12-12 18:50:39.054613', '62cb766b');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('91c689f09c029356f0ea8cc11d54c341a5cf35b3a6c9c963edf4b191efe07252a9cd71ae0958d99867fdbc655556e5101aaa724aeb5cd02117c85a941fdf3cf0', 'b4e195a754273e0b', '2021-12-12 09:02:09.291439', 10, '2021-12-12 19:02:09.290440', '90542796');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('3695abf4fc81fd207a4ec8ef06d0e71fa1c2e02f1bf5b7c1df6361d43c689e4c6fe61e22aed9b33aa36a7e116619d937f0d81724f00b9860254624de4c153f7b', '8875144742a6966a', '2021-12-12 09:27:03.897025', 12, '2021-12-12 19:27:03.896052', 'c95494b6');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('82944475ab714805dad38f59dc9e61669f48224d827d01fecf6959302315220b2ce45a769423900092ffe19bca7555f2633c3374856ed0ae28d77fda34bfdee1', '9d004fa5cf39b24d', '2021-12-12 09:29:42.985975', 14, '2021-12-12 19:29:42.984989', '6cea6258');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('c564375ec7bcfc30fa7622068456e43024684fa6d413fe7ce8b9e199acc1412225faad91f3b7ba22af5ad15fe1e227c15b9262ed01f7bec8390564e9dc0185e8', '6fb062b0460a3dde', '2021-12-12 15:17:03.537582', 15, '2021-12-13 01:17:03.537582', '4dc6d91c');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('f8106b93b3e7d61c91e41ca9d3b8da3f821b58f3ae36994a1ea5716a87fb00ca0131bed35e628b6bb088c8265954c2d892278d036c76044169316517946b614a', 'dddb8cac6ebbf678', '2021-12-12 15:21:31.310398', 16, '2021-12-13 01:21:31.309396', '42ed8170');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('f72f5d13c67042e38c5bb98b7e03633becaaf8f949d99c3e3e2026b156908dfa1fc12cbd82351e6d0a7a2010c799f9d412ba8213b62022c8511619df7280cff9', '1648d1bd8b4bbc8b', '2021-12-12 15:22:29.154210', 17, '2021-12-13 01:22:29.154210', 'e11f741a');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('f45e915d5c1eda36eb9aa90af21cbd2e90db5e70f4408c0d1c3870ab7786d51cd963324b119cead6beaed59275d207278dcb3324ddd5dabca7fe0c038664404c', '52b77cef07cb52e9', '2021-12-12 15:23:49.585630', 18, '2021-12-13 01:23:49.583644', 'f930c2f5');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('8e301071cb7f83719283fe0f603556197c9af1cb40f510c6cab601ad87b8603e6acc05e31721871bf617e82b07b1db456a17bcfa6af4ad066b3aab770f3edf6c', '3c5a2cc90c3f0464', '2021-12-12 15:27:54.468970', 20, '2021-12-13 01:27:54.468970', '89722e68');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('65a57b365c1ae8166af4aece5f0f70ff43cec2c4329152693f923d4bac6a4c6542b15f72a1a66f92d7039d08fc1d0a3e227966188d280c90bfd138ce24166282', 'fedbd86d1f172bc6', '2021-12-12 15:32:01.422857', 22, '2021-12-13 01:32:01.421856', 'ac2d1352');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('a80afa35669d8e14292b801cf457a2e862ddf0550b6277f50fe56f8ed2dcbb7117768046090c8f8dd4fbfc3ed79fe535fe68538291845759631aad690d950dcf', 'a35a15ad3ee6f55f', '2021-12-28 09:30:18.715323', 23, '2021-12-28 19:30:18.714324', '5d398ab4');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('32e330c081c12ec9abe46de561eda56f49692705ed1748a54e343f7fc4d5a2871c89ea0421895e005815b15946e6cfbbaa82f6bbf5f7a5b222747397da8a7c89', '9aca42c8a9bb068f', '2021-12-28 10:56:30.129417', 23, '2021-12-28 20:56:30.128417', 'd5f97f81');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('ed02c2279ba18f5d11195af9c06d8940c081f468003a869b192dc86bee560f4956919585650a5fd3e90f1d64d489db959a69a69ab498ad862d81968e78d0ad91', '5b34df4a6f55e831', '2021-12-28 11:00:17.177902', 23, '2021-12-28 21:00:17.177902', 'cd309750');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('f2c79cf8fdeda212a16315c063ff1c06dd3f280925f34368a0ff36def99e320881938312deb72bdde57b8e19dbf259b163baa04000cdb336c05d2580c0431afa', 'c59a26ea7381b94c', '2021-12-28 11:37:25.946347', 25, '2021-12-28 21:37:25.945347', 'b6a90340');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('74c15955d239eefcffb49527688ea04083b724a40c22b8b545dbe933a627f9716dc4a5c45307a485f32d6eb9678441d1aa5221070e65f4cb18ca4bc1aa46c889', 'db314fdea7bced47', '2021-12-28 11:40:24.886556', 23, '2021-12-28 21:40:24.886556', 'ee503e66');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('e67c377052ca27d4e4f3021fb92ec571e2c21b6cb2291b77ed87e578dc69f7546c317312e2d3802a7ba7190a57e5f35bf6d26fbf58a4edd1f607f20e5177048c', '7edd80ceea459fb0', '2021-12-28 11:40:39.884356', 25, '2021-12-28 21:40:39.883355', '962867fc');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('2af4bd5ae104fa8adbe2fc667b4b1c3b650d38c607a6bc6273f9aee380018a6c1df4b44e176bb08a81c73e7d641e556412063c61c8e30e0c8787c05aa9b4ab89', '0867b116e11bcc91', '2021-12-28 11:42:01.802732', 27, '2021-12-28 21:42:01.801724', 'df7513d0');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('2f08fb887577f73ae0fb10de692ada5bd0088eb36981ed99798546519e5ec537926e03193157fb7d4b55ec88840fb6eeed34487867d59e3415a17c5bb5bbc766', 'ca76a026e74aecee', '2021-12-28 12:07:24.079810', 28, '2021-12-28 22:07:24.078809', '4ef5c865');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('09342c7b32ae67fd53ff8c8ac73396c25674295c903571c38e7e1fdcbb2e1ced227d117c06f6ae552366a53810560b06a1a90554d0fb8069a0fe83f840254e08', 'c367ebec7f3efbfb', '2021-12-28 12:25:13.846570', 32, '2021-12-28 22:25:13.846570', 'ec1d9260');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('bb6d8935dd11562b8025d5d0d58467b5fc42932a49ee4d256536b36bac0586001fd20acc43746f55fc205b02196ab481f295410a8309b4133ae5bc84a2393535', '9aa44151f87dc35e', '2021-12-28 12:27:36.597413', 33, '2021-12-28 22:27:36.596414', 'e9b3e133');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('25c266f602e6801e902443433a3d908ad8f1007e828c1e29220966680f22a18fb8bd86a6e19fb14dad250e586d1b3542210f71e6f16381c5c1c68e5b00172db9', '3301e8693b311da6', '2021-12-28 13:23:14.420896', 36, '2021-12-28 23:23:14.418890', '199bb951');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('5ddb883f7850b477246bf68be3a29cb1bbff15130a56a7d99ac097499aa5d5052673e057b1ed01e3dedf19364ae4870b9c82a1f4be3a3bb3dc1c993394315ad1', '5b2caec4adde40ea', '2021-12-28 13:32:58.181469', 37, '2021-12-28 23:32:58.180443', '9ff0c9bc');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('4a256061d39b9c664b9a8003d1be7944f7c61b37f8f36388d2023bb8e558ff7c787c07410ee444f6db59865c078e60937d476cc19ab3a00fef2636a68f5185fe', 'e2efac9a017754ad', '2021-12-28 13:35:46.662821', 25, '2021-12-28 23:35:46.661820', 'e610277f');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('ae0d376b9d8aa70de619ffba43fc3774ed3ced8d694ec072fc2c995fb90b35dda3437389fcc671eb48c410cf21effa1802db2c68bfc9fc93a1f3a4f801d6e73a', '567a41a317d63abe', '2021-12-28 13:36:10.032540', 38, '2021-12-28 23:36:10.031533', 'a72a537d');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('d9e8bd55936e6f1b9cedbb128f5d19476fbda1338dad50eb7deb8c0d9a64dbfca5fcc20698f113231fc60846798436b5e534339ee479a5988390ca94e7bda47b', 'd32c0a5c0f8d9937', '2021-12-29 06:48:48.430614', 39, '2021-12-29 16:48:48.429608', '02cbea4f');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('dfd862ad20407b79b96f736f14873f7cc452cc7de94636131ca8d650a8dfc7054c9a48ae5a8ac391046160f53c7ea3441e041666cdabcb61dc8687479b774cf0', 'b3851e2f728528a2', '2021-12-29 07:50:47.873016', 40, '2021-12-29 17:50:47.872544', '4d40f3ff');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('8a1cf86816efa378b955ea0678eda149e99d87224e9aa2359be7a1c8ce5e282f9806bf1587cb3aacbc5f4ca9699a692c793c6e69351b89cbbb99e15d46ec3e17', '29e111f856bb7855', '2021-12-29 07:53:26.643623', 41, '2021-12-29 17:53:26.640620', '03df712c');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('5605373028c8160718b229cd96d927fff1053586aa991dcbd7befbd686ccd224f04426de5c67523e2de07c04565ab227e1979b6453fd7af612deb2f0746bca47', '83c3935b641b8d23', '2021-12-29 07:56:05.213570', 42, '2021-12-29 17:56:05.213570', '3b8e1d99');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('63d6529c1b776e8874498b36364414ea239afa69589474ab54004ff9b625ee89017116ef0269fe84fee384a885b013f4d280240ad285c9b06f2477533d3bdb48', '05fef951cf25dd79', '2021-12-29 12:43:10.753327', 25, '2021-12-29 22:43:10.752277', 'a4b99c5c');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('08876810b590db1ad6d44325ba15872d91a4cf81d30e66ece63838684c75ddfdd389246a2eb7d228595c609d2c72d80cdd844bf9499a499d554529f317f0b0b8', '6813f42a3a526767', '2021-12-29 16:48:22.728915', 43, '2021-12-30 02:48:22.727918', '9e6d005d');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('fe21486948dfd7dc24911eaf01699d00d097fcce1705d66ee63fd4a6543b9a4abbbdf342104c46c67f2e7d83ee53d3321cf5c024e5ba92538a2b132bbde63750', '2b6cf721fded82bd', '2021-12-29 17:01:02.735568', 44, '2021-12-30 03:01:02.735568', '7607ceac');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('63227b75d48b39d65afb3ddff7847526d3bd64d86a01871f87bd260d8727aebc4501fc19e88997a700f6ece9bac82fbe23b9dfb846cf4f8ee8758f5810f6d47c', 'b3c0fd6e5abc6c6e', '2022-01-12 13:52:47.979083', 45, '2022-01-12 23:52:47.979083', '16d3ab79');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('3224a0223a7be17d0506c7af406a3aa1d76b92907a25fccc1b80a0a50e5f893a0031ab3925d365586fecbafb706decb3f29c3bb759da9384f9ecb1fb1aaf2956', '1e1ca93dff765294', '2022-01-12 13:54:46.927235', 45, '2022-01-12 23:54:46.926236', '50da3518');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('2b91ec16081b237d6ad9ee58e50cb3c675451c3ff8e55a46e2c95a9285d602c3829fcc99f0f6f055b48eede34975042646223b79f96150071a1881afa927a338', 'a06909405370231b', '2022-01-12 13:57:29.796817', 45, '2022-01-12 23:57:29.793816', '501ce9e2');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('ec55d4323c4dd58031654b5313e7f2eff5640db6d309b42012e4d390ac5417415c7b9e0d226a9875c77ee8b43d8187410c0638748a564acab7fb63bd4cdff840', '53200a1ade8bd2ed', '2022-01-14 13:28:07.522583', 46, '2022-01-14 23:28:07.522583', 'fa6cbcdc');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('04e1cf170f69b28e50b2c3b1277307c1f6af4c79036b37837dfd2276d0b166bbff41017313d7cb593e38a35a4643b50e810461dba83036c5d42b6fd93281ebd9', '94f97c65e0978370', '2022-01-14 14:02:58.802399', 46, '2022-01-15 00:02:58.802399', '6fc05462');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('1f3c4a153da5b4ff88df2164b6c9baa5f37ae35e9c805d60a83d88690907e59df247eeb81180e97bdcd60d5523956d1af05584fddfd58035ef620fd44efb0631', '414f18db250734be', '2022-01-14 14:11:44.233136', 46, '2022-01-15 00:11:44.232132', '393d34fb');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('d5288e063fa64446e4a3be58de4b502b43782500225b96c44309b0ca8ddc6953c4c4d4a8c7a4bc729c6a8e661893b6c71158bc4203cd1434f13df09a3a2f48fe', '1d10c48a2e823bf2', '2022-01-14 14:31:53.853686', 46, '2022-01-15 00:31:53.853686', '90f8a0f0');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('c57231fae8a2370ae92c20d8cba9d2602270923f17cf29a6b9a37379a5e2ab87c697e16c62233458b41cf8ab6a091a9a9b21f5652081a96b4de144184fc16689', '411c8db5766e9238', '2022-01-16 08:51:42.966198', 46, '2022-01-16 18:51:42.965199', '0d8a6dee');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('aaa95b4b544adc463a04b863243d5c009faca8dd929a7783080cb8629f10ea8358c7f75dd58aa92b447ee626a3657d778782e735b8390a1e66770863ef462686', '6dfc5efbeb5bb677', '2022-01-16 08:52:19.123750', 46, '2022-01-16 18:52:19.123750', '80880fc2');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('196fb4eb6789c0d46017954ed5dcf2ab58b3427e6ce444d55948b14e24266d0500bc71218d5668bcda2536fd8a3e2c19ce05a73099d594aef9f4255e92715e53', '89c6ec3dbbfb91ba', '2022-01-16 08:53:58.507938', 46, '2022-01-16 18:53:58.506935', '778ea3d3');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('a8178cd48c62062a868178f11eb20d89207c3b298a5ac3c5179b8892e9cc4965190e724cc970f8d3d0779dc71f4ea233bf453cf769c52e5bbbb1e605d9d2136c', '56d535da19967bac', '2022-01-19 08:23:01.456302', 47, '2022-01-19 18:23:01.455302', '465eba83');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('724b1aceb799605e754dbda9768bb5bf0debac8c5044e7c289b83ecb086cac2bb4a1dc74f65787ed41f56db9c25f5e3614cf089e1269834c7bd028ecba2d8d9c', '7d577d70ac651f3c', '2022-01-28 10:36:38.378055', 48, '2022-01-28 20:36:38.378055', 'd678fbb0');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('a8f08e7d710ce9c6aba2293ebf4dee6bfebd62ca1f11f7be6e643623087bb34879a282cb60a41ec093b476aabacfbc5dd7ba604127a6176f4697c8d9d58b8fb8', 'a1627b8efe6c3d35', '2022-02-02 11:21:05.774703', 49, '2022-02-02 21:21:05.774188', '792213bc');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('f2ebd2cfbe1590fc1612022972d1f3034c9b218a60ec677dfec6db5b1780add450bbad3d814880f2c2944dd0c13c62a194ea43c1d5a9dee3c193d6a116ae3654', 'd87fc9f8fa1a6d01', '2022-02-02 11:22:56.654752', 49, '2022-02-02 21:22:56.654213', 'c5d70e23');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('14996358ccd6332394fc2d4ef2f14845e265d2054a3faadf2d624acccbb41e1749a1b33ef670e4b43468dffcf9c380148dc260537d5a5a3366998085a20a28e8', 'a0e41224770c376f', '2022-02-02 11:55:45.103072', 46, '2022-02-02 21:55:45.102739', '941217c7');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('7edc6ffb09d96c3a3bd3073c6ad055714f2ba7f2c59f2d25591ffcccb74e07bbbfb795b2e7f479af6111bd981cf3cdfac61a105bf164e855a52f343349d52b4d', '2804c48935a75862', '2022-02-03 07:10:10.950707', 50, '2022-02-03 17:10:10.950006', '1c6eab70');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('50566296dac010c8f001ac4e09d80fa724e3458f40b7e1b5d1e857963d9744c9dbe4bb838d0d7ab82e11dc4c9de8693d70a9769a01ea8e67660903f1afbb0f25', 'c5ad714c51152e56', '2022-02-03 07:11:43.526254', 49, '2022-02-03 17:11:43.525623', 'e85f220a');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('e84f1db5024567ef0819e545034d455b2b07441043ad41f78741a6548251d63891a130096a905a62b17d1d2afc88823ff1dbecf9679abe3a8e092067eafba229', '26dbd814a27b061a', '2022-02-03 11:08:36.609693', 51, '2022-02-03 21:08:36.608693', '6e69262a');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('fe996a2de99fe514408f36a240123cac3e4898e8d7783b7d15fd92f0d86880aa2bdfac37570966ed9634dbaf1a6fb29ac586b8353d047660f2b7c2b28f90be95', '907926f6f016adf7', '2022-02-03 11:14:59.766203', 52, '2022-02-03 21:14:59.765204', 'a45d311d');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('7838b4d9c0b2fdfab20e71e0099627bc4e712e1e76b0307af67ff1aaaaaa3c71bf178ad6d8e0297f6f13ff73c11def6f5d075429dfc062a6480887cac8758bc1', '17c2af1bbda7b08e', '2022-02-03 11:21:57.405747', 52, '2022-02-03 21:21:57.404742', '1d6c57d6');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('a9c8416d2281aa78579bac48849134b151b356116afaa32f49010b28c336cc14a1da477d1468140077932febd43f0836b63af0a0bf12287f99159c5e38a6fc1c', '47658ecc089c4ae2', '2022-02-03 11:23:47.180587', 53, '2022-02-03 21:23:47.179585', 'cfb66810');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('92fa4d3366e1bb53d388681b740531dcce6c7c2bbdcfaa1df89f87cc72ed22a1c464e911fc9d493bb6710818faa22b664a5246fff9fc195209ea4318d5220b6e', 'aa9b94e88e5c3c27', '2022-02-03 11:25:22.691721', 54, '2022-02-03 21:25:22.690719', 'd71a4582');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('516d0e4e3e8ac0493b6576c9dd0b2a330c0e24055244052476d8e9696fa6484062eaf33f391bea62057b43e008f2ec4d61ba662afaf96068d7e38fd74a887a19', '5fd54fc5b48d5659', '2022-02-03 11:40:34.818926', 55, '2022-02-03 21:40:34.817920', '3f085b6e');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('dcc610511b2cf098ac29eceebc11cb1c177ebcba557ea8fb1c9ead1ad94c991b70889d61c91e4a68b0e3103bedb5d4c12a1c972af7725babe22a40a3f999664c', 'f39ca68dee03af0c', '2022-02-09 12:24:58.551745', 49, '2022-02-09 22:24:58.550407', '634db2ca');
INSERT INTO knox_authtoken (digest, salt, created, user_id, expiry, token_key) VALUES ('89d24c7825c0d4c0e09a7eef135d152089399eaa581df6d71c92ae11d75713644c13defdc14b10e2d69a0c13bf561c3911b58218341c249db7b93fd0b446609b', '882b3f5eac9821f6', '2022-02-10 04:15:51.626125', 56, '2022-02-10 14:15:51.625455', 'f8d8bbf7');

-- Table: patientapi_v1_userotp
DROP TABLE IF EXISTS patientapi_v1_userotp;

CREATE TABLE patientapi_v1_userotp (
    id         INTEGER      NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    created_at DATETIME     NOT NULL,
    otp        VARCHAR (20) NOT NULL,
    is_expire  BOOL         NOT NULL,
    updated_at DATETIME     NOT NULL,
    user_id    INTEGER      NOT NULL
                            UNIQUE
                            REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: verification_phonemodel
DROP TABLE IF EXISTS verification_phonemodel;

CREATE TABLE verification_phonemodel (
    id         INTEGER NOT NULL
                       PRIMARY KEY AUTOINCREMENT,
    Mobile     INTEGER NOT NULL,
    isVerified BOOL    NOT NULL,
    counter    INTEGER NOT NULL
);

INSERT INTO verification_phonemodel (id, Mobile, isVerified, counter) VALUES (1, 9198316507, 1, 4);
INSERT INTO verification_phonemodel (id, Mobile, isVerified, counter) VALUES (2, 9198316500, 1, 7);
INSERT INTO verification_phonemodel (id, Mobile, isVerified, counter) VALUES (3, 9984848400, 1, 2);
INSERT INTO verification_phonemodel (id, Mobile, isVerified, counter) VALUES (4, 9198316509, 1, 1);
INSERT INTO verification_phonemodel (id, Mobile, isVerified, counter) VALUES (5, 8233081931, 1, 10);
INSERT INTO verification_phonemodel (id, Mobile, isVerified, counter) VALUES (6, 918233081931, 1, 1);
INSERT INTO verification_phonemodel (id, Mobile, isVerified, counter) VALUES (7, 9974188851, 1, 1);
INSERT INTO verification_phonemodel (id, Mobile, isVerified, counter) VALUES (8, 9974188852, 1, 1);
INSERT INTO verification_phonemodel (id, Mobile, isVerified, counter) VALUES (9, 9974188853, 1, 1);
INSERT INTO verification_phonemodel (id, Mobile, isVerified, counter) VALUES (10, 9974188854, 1, 1);
INSERT INTO verification_phonemodel (id, Mobile, isVerified, counter) VALUES (11, 9974188855, 1, 1);
INSERT INTO verification_phonemodel (id, Mobile, isVerified, counter) VALUES (12, 8128929546, 1, 1);

-- Index: apimaster_establishmentproofs_user_id_2e02d191
DROP INDEX IF EXISTS apimaster_establishmentproofs_user_id_2e02d191;

CREATE INDEX apimaster_establishmentproofs_user_id_2e02d191 ON apimaster_establishmentproofs (
    "user_id"
);


-- Index: apimaster_establishmenttimings_clinic_id_3ff6e7e7
DROP INDEX IF EXISTS apimaster_establishmenttimings_clinic_id_3ff6e7e7;

CREATE INDEX apimaster_establishmenttimings_clinic_id_3ff6e7e7 ON apimaster_establishmenttimings (
    "clinic_id"
);


-- Index: apimaster_familymemberprofiles_user_id_825e1e1c
DROP INDEX IF EXISTS apimaster_familymemberprofiles_user_id_825e1e1c;

CREATE INDEX apimaster_familymemberprofiles_user_id_825e1e1c ON apimaster_familymemberprofiles (
    "user_id"
);


-- Index: apimaster_feveratedoctors_doctor_id_45aa4f40
DROP INDEX IF EXISTS apimaster_feveratedoctors_doctor_id_45aa4f40;

CREATE INDEX apimaster_feveratedoctors_doctor_id_45aa4f40 ON apimaster_feveratedoctors (
    "doctor_id"
);


-- Index: apimaster_feveratedoctors_patient_id_dede5f8c
DROP INDEX IF EXISTS apimaster_feveratedoctors_patient_id_dede5f8c;

CREATE INDEX apimaster_feveratedoctors_patient_id_dede5f8c ON apimaster_feveratedoctors (
    "patient_id"
);


-- Index: apimaster_feveratedoctors_profile_id_885fb6af
DROP INDEX IF EXISTS apimaster_feveratedoctors_profile_id_885fb6af;

CREATE INDEX apimaster_feveratedoctors_profile_id_885fb6af ON apimaster_feveratedoctors (
    "profile_id"
);


-- Index: apimaster_medicalregistrationproofs_user_id_6bddfec8
DROP INDEX IF EXISTS apimaster_medicalregistrationproofs_user_id_6bddfec8;

CREATE INDEX apimaster_medicalregistrationproofs_user_id_6bddfec8 ON apimaster_medicalregistrationproofs (
    "user_id"
);


-- Index: apimaster_modelrights_function_id_bf7dfd72
DROP INDEX IF EXISTS apimaster_modelrights_function_id_bf7dfd72;

CREATE INDEX apimaster_modelrights_function_id_bf7dfd72 ON apimaster_modelrights (
    "function_id"
);


-- Index: apimaster_modelrights_menu_id_a4602318
DROP INDEX IF EXISTS apimaster_modelrights_menu_id_a4602318;

CREATE INDEX apimaster_modelrights_menu_id_a4602318 ON apimaster_modelrights (
    "menu_id"
);


-- Index: apimaster_modelrights_submenu_id_67d3c03d
DROP INDEX IF EXISTS apimaster_modelrights_submenu_id_67d3c03d;

CREATE INDEX apimaster_modelrights_submenu_id_67d3c03d ON apimaster_modelrights (
    "submenu_id"
);


-- Index: apimaster_modelrights_User_id_a52e3e6c
DROP INDEX IF EXISTS apimaster_modelrights_User_id_a52e3e6c;

CREATE INDEX apimaster_modelrights_User_id_a52e3e6c ON apimaster_modelrights (
    "User_id"
);


-- Index: apimaster_modelsubmenus_menu_id_72558ea7
DROP INDEX IF EXISTS apimaster_modelsubmenus_menu_id_72558ea7;

CREATE INDEX apimaster_modelsubmenus_menu_id_72558ea7 ON apimaster_modelsubmenus (
    "menu_id"
);


-- Index: apimaster_recommendeddoctors_doctor_id_97ad4dcd
DROP INDEX IF EXISTS apimaster_recommendeddoctors_doctor_id_97ad4dcd;

CREATE INDEX apimaster_recommendeddoctors_doctor_id_97ad4dcd ON apimaster_recommendeddoctors (
    "doctor_id"
);


-- Index: apimaster_recommendeddoctors_patient_id_509398fe
DROP INDEX IF EXISTS apimaster_recommendeddoctors_patient_id_509398fe;

CREATE INDEX apimaster_recommendeddoctors_patient_id_509398fe ON apimaster_recommendeddoctors (
    "patient_id"
);


-- Index: apimaster_recommendeddoctors_profile_id_a79a2c8c
DROP INDEX IF EXISTS apimaster_recommendeddoctors_profile_id_a79a2c8c;

CREATE INDEX apimaster_recommendeddoctors_profile_id_a79a2c8c ON apimaster_recommendeddoctors (
    "profile_id"
);


-- Index: apimaster_userprofiles_specialty_id_885baab6
DROP INDEX IF EXISTS apimaster_userprofiles_specialty_id_885baab6;

CREATE INDEX apimaster_userprofiles_specialty_id_885baab6 ON apimaster_userprofiles (
    "specialty_id"
);


-- Index: apimaster_userreviews_doctor_id_abb40576
DROP INDEX IF EXISTS apimaster_userreviews_doctor_id_abb40576;

CREATE INDEX apimaster_userreviews_doctor_id_abb40576 ON apimaster_userreviews (
    "doctor_id"
);


-- Index: apimaster_userreviews_patient_id_2f408967
DROP INDEX IF EXISTS apimaster_userreviews_patient_id_2f408967;

CREATE INDEX apimaster_userreviews_patient_id_2f408967 ON apimaster_userreviews (
    "patient_id"
);


-- Index: apimaster_userreviews_profile_id_09a673dd
DROP INDEX IF EXISTS apimaster_userreviews_profile_id_09a673dd;

CREATE INDEX apimaster_userreviews_profile_id_09a673dd ON apimaster_userreviews (
    "profile_id"
);


-- Index: apimaster_usersclinicimages_clinic_id_8ebe431b
DROP INDEX IF EXISTS apimaster_usersclinicimages_clinic_id_8ebe431b;

CREATE INDEX apimaster_usersclinicimages_clinic_id_8ebe431b ON apimaster_usersclinicimages (
    "clinic_id"
);


-- Index: apimaster_usersclinics_user_id_542eb8f3
DROP INDEX IF EXISTS apimaster_usersclinics_user_id_542eb8f3;

CREATE INDEX apimaster_usersclinics_user_id_542eb8f3 ON apimaster_usersclinics (
    "user_id"
);


-- Index: apimaster_userseducations_user_id_54872c5e
DROP INDEX IF EXISTS apimaster_userseducations_user_id_54872c5e;

CREATE INDEX apimaster_userseducations_user_id_54872c5e ON apimaster_userseducations (
    "user_id"
);


-- Index: apimaster_usersidentityproofs_user_id_28c1ceb2
DROP INDEX IF EXISTS apimaster_usersidentityproofs_user_id_28c1ceb2;

CREATE INDEX apimaster_usersidentityproofs_user_id_28c1ceb2 ON apimaster_usersidentityproofs (
    "user_id"
);


-- Index: apimaster_usersregistrationcouncils_user_id_5e767872
DROP INDEX IF EXISTS apimaster_usersregistrationcouncils_user_id_5e767872;

CREATE INDEX apimaster_usersregistrationcouncils_user_id_5e767872 ON apimaster_usersregistrationcouncils (
    "user_id"
);


-- Index: auth_group_permissions_group_id_b120cbf9
DROP INDEX IF EXISTS auth_group_permissions_group_id_b120cbf9;

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions (
    "group_id"
);


-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
DROP INDEX IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;

CREATE UNIQUE INDEX auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON auth_group_permissions (
    "group_id",
    "permission_id"
);


-- Index: auth_group_permissions_permission_id_84c5c92e
DROP INDEX IF EXISTS auth_group_permissions_permission_id_84c5c92e;

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions (
    "permission_id"
);


-- Index: auth_permission_content_type_id_2f476e4b
DROP INDEX IF EXISTS auth_permission_content_type_id_2f476e4b;

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission (
    "content_type_id"
);


-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
DROP INDEX IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;

CREATE UNIQUE INDEX auth_permission_content_type_id_codename_01ab375a_uniq ON auth_permission (
    "content_type_id",
    "codename"
);


-- Index: auth_user_groups_group_id_97559544
DROP INDEX IF EXISTS auth_user_groups_group_id_97559544;

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups (
    "group_id"
);


-- Index: auth_user_groups_user_id_6a12ed8b
DROP INDEX IF EXISTS auth_user_groups_user_id_6a12ed8b;

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups (
    "user_id"
);


-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
DROP INDEX IF EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq;

CREATE UNIQUE INDEX auth_user_groups_user_id_group_id_94350c0c_uniq ON auth_user_groups (
    "user_id",
    "group_id"
);


-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
DROP INDEX IF EXISTS auth_user_user_permissions_permission_id_1fbb5f2c;

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions (
    "permission_id"
);


-- Index: auth_user_user_permissions_user_id_a95ead1b
DROP INDEX IF EXISTS auth_user_user_permissions_user_id_a95ead1b;

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions (
    "user_id"
);


-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
DROP INDEX IF EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;

CREATE UNIQUE INDEX auth_user_user_permissions_user_id_permission_id_14a6b632_uniq ON auth_user_user_permissions (
    "user_id",
    "permission_id"
);


-- Index: django_admin_log_content_type_id_c4bce8eb
DROP INDEX IF EXISTS django_admin_log_content_type_id_c4bce8eb;

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log (
    "content_type_id"
);


-- Index: django_admin_log_user_id_c564eba6
DROP INDEX IF EXISTS django_admin_log_user_id_c564eba6;

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log (
    "user_id"
);


-- Index: django_content_type_app_label_model_76bd3d3b_uniq
DROP INDEX IF EXISTS django_content_type_app_label_model_76bd3d3b_uniq;

CREATE UNIQUE INDEX django_content_type_app_label_model_76bd3d3b_uniq ON django_content_type (
    "app_label",
    "model"
);


-- Index: django_session_expire_date_a5c62663
DROP INDEX IF EXISTS django_session_expire_date_a5c62663;

CREATE INDEX django_session_expire_date_a5c62663 ON django_session (
    "expire_date"
);


-- Index: hospital_doctorprescriptions_appointment_id_6159793c
DROP INDEX IF EXISTS hospital_doctorprescriptions_appointment_id_6159793c;

CREATE INDEX hospital_doctorprescriptions_appointment_id_6159793c ON hospital_doctorprescriptions (
    "appointment_id"
);


-- Index: hospital_subscriptionhistory_plan_id_d8fd73b1
DROP INDEX IF EXISTS hospital_subscriptionhistory_plan_id_d8fd73b1;

CREATE INDEX hospital_subscriptionhistory_plan_id_d8fd73b1 ON hospital_subscriptionhistory (
    "plan_id"
);


-- Index: hospital_treatmentcategories_treatment_id_2cb01786
DROP INDEX IF EXISTS hospital_treatmentcategories_treatment_id_2cb01786;

CREATE INDEX hospital_treatmentcategories_treatment_id_2cb01786 ON hospital_treatmentcategories (
    "treatment_id"
);


-- Index: knox_authtoken_token_key_8f4f7d47
DROP INDEX IF EXISTS knox_authtoken_token_key_8f4f7d47;

CREATE INDEX knox_authtoken_token_key_8f4f7d47 ON knox_authtoken (
    "token_key"
);


-- Index: knox_authtoken_user_id_e5a5d899
DROP INDEX IF EXISTS knox_authtoken_user_id_e5a5d899;

CREATE INDEX knox_authtoken_user_id_e5a5d899 ON knox_authtoken (
    "user_id"
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
