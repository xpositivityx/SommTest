class CreateGrapes < ActiveRecord::Migration
  def change
    create_table :grapes do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
