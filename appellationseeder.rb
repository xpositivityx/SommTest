array = ['Willamette Valley', 'Columbia Valley', 'Walla Walla', 'Umpqua Valley', 'Rogue Valley']


array.each do |app|
	a = Appellation.new
	a.name = app
	a.subregion_id = Subregion.where(name: 'Washington State').first.id
	a.save
end