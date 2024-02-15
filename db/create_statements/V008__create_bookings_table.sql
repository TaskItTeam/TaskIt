CREATE TABLE IF NOT EXISTS task_it.bookings (
    booking_id SERIAL CONSTRAINT pk_bookings PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    address_id INTEGER NOT NULL,
    status_id INTEGER NOT NULL,
    booking_date TIMESTAMP NOT NULL,
    CONSTRAINT fk_customers_bookings
        FOREIGN KEY(customer_id)
            REFERENCES task_it.customers(customer_id),
    CONSTRAINT fk_addresses_bookings
        FOREIGN KEY(address_id)
            REFERENCES task_it.addresses(address_id),
    CONSTRAINT f_statuses_bookings
        FOREIGN KEY(status_id)
            REFERENCES task_it.statuses(status_id)
);