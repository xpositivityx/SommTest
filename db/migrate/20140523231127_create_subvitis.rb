class CreateSubvitis < ActiveRecord::Migration
  def change
    create_table :subvitis do |t|
      t.integer :subregion_id
      t.integer :grape_id

      t.timestamps
    end
  end
end
