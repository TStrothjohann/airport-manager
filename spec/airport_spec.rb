require 'airport'

describe Airport do

	let(:airport){Airport.new}
	let(:landed_plane){double :landed_plane, flying?: false}
	let(:sunny_weather){double :weather, sunny?: true}
	let(:stormy_weather){double :weather, sunny?: false}
	
	it "should be able to dock landed planes" do
		airport.dock(landed_plane)
		expect(airport.planes.count).to eq(1)
	end

	it "should be able to send start!-method to planes" do
		expect(landed_plane).to receive :take_off!
		airport.undock(landed_plane)
	end

	it "should only send take_off!-method if weather is sunny" do
		

	end






end