array = ['Rioja Alavesa', 'Rioja Alta', 'Rioja Baja']


# array.each do |app|
# 	a = Appellation.where(name: app, subregion_id: Subregion.where(name: 'British Columbia').first.id).first
# 	a.delete
# end

array.each do |app|
	a = Appellation.new
	a.name = app
	a.subregion_id = Subregion.where(name: 'Rioja').first.id
	a.save
end