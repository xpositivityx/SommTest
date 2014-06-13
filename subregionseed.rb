subregion = ['Piedmont', 'Lombardy', 'The Tre Venezie', 'Liguria', 'Emilia-Romagna', 'Tuscany', 'Umbria', 'Abruzzi',
'Capania', 'Apulia', 'Sardinia', 'Sicily', 'Basilicata', 'Calabria']

subregion.each do |sub|

	r = Subregion.new
	r.name = sub
	r.region_id = Region.where(name: 'Italy').first.id
	r.save
end