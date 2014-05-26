array2 = ['Pinot Noir', 'Cabernet Sauvignon', 'Merlot']

array2.each do |grape|
	g = Grape.new
	g.name = grape
	g.color = 'red'
	g.save
end

array2.each do |grape|
	s = Subviti.new
	s.subregion_id = Subregion.where(name: 'Oregon').first.id
	s.grape_id = Grape.where(name: grape).first.id
	s.save
end