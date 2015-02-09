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

	context "The grand final (last spec)" do
	  it 'all planes can land and all planes can take off' do
	  	6.times do expect(airport).to receive(:sunny?).and_return(true)
			airport.dock(Plane.new) end
			expect(airport).not_to be_space
			airport.planes.each {|p| expect(p.flying?).not_to eq(true)}
			airport.planes.each do |palala| 
				expect(airport).to receive(:sunny?).and_return(true)
				airport.undock(palala)
			end
			airport.undockedplanes.each {|p| expect(p.flying?).to eq(true)}
	  end
	end
end