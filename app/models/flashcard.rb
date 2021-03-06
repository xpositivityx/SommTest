class Flashcard < ActiveRecord::Base
	def pick_subject
		subregs = self.concern.classify.constantize.order("RANDOM()")
		subreg = subregs[0]
		counter = 0
		if self.concern2 == 'grapes'
			until subreg.grapes.count > 0 do
				subreg = subregs[counter]
				counter += 1
				puts counter
			end
		end
		return subreg
	end

	def pick_answers_regional subreg
		answers = Array.new(4)
		if subreg.is_a? Appellation
			sub = 'subregion'
		elsif subreg.is_a? Subregion
			sub = 'region'
		else
			sub = 'appellation'
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

	def pick_answers_grape subreg
		answers = Array.new(4)
		answers.each_with_index do |k,i|
			array = []
			if i == 0
				subreg.grapes.each do |x|
					array << x.name
				end
				answers[i] = array
			else
				regs = Grape.order("RANDOM()").shuffle
				array2 = []
				subreg.grapes.count.times do |q|
					array2 << regs[q].name
				end
				answers[i] = array2
			end
		end
		return answers
	end

	def pick_answers_vocab word
		answers = Array.new(4)
		regs = Vocab.order("Random()")
		answers.each_with_index do |k,i|
			if i == 0
				answers[i] = word.definition
			else
				if !answers.include? regs[i].definition
					answers[i] = regs[i].definition
				end
			end
		end

	end
end