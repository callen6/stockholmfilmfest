# Stockholmfilmfest

Stockholmfilmfest makes it easy to work with the Stockhold Film Festival's API in your Ruby program.

## Installation

Add this line to your application's Gemfile:

    gem 'stockholmfilmfest'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stockholmfilmfest

## Usage

	### Get an API Key

	Register for an API Key at [http://api.stockholmfilmfestival.se/?msg=1](http://api.stockholmfilmfestival.se/?msg=1)

	### Require the gem

	require 'stockholmfilmfest'

	### Make a GET request--returns a hash of json

	`client = Stockholmfilmfest::Client.new("http://api.stockholmfilmfestival.se/v1/films/film/film_id/[filmId number]/format/json/API-Key/[your api key]/")
	client.get`

	### Get the film's ID number assigned by SFF

	### Get the English name of a film

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
