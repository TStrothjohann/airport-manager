require_relative 'weather'

class Airport

	include Weather

	attr_reader :planes
	attr_reader :undockedplanes

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
			@undockedplanes = planes.reject {|lp| lp == landed_plane} 
			#planes.delete(landed_plane)
			#deleted = ary.select( &:odd? ).tap{|odd| ary -= odd }

			landed_plane.take_off!
		else 
			p "You cannot take off!"
		end
	end

	def space?
		@planes.count < @capacity
	end


end

