class CreateAppellations < ActiveRecord::Migration
  def change
    create_table :appellations do |t|
      t.string :name
      t.integer :subregion_id
      t.timestamps
    end
  end
end
