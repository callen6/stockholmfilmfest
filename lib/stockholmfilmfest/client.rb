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
  		response = JSON.parse HTTParty.get(self.url).to_json
  		filmId = response["filmId"]
  		return filmId
  	end
# trying to enable search by film title...that would entail a db hrmph
  	def get_filmName_en
  		response = JSON.parse HTTParty.get(self.url).to_json
  		filmName_en = response["filmName_en"]
  		return filmName_en
  	end

  	def get_filmYoutubeId
  		response = JSON.parse HTTParty.get(self.url).to_json
  		filmYoutubeId = response["filmYoutubeId"]
  		return filmYoutubeId
  	end



  end
end
