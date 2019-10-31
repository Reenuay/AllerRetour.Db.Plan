-- Revert db-plan:customer_profiles from pg

BEGIN;

DROP TABLE customer_profiles;

COMMIT;
