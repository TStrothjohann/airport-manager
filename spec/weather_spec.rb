require 'weather'

class WeatherFakeClass; include Weather; end

describe WeatherFakeClass do

	let(:weather){WeatherFakeClass.new}
	
	# it "should randomly return stormy or sunny - but more often sunny" do
	# 	expect(weather.generate_weather).to satisfy{|s| [:stormy, :sunny].include?(s)}
	# end

	it "can tell if it's sunny" do
    allow(weather).to receive(:generate_weather).and_return(:sunny)
		expect(weather.sunny?).to be true
	end

  it "can tell if isn't sunny" do    
    allow(weather).to receive(:generate_weather).and_return(:stormy)
    expect(weather.sunny?).to be false
  end
end
