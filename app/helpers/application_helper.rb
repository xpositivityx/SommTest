module ApplicationHelper
	def flashformat string
		return string.gsub("\"",'')
	end

	def arrayformat string
		return string.join(', ')
	end
end
