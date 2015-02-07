require 'airport'
require 'plane'

describe Airport do

	let(:airport){Airport.new}
	let(:plane){double :plane, flying?: false}
	
	it "should be able to dock landed planes" do
		airport.dock(plane)
		expect(airport.planes.count).to eq(1)
	end





end