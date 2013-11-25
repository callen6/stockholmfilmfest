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

	### Make a Get Request--returns a hash of json
	client = Stockholmfilmfest::Client.new("http://api.stockholmfilmfestival.se/v1/films/film/film_id/[filmId number]/format/json/API-Key/[your api key]/")
	client.get


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
