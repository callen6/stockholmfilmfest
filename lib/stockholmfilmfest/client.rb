require "httparty"
require "json"

module Stockholmfilmfest
  
  class Client

  	attr_accessor :url

  	def initialize(url)
  		@url = url
  	end

  	def get
  		response = HTTParty.get(self.url).to_json
  	end

  	def get_filmId
  		response = HTTParty.get(self.url).to_json
  		filmId = response["filmId"]
  		return filmId
  	end

  	def get_filmName_en
  		response = HTTParty.get(self.url).to_json
  		filmName_en = response["filmName_en"]
  		return filmName_en
  	end
  end
end
