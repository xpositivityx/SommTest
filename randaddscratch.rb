def pick_answers subreg
	answers = Array.new(4)
	regs = Subregion.order("RANDOM()").limit(6)
	answers.each_with_index do |v, i|
		if i == 0
			answers[i] = subreg.subregion.name
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

p pick_answers(Appellation.first)