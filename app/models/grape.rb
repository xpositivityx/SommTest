class Grape < ActiveRecord::Base
	has_many :subviti
	has_many :subregions, through: :subviti
	validates :name, uniqueness: :true
end
