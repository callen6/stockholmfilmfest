require_relative '../spec_helper'
require 'stockholmfilmfest'

describe Stockholmfilmfest::Client do 
	it "should have a URL endpoint" do 
		cl = Stockholmfilmfest::Client.new('http://api.stockholmfilmfestival.se/v1/films/film/film_id/3/format/json/API-Key/M61ps8d8v2QGXl2K0ccQwk4EbEfl0a9JVwwCuN0f/')
		cl.should respond_to :url
	end

	it "should make a get request" do
		cl = Stockholmfilmfest::Client.new('http://api.stockholmfilmfestival.se/v1/films/film/film_id/3/format/json/API-Key/M61ps8d8v2QGXl2K0ccQwk4EbEfl0a9JVwwCuN0f/')
		response = cl.get
		json_response = JSON.parse(response)
		json_response["filmId"].should eq "3"
	end

	# it "should "

end