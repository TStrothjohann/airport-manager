require 'weather'

class Airport
	include Weather

	attr_reader :planes

	def initialize
		@planes ||= []
	end 
	
	def dock(landed_plane)
		planes << landed_plane
	end

	def undock(landed_plane)
		planes.delete(landed_plane)
		landed_plane.take_off!
	end


end

