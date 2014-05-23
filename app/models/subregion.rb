class Subregion < ActiveRecord::Base
	belongs_to :region
	has_many :appellations
end
