subregion = ["Alsace", "Bordeaux", "Burgundy", "Champagne",
"Languedoc-Roussillon", "Loire", "Provence", "Rhone"]

subregion.each do |sub|
	r = Subregion.new
	r.name = sub
	r.region_id = 1
	r.save
end