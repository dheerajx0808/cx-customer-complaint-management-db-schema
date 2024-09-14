CREATE DATABASE cx-customer-complaint-management-db
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_India.1252'
    LC_CTYPE = 'English_India.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;


CREATE ROLE app_user WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  PASSWORD 'app_user_pwd'
  VALID UNTIL 'infinity';
  
  
CREATE SCHEMA IF NOT EXISTS complaint_management AUTHORIZATION postgres;
GRANT ALL ON SCHEMA complaint_management TO app_user;

--GRANT SELECT ON ALL TABLES IN SCHEMA transformation TO psp_app_user;