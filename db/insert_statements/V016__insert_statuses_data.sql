INSERT INTO task_it.statuses (name, description)
VALUES
	('Pending', 'Booking has been created and is waiting on a worker to accept.'),
	('Accepted', 'A worker has accepted the booking.'),
	('Busy', 'A worker is busy completing the booking tasks.'),
	('Complete', 'A worker has completed all tasks in the booking.'),
	('Incomplete', 'The worker was not able to complete the booking.'),
	('Partially complete', 'The worker was not able to complete all tasks in the booking.');