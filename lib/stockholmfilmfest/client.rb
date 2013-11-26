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
# this method might not make sense since you must search films by filmId
# what instead...
  	def get_filmId
  		response = HTTParty.get(self.url).to_json
  		json_response = JSON.parse(response)
  		filmId = json_response["filmId"]
  		return filmId
  	end
# trying to enable search by film title...that would entail a db hrmph
  	def get_filmName_en
  		response = HTTParty.get(self.url).to_json
  		json_response = JSON.parse(response)
  		filmName_en = json_response["filmName_en"]
  		return filmName_en
  	end

  	def get_filmYoutubeId
  		response = HTTParty.get(self.url).to_json
  		json_response = JSON.parse(response)
  		filmYoutubeId = json_response["filmYoutubeId"]
  		return filmYoutubeId
  	end



  end
end
