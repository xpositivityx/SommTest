array = ['Merlot','Cabernet Franc', 'Cabernet Sauvignon', 'Malbec', 'Petit Verdot']

array2 = ['Muscadelle', 'Sauvignon Blanc', 'Semillon', 'Ugni Blanc']


array2.each do |grape|
	g = Grape.new
	g.name = grape
	g.color = 'white'
	g.save
end