class FlashcardsController < ApplicationController
  def index
  	@question = Flashcard.order("RANDOM()").first
  end
end
