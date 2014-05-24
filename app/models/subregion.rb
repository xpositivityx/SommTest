class Subregion < ActiveRecord::Base
	belongs_to :region
	has_many :appellations
	has_many :subvitis
	has_many :grapes, through: :subvitis
end
