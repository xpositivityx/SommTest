class AddConcern2ToFlashcards < ActiveRecord::Migration
  def change
  	add_column :flashcards, :concern2, :string
  end
end
