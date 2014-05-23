class Flashcard < ActiveRecord::Base

	def pick_subject
		subreg = self.concern.classify.constantize.order("RANDOM()").first
		return subreg
	end

	def pick_answers subreg
		answers = Array.new(4)
		if subreg.is_a? Appellation
			sub = 'subregion'
		else
			sub = 'region'
		end
		regs = sub.classify.constantize.order("RANDOM()").limit(6)
		answers.each_with_index do |v, i|
			if i == 0
				answers[i] = subreg.send(sub).name
			else
				 regs.each do |item|
				 	if !answers.include? item.name
				 		answers[i] = item.name
				 		break
				 	end
				 end
			end
		end
		return answers
	end

end
