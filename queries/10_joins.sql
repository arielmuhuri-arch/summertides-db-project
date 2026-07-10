-- Exercise 1: Display attendees together with their ticket information.
SELECT a.full_name, t.ticket_code, t.ticket_type, t.price
FROM attendees a
JOIN tickets t ON a.attendee_id = t.attendee_id
ORDER BY a.full_name;

-- Exercise 2: Show artists and the stages where they perform.
SELECT ar.artist_name, st.stage_name, p.performance_date, p.start_time
FROM performances p
JOIN artists ar ON p.artist_id = ar.artist_id
JOIN stages st ON p.stage_id = st.stage_id
ORDER BY p.performance_date, p.start_time;

-- Exercise 3: Display every performance with the artist name and stage name.
SELECT p.performance_date, ar.artist_name, st.stage_name, p.start_time, p.end_time
FROM performances p
JOIN artists ar ON p.artist_id = ar.artist_id
JOIN stages st ON p.stage_id = st.stage_id
ORDER BY p.performance_date, p.start_time;

-- Exercise 4: List vendors together with the attendees who purchased through them.
SELECT v.vendor_name, a.full_name, s.sale_date, s.amount
FROM sales s
JOIN vendors v ON s.vendor_id = v.vendor_id
JOIN tickets t ON s.ticket_id = t.ticket_id
JOIN attendees a ON t.attendee_id = a.attendee_id
ORDER BY s.sale_date, a.full_name;

-- Exercise 5: Display sponsors alongside the stages they sponsor.
SELECT s.stage_name, sp.sponsor_name, ss.sponsorship_amount
FROM stage_sponsors ss
JOIN stages s ON ss.stage_id = s.stage_id
JOIN sponsors sp ON ss.sponsor_id = sp.sponsor_id
ORDER BY s.stage_name;

-- Exercise 6: Show artists who do not yet have a scheduled performance.
SELECT ar.artist_name
FROM artists ar
LEFT JOIN performances p ON ar.artist_id = p.artist_id
WHERE p.performance_id IS NULL
ORDER BY ar.artist_name;

-- Exercise 7: Retrieve all performances for Day 2.
SELECT p.performance_date, ar.artist_name, st.stage_name, p.start_time, p.end_time
FROM performances p
JOIN artists ar ON p.artist_id = ar.artist_id
JOIN stages st ON p.stage_id = st.stage_id
WHERE p.festival_day = 'Day 2'
ORDER BY p.performance_date, p.start_time;
