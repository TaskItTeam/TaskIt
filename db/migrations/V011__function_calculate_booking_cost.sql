CREATE OR REPLACE FUNCTION task_it.calculate_booking_price(booking_id_param INTEGER)
RETURNS NUMERIC AS $$
DECLARE
    total_price NUMERIC := 0;
BEGIN
    SELECT SUM(p.cost)
    INTO total_price
    FROM task_it.booking_tasks bt
    JOIN task_it.prices p ON bt.task_id = p.task_id
    WHERE bt.booking_id = booking_id_param;

    RETURN total_price;
END;
$$ LANGUAGE plpgsql;