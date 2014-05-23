array = ['Chablis', 'Cote De Beaune', 'Cote De Nuits', 'Cote De Chalonaise',
'Maconnais', 'Beaujolais']

array.each do |i|
 	a = Appellation.new
	a.name = i
	a.subregion_id = Subregion.where(name: 'Burgundy').first.id
	a.save
end