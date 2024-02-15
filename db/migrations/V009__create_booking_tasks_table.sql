CREATE TABLE IF NOT EXISTS task_it.booking_tasks (
    booking_id INTEGER NOT NULL,
    task_id INTEGER NOT NULL,
    CONSTRAINT pk_composite_booking_tasks PRIMARY KEY (booking_id, task_id),
    CONSTRAINT fk_bookings_booking_tasks
        FOREIGN KEY(booking_id)
            REFERENCES task_it.bookings(booking_id),
    CONSTRAINT fk_bookings_tasks
        FOREIGN KEY(task_id)
            REFERENCES task_it.tasks(task_id)
);