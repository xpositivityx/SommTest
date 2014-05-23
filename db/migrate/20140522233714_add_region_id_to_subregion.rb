class AddRegionIdToSubregion < ActiveRecord::Migration
  def change
    add_column :subregions, :region_id, :int
  end
end
