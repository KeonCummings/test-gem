require 'open-uri'
require 'json'

# #url to request information from the api
# apiurl = "http://not_real.com/customer_scoring?income=50000&zipcode=60201&age=35"

class LeapApi
	# request information from the api 
	def initialize(url)
		begin
		 	@response = open(url).read
			@response = JSON.parse(response)
		rescue 
			puts "There was an error accessing this URL please check if the URL is valid"
		end
	end

	def self.getPropensity()
		#subset propensity from response and return it
		begin
			propensity = @response["propensity"]
			return propensity
		rescue
			puts "Propensity does not exist in this data set"
		end
	end

	def self.getRanking()
		#subset ranking from response and return it
		begin
			ranking = @response["ranking"]
			return propensity
		rescue
			"Ranking does not exist in this data set"
		end
	end
end
