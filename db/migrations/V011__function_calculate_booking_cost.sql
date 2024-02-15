CREATE OR REPLACE FUNCTION task_it.calculate_booking_price(booking_id_param INTEGER)
RETURNS NUMERIC AS $$
DECLARE
    total_price NUMERIC := 0;
BEGIN
    SELECT SUM(p.cost)
    INTO total_price
    FROM task_it.booking_tasks bt
    JOIN (
        SELECT task_id, cost
        FROM task_it.prices p1
        WHERE (p1.task_id, p1.date_added) IN (
            SELECT p2.task_id, MAX(p2.date_added)
            FROM task_it.prices p2
            GROUP BY p2.task_id
        )
    ) p ON bt.task_id = p.task_id
    WHERE bt.booking_id = booking_id_param;

    RETURN total_price;
END;
$$ LANGUAGE plpgsql;
