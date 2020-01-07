-- Revert db-plan:email_confirmation_tokens from pg

BEGIN;

DROP TABLE email_confirmation_tokens;

COMMIT;
