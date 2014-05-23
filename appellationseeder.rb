array = ['Muscadet', 'Anjou-Saumur', 'Touraine', 'Sancerre', 'Pouilly-Fume',
'Menetou-Salon', 'Quincy', 'Reuilly']

array.each do |app|
	a = Appellation.new
	a.name = app
	a.subregion_id = Subregion.where(name: 'Loire').first.id
	a.save
end