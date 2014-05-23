class Flashcard < ActiveRecord::Base

	def pick_subject
		subreg = self.concern.classify.constantize.order("RANDOM()").first
		return subreg
	end

	def pick_answers subreg
		answers = Array.new(4)
		regs = (subreg.class).order("RANDOM()").limit(6)
		puts regs
		if subreg.is_a? Appellation
			sub = 'subregion'
		else
			sub = 'region'
		end
		answers.each_with_index do |v, i|
			if i == 0
				answers[i] = subreg.send(sub).name
			else
				 regs.each do |item|
				 	if !answers.include? item.send(sub).name
				 		answers[i] = item.send(sub).name
				 		break
				 	end
				 end
			end
		end
		return answers
	end

end
