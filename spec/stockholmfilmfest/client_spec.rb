require_relative '../spec_helper'
require 'stockholmfilmfest'

describe Stockholmfilmfest::Client do 
	# set up before do that creates a client
	before(:each) do
		@cllient = Stockholmfilmfest::Client.new('http://api.stockholmfilmfestival.se/v1/films/film/film_id/3/format/json/API-Key/M61ps8d8v2QGXl2K0ccQwk4EbEfl0a9JVwwCuN0f/')
	end


	it "should have a URL endpoint" do 
		@client.should respond_to :url
	end

	it "should make a get request" do
		response = @client.get
		json_response = JSON.parse(response)
		json_response["filmId"].should eq "3"
	end

	it "should get the filmId" do
		response = @client.get_filmId
		response.should eq "3"
	end

	it "should get the english name of the film" do
		response = @client.get_filmName_en	
		response.should eq "Outside Love"
	end

	it "should get the youtube id of the film" do
		response = @client.get_filmYoutubeId
		response.should eq ""
	end
end