array = ['Hudson River Valley', 'Finger Lakes', 'Lake Erie', 'Long Island']


array.each do |sa|
	s = Subappellation.new
	s.name = sa
	s.appellation_id = Appellation.where(name: 'Sierra Foothills').first.id
	s.save
end