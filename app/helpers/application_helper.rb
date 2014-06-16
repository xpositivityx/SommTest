module ApplicationHelper
	def flashformat string
		if string.is_a? String
			return string.gsub("\"",'')
		else
			return string.join(', ')
		end
	end

	def arrayformat string
		if string.is_a? Array
			return string.join(', ')
		else
			return string
		end
	end
end
