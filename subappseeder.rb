array = ['St.-Amour', 'Julienas', 'Chenas', 'Moulin-a-Vent', 'Fleurie', 'Chiroubles',
'Margon', 'Regnie', 'Brouilly', 'Cote de Brouilly']


array.each do |sa|
	s = Subappellation.new
	s.name = sa
	s.appellation_id = Appellation.where(name: 'Beaujolais').first.id
	s.save
end