-- Deploy db-plan:customer_profiles to pg
-- requires: customers

BEGIN;

CREATE TABLE customer_profiles (
  customer_id BIGINT PRIMARY KEY NOT NULL REFERENCES customers(id),
  first_name TEXT,
  last_name TEXT,
  birthday DATE,
  gender TEXT
);

COMMIT;
