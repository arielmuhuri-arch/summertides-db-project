# Data Dictionary

## Core Tables

### attendees
- attendee_id: surrogate primary key for each attendee
- full_name: attendee full name
- email: unique email address for contact and login-style identification
- phone: optional phone number
- age: attendee age with a check constraint
- city: city of residence
- registration_date: date the attendee registered

### tickets
- ticket_id: surrogate primary key
- ticket_code: unique ticket identifier
- attendee_id: foreign key to attendees
- ticket_type: ticket category such as General, VIP, Weekend, or Day Pass
- price: ticket price
- purchase_date: date the ticket was purchased

### artists
- artist_id: surrogate primary key
- artist_name: artist or band name
- genre: music genre
- country: country of origin
- is_local: flag to mark local artists

### stages
- stage_id: surrogate primary key
- stage_name: unique stage name
- location: stage location on the festival grounds
- capacity: maximum audience size

### performances
- performance_id: surrogate primary key
- artist_id: foreign key to artists
- stage_id: foreign key to stages
- performance_date: the day of the performance
- start_time and end_time: performance time range
- festival_day: day label used for reporting

### vendors
- vendor_id: surrogate primary key
- vendor_name: vendor name
- category: merchandise or food category
- rating: vendor rating from 0 to 5
- contact_person: primary contact name

### sales
- sale_id: surrogate primary key
- ticket_id: foreign key to tickets
- vendor_id: foreign key to vendors
- sale_date: date of sale
- quantity: quantity sold
- amount: sales amount

### sponsors
- sponsor_id: surrogate primary key
- sponsor_name: unique sponsor name
- industry: sponsor sector
- sponsorship_amount: total support amount

### stage_sponsors
- stage_sponsor_id: surrogate primary key
- stage_id: foreign key to stages
- sponsor_id: foreign key to sponsors
- sponsorship_amount: sponsor contribution for a stage
