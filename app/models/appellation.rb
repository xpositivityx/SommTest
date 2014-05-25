class Appellation < ActiveRecord::Base
	belongs_to :subregion
	has_many :subappellations
end
