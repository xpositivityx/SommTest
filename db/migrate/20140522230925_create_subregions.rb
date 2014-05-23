class CreateSubregions < ActiveRecord::Migration
  def change
    create_table :subregions do |t|
      t.string :name

      t.timestamps
    end
  end
end
