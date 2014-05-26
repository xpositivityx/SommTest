subregion = ["California", "Oregon", 'Washington State', 'New York', 'Texas']

subregion.each do |sub|
	r = Subregion.new
	r.name = sub
	r.region_id = Region.where(name: 'United States')
	r.save
end