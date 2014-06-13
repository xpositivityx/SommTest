array = ['Gattinara', 'Ghemme', 'Barbera', 'Arneis', 'Barbaresco', 'Barolo', 'Dolcetta', 'Asti', 'Gavi']

array.each do |i|
 	a = Appellation.new
	a.name = i
	a.subregion_id = Subregion.where(name: 'Piedmont').first.id
	a.save
end