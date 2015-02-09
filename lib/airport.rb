require_relative 'weather'
require 'plane'

class Airport
	include Weather

	attr_reader :planes

	def initialize
		@planes ||= []
		@capacity = 6
	end 

	def airport
		@airport = Airport.new
	end

	def dock(plane)
		if airport.sunny?
			plane.land! & planes << plane
		else 
			puts "You cannot land! Weather is too stormy"
		end
	end

	def undock(landed_plane)
		if airport.sunny?
		planes.delete(landed_plane)
		landed_plane.take_off!
		else 
			puts "You cannot take off! Weather is too stormy"
		end
	end




end

