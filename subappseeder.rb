array = ['Prosecco', 'Bardolino', 'Valpolicella', 'Soave']


array.each do |sa|
	s = Subappellation.new
	s.name = sa
	s.appellation_id = Appellation.where(name: 'The Veneto').first.id
	s.save
end