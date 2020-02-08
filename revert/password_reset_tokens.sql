-- Revert db-plan:password_reset_tokens from pg

BEGIN;

DROP TABLE password_reset_tokens;

COMMIT;
