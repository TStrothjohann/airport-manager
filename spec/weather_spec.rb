require './lib/weather'



describe Weather do
	let(:weather){Weather.new}
	it "should randomly return stormy or sunny - but more often sunny" do
		expect(weather.generate_weather).to satisfy{|s| ["stormy", "sunny"].include?(s)}

	end

end
