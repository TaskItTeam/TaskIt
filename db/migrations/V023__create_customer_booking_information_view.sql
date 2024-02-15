CREATE VIEW customer_booking_information 
AS 
SELECT 
	customers.first_name AS customer_first_name,
	customers.last_name AS customer_last_name,
	customers.email AS customer_email,
	customers.phone_number AS customer_phone_number,
	addresses.street_address AS street_address,
	addresses.city AS city,
	workers.first_name AS worker_first_name,
	workers.last_name AS worker_last_name,
	tasks.task_name AS task_name,
    calculate_booking_duration(booking_id) AS task_duration,
	statuses.name AS booking_status,
	bookings.booking_date AS booking_date,
	calculate_booking_price(booking_id) AS booking_cost
FROM
	taskit.bookings
	INNER JOIN customers USING (customer_id)
	INNER JOIN addresses USING (address_id)
	INNER JOIN booking_workers USING (booking_id)
	INNER JOIN workers USING (worker_id)
	INNER JOIN booking_tasks USING (booking_id)
	INNER JOIN tasks USING (task_id)
	INNER JOIN statuses USING (status_id)
	INNER JOIN prices USING (price_id);
