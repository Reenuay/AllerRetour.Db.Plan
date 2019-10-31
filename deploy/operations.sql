-- Deploy db-plan:operations to pg
-- requires: customers
-- requires: merchants

BEGIN;

CREATE TABLE operations (
  id BIGSERIAL PRIMARY KEY,
  customer_id BIGINT NOT NULL REFERENCES customers(id),
  merchant_id BIGINT NOT NULL REFERENCES merchants(id),
  amount INT NOT NULL,
  date_created TIMESTAMPTZ NOT NULL DEFAULT now()
);

COMMIT;
