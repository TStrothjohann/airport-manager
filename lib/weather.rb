module Weather

	def sunny?
		generate_weather == :sunny
	end

private

  def generate_weather
    [:stormy, :sunny, :sunny, :sunny].shuffle.first
  end

end
