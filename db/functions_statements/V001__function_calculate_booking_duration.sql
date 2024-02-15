CREATE OR REPLACE FUNCTION task_it.calculate_booking_duration(booking_id_param INTEGER)
RETURNS NUMERIC AS
$$
DECLARE
    total_duration NUMERIC := 0;
BEGIN
    SELECT SUM(t.duration) INTO total_duration FROM task_it.tasks t
    JOIN task_it.booking_tasks bt
        ON t.task_id = bt.task_id
        WHERE bt.booking_id = booking_id_param;

    RETURN total_duration;
END;
$$
LANGUAGE plpgsql;