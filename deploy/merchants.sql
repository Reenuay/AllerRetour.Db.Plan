-- Deploy db-plan:merchants to pg

BEGIN;

CREATE TABLE merchants (
  id BIGSERIAL PRIMARY KEY
);

COMMIT;
