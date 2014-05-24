array = ['Chardonnay', 'Aligote', 'Pinot Noir']

g = Grape.new
g.name = 'Aligote'
g.color = 'white'
g.save

array.each do |grape|
	s = Subviti.new
	s.subregion_id = Subregion.where(name: 'Burgundy').first.id
	s.grape_id = Grape.where(name: grape).first.id
	s.save
end