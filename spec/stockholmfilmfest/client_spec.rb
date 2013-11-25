require_relative '../spec_helper'
require 'Stockholmfilmfest'

describe Stockholmfilmfest::Client do 
	it "should have a URL endpoint" do 
		cl = Stockholmfilmfest::Client.new('http://google.com')
		cl.should respond_to :url
	end

	it "should make a get request" do
		cl = Stockholmfilmfest::Client.new('http://google.com')
		cl.get.should == "foooooooo"
	end


end