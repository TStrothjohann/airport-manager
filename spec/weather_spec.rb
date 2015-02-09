require 'weather'

class WeatherFakeClass; include Weather; end

describe WeatherFakeClass do
	let(:weather){WeatherFakeClass.new}
	
	it "should randomly return stormy or sunny - but more often sunny" do
		expect(weather.generate_weather).to satisfy{|s| ["stormy", "sunny"].include?(s)}

	end

	it "should tell if it's sunny or not" do
		expect(weather.sunny?).to satisfy{|s| [true, false].include?(s)}
	end

end
