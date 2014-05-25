array = ['Faugeres', 'St. Chinian', 'Frontignan', 'Minervois', 'Corbieres', 'Rivesaltes', 'Banyuls']


array.each do |sa|
	s = Subappellation.new
	s.name = sa
	s.appellation_id = Appellation.where(name: 'Languedoc-Roussillon').first.id
	s.save
end