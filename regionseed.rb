array = ["United States", "Germany", "Spain", "Italy"]

array.each do |region|
	r = Region.new
	r.name = region
	r.save
end