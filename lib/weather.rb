module Weather

	def generate_weather
		["stormy", "sunny", "sunny", "sunny"].shuffle.first
	end

	def sunny?
		generate_weather == "sunny"
	end


end
