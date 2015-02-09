require 'airport'

describe Airport do

	let(:airport){Airport.new}
	let(:landed_plane){double :landed_plane, flying?: false}
	let(:plane){double :plane, flying?: true}
	let(:sunny_weather){double :weather, sunny?: true}
	let(:stormy_weather){double :weather, sunny?: false}
	
	it "should be able to dock landed planes" do
		airport.dock(plane)
		expect(airport.planes.count).to eq(1)
	end

	it "should be able to send start!-method to planes" do
		expect(landed_plane).to receive :take_off!
		airport.undock(landed_plane)
	end

	it "should only send take_off!-method if weather is sunny" do
		#it's connected to the above test. I don't get this stub/thing implemented.

	end

	it "should be able to send land!-method to planes" do
		expect(plane).to receive :land!
		airport.dock(landed_plane)
	end

	it "should only send land!-method if weather is sunny" do
		#it's connected to the above test. I don't get this stub/thing implemented.

	end

	it 'a plane cannot land if the airport is full' do

    end





end