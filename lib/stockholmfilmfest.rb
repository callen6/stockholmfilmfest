require "stockholmfilmfest/version"
require "httparty"

module Stockholmfilmfest
  class Client

  	attr_accessor :url
  	def initialize(url)
  		@url = url
  	end

  	def get
  		response = HTTParty.get(self.url).to_json
  	end



  end
end
