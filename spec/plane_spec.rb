require 'plane'

describe Plane do

let(:plane){Plane.new}
let(:weather){double :weather, sunny: true}

	it "should be flying, when created" do
		expect(plane).to be_flying
	end

	it "should be able to land" do
		plane.land!
		expect(plane).not_to be_flying
	end

	it "should be able to take off" do
		plane.take_off!
		expect(plane).to be_flying
	end


end
