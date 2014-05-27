class FlashcardsController < ApplicationController
  def index
  	@question = Flashcard.order("RANDOM()").first
  	#@question = Flashcard.last
  end

  
end
