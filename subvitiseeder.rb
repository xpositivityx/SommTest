array2 = ['Bourboulenc', 'Rolle', 'Chardonnay', 'Marsanne', 'Sauvignon Blanc', 'Semillon',
'Viognier', 'Clairette', 'Grenache Blanc', 'Ugni Blanc']

array2.each do |grape|
	g = Grape.new
	g.name = grape
	g.color = 'white'
	g.save
end

array2.each do |grape|
	s = Subviti.new
	s.subregion_id = Subregion.where(name: 'Provence').first.id
	s.grape_id = Grape.where(name: grape).first.id
	s.save
end