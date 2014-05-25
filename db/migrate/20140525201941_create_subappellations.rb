class CreateSubappellations < ActiveRecord::Migration
  def change
    create_table :subappellations do |t|
      t.string :name
      t.integer :appellation_id

      t.timestamps
    end
  end
end
