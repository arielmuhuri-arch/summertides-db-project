# SummerTides Festival Database Presentation Notes

## Slide 1: Project Overview
- The SummerTides Festival database helps organizers manage attendees, tickets, artists, stages, vendors, sponsors, and sales.
- The design replaces spreadsheet-based tracking with a relational model that supports reporting and analytics.

## Slide 2: Entity Relationships
- Attendees purchase tickets.
- Tickets relate to sales and vendor transactions.
- Artists perform on stages.
- Sponsors support specific stages.

## Slide 3: Key Features
- Primary keys and foreign keys enforce data integrity.
- Constraints such as NOT NULL, UNIQUE, CHECK, and DEFAULT improve data quality.
- Views make recurring reports easier to reuse.

## Slide 4: Sample Business Questions
- Which artists are scheduled on each stage?
- Which attendees bought VIP tickets?
- Which vendors generated the highest sales?
- Which stages received the most sponsorship support?

## Slide 5: Demo Summary
- The database schema was created successfully.
- Sample data was inserted for all major entities.
- Query scripts and views run successfully against SQLite.
