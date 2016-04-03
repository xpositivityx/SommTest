subregion = ['Minho', 'Douro', 'Bairrada', 'Dao', 'Alentejo', 'Setubal', 'Medeira']

subregion.each do |sub|

	r = Subregion.new
	r.name = sub
	r.region_id = Region.where(name: 'Portugal').first.id
	r.save
end