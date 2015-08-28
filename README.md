# Band Tracker App

A Ruby app that creates Band and Venue classes. Each Band or Venue object is capable of holding a name. It is a many-to-many relationship, so any number of Bands and Venues can be associated with one another.

## Code Example

With Ruby installed in the terminal:


```
test_band = Band.new("Grateful Dead")

test_venue = Venue.new("Lizard Lounge")

test_band.update("Digital Underground") => updates band name

test_band.destroy => deletes band from the database
```

## Tests

Testing the Ruby methods and specs can be done through RSpec.

`gem install rspec`

`rspec`

## Sinatra App

Viewing the app can be done through Sinatra.

Assuming you have Sinatra installed in the terminal:

`ruby app.rb` in the project folder

## Database

All inputted data is saved in the `band_tracker` database.

The `band_tracker` database is comprised of `bands`, `venues`, and `bands_venues` tables.

The `bands` table is comprised of `name`, `id`, and `timestamp` columns.

The `venues` table is comprised of `name`, `id`, and `timestamp` columns.

The `bands_venues` table is comprised of `band_id` and `venue_id` columns.

## License

MIT License, copyright 2015. 