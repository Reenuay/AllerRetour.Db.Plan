-- Revert db-plan:email_confirmed from pg

BEGIN;

ALTER TABLE customers RENAME COLUMN email_confirmed TO is_verified_email;

COMMIT;
