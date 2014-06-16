class Vocab < ActiveRecord::Base

	validates :word, uniqueness: :true
	
end
