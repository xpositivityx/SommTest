class FlashcardsController < ApplicationController
  def index
  	@question = Flashcard.order("RANDOM()").first
  	#@question = Flashcard.last
  end

  def subregions
  	@question = Flashcard.where(concern: :subregion).where(concern2: nil).order("RANDOM()").first
  end

  def appellations
  	@question = Flashcard.where(concern: :appellation).where(concern2: nil).order("RANDOM()").first
  end

  def subappellations
  	@question = Flashcard.where(concern: :subappellation).where(concern2: nil).order("RANDOM()").first
  end

  def grapes
  	@question = Flashcard.where(concern2: :grapes).order("RANDOM()").first
  end

  def vocab
  	@question = Flashcard.where(concern: :vocab).order("RANDOM()").first
  end
  
end