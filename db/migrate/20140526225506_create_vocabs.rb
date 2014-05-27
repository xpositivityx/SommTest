class CreateVocabs < ActiveRecord::Migration
  def change
    create_table :vocabs do |t|
      t.string :word
      t.text :definition

      t.timestamps
    end
  end
end
