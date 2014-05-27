array2 = ['Riesling', 'Pinot Gris', 'Chardonnay',]

array2.each do |grape|
	g = Grape.new
	g.name = grape
	g.color = 'white'
	g.save
end

array2.each do |grape|
	s = Subviti.new
	s.subregion_id = Subregion.where(name: 'Ontario').first.id
	s.grape_id = Grape.where(name: grape).first.id
	s.save
end


array2.each do |grape|
	subreg = Region.where(name: 'Australia').first.subregions
	s = Subviti.new
	s.subregion_id = Subregion.where(name: 'Ontario').first.id
	s.grape_id = Grape.where(name: grape).first.id
	s.save
end