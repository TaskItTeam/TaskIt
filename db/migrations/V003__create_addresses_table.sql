CREATE TABLE IF NOT EXISTS task_it.addresses (
     address_id SERIAL CONSTRAINT pk_addresses PRIMARY KEY,
     street_address TEXT NOT NULL,
     city TEXT NOT NULL,
     province TEXT NOT NULL,
     postal_code VARCHAR(4) NOT NULL
);