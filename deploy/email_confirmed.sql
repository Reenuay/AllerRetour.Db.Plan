-- Deploy db-plan:email_confirmed to pg
-- requires: customers

BEGIN;

ALTER TABLE customers RENAME COLUMN is_verified_email TO email_confirmed;

COMMIT;
