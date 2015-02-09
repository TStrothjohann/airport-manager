require 'airport'
require 'plane'

describe Airport do

	let(:airport){Airport.new}
	let(:landed_plane){double :landed_plane, flying?: false, take_off!: true}
	let(:plane){Plane.new}
	
	context 'docking and undocking planes' do

		it "should be able to dock landed planes" do
			expect(airport).to receive(:sunny?).and_return(true)
			airport.dock(plane)
			expect(airport.planes.count).to eq(1)
		end

		it "should be able to send take_off!-method to planes, when sunny" do
			expect(airport).to receive(:sunny?).and_return(true)
			expect(landed_plane).to receive :take_off!
			airport.undock(landed_plane)
		end

		it "should be able to send land!-method to planes" do
			expect(airport).to receive(:sunny?).and_return(true)
			expect(plane).to receive :land!
			airport.dock(plane)
		end

	end

	context 'Checks weather and space before sending take_off! or land message to planes' do

		it "should not be able to send take_off!-method if weather is stormy" do
			expect(airport).to receive(:sunny?).and_return(false)
			expect(airport.undock(landed_plane)).to eq("You cannot take off!")
		end

		it "should not send land!-method if weather is stormy" do
			expect(airport).to receive(:sunny?).and_return(false)
			expect(airport.dock(plane)).to eq("You cannot land!")
		end

		it 'a plane cannot land if the airport is full' do
			expect(airport).to receive(:space?).and_return(false)
			expect(airport.dock(plane)).to eq("You cannot land!")
	  end
	end

	# grand final
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!
	# describe "The grand final (last spec)" do
	#   it 'all planes can land and all planes can take off' do
	#   	expect(airport).to receive(:sunny?).and_return(true)
	#   	6.times{airport.dock(plane)}
	#   	expect(airport).to be_full
	#   	expect(airport.planes).not_to contain


	#   end
	# end
end