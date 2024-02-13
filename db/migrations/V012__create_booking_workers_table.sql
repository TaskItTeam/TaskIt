CREATE TABLE IF NOT EXISTS task_it.booking_workers (
    booking_id INTEGER NOT NULL,
    worker_id INTEGER NOT NULL,
    CONSTRAINT pk_composite_booking_workers PRIMARY KEY (booking_id, worker_id),
    CONSTRAINT fk_bookings_booking_workers
        FOREIGN KEY(booking_id)
            REFERENCES task_it.bookings(booking_id),
    CONSTRAINT fk_workers_booking_workers
        FOREIGN KEY(worker_id)
            REFERENCES task_it.workers(worker_id)
);