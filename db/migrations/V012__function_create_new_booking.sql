CREATE OR REPLACE PROCEDURE task_it.create_new_booking(IN customer_id integer, IN address_id integer, IN status_id integer, IN booking_date timestamp without time zone, IN tasks_ids integer[])
LANGUAGE plpgsql
AS $procedure$
DECLARE
    booking_id_param integer;
    task_id integer;
BEGIN
    INSERT INTO Bookings (customer_id, address_id, status_id, booking_date)
    VALUES (customer_id, address_id, status_id, booking_date)
    RETURNING booking_id INTO booking_id_param;
 
	SELECT booking_id INTO booking_id_param
    FROM Bookings
    ORDER BY booking_id DESC
    LIMIT 1;
   
    if tasks_ids is not null then
    	FOREACH task_id IN ARRAY tasks_ids LOOP
        	INSERT INTO Booking_Tasks (booking_id, task_id)
        	VALUES (booking_id_param, task_id);
    	END LOOP;
    end if;
END;
$procedure$
;