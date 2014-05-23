class CreateFlashcards < ActiveRecord::Migration
  def change
    create_table :flashcards do |t|
      t.string :question
      t.string :concern

      t.timestamps
    end
  end
end
