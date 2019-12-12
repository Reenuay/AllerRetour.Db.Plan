-- Deploy db-plan:customer_profiles to pg
-- requires: customers

BEGIN;

CREATE TABLE customer_profiles (
  customer_id BIGINT PRIMARY KEY NOT NULL REFERENCES customers(id),
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  birthday DATE,
  gender TEXT NOT NULL DEFAULT ''
);

COMMIT;
