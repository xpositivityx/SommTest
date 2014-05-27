subregion = ['Jujuy', 'Salta', 'Catamarca', 'La Rioja', 'San Juan', 'Mendoza', 'Rio Negro']

subregion.each do |sub|

	r = Subregion.new
	r.name = sub
	r.region_id = Region.where(name: 'Argentina').first.id
	r.save
end