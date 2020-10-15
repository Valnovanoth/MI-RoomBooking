SET GLOBAL event_scheduler=ON;

CREATE EVENT IF NOT EXISTS clear_old_bookings
ON SCHEDULE EVERY 1 DAY STARTS '2020-10-15 04:00:00'
DO
	DELETE FROM bookings WHERE time_from <= SUBDATE(current_date, 1)
