CREATE OR REPLACE PROCEDURE create_new_booking(
    customer_id integer, 
    address_id int, 
    status_id int, 
    booking_date timestamp, 
    tasks_ids integer[])
LANGUAGE plpgsql
AS $$
DECLARE
    booking_id integer;
    task_id integer;
BEGIN
    INSERT INTO Bookings (customer_id, address_id, status_id, booking_date)
    VALUES (customer_id, address_id, status_id, booking_date)
    RETURNING booking_id INTO booking_id;

    FOREACH task_id IN ARRAY tasks_ids LOOP 
        INSERT INTO Booking_Tasks (booking_id, task_id) 
        VALUES (booking_id, task_id);
    END LOOP;
END;
$$;
