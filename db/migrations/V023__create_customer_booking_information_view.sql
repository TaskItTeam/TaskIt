CREATE VIEW task_it.customer_booking_information
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
	tasks.name AS task_name,
    task_it.calculate_booking_duration(booking_id) AS task_duration,
	statuses.name AS booking_status,
	bookings.booking_date AS booking_date,
	task_it.calculate_booking_price(booking_id) AS booking_cost
FROM
	task_it.bookings
	INNER JOIN task_it.customers USING (customer_id)
	INNER JOIN task_it.addresses USING (address_id)
	INNER JOIN task_it.booking_workers USING (booking_id)
	INNER JOIN task_it.workers USING (worker_id)
	INNER JOIN task_it.booking_tasks USING (booking_id)
	INNER JOIN task_it.tasks USING (task_id)
	INNER JOIN task_it.statuses USING (status_id)
	INNER JOIN task_it.prices USING (task_id);