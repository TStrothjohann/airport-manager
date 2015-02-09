require_relative 'weather'

class Airport

	include Weather

	attr_reader :planes

	def initialize
		@planes ||= []
		@capacity = 6
	end 

	def dock(plane)
		if sunny? & space?
			plane.land! & planes << plane
		else 
			p "You cannot land!"
		end
	end

	def undock(landed_plane)
		if sunny?
			planes.delete(landed_plane)
			landed_plane.take_off!
		else 
			p "You cannot take off!"
		end
	end

	def space?
		@planes.count <= @capacity
	end


end

