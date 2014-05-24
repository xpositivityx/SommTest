class DeleteTypeFromGrapes < ActiveRecord::Migration
  def change
  	rename_column :grapes, :type, :color
  end
end
