class AddStatusIdToTags < ActiveRecord::Migration
  def change
    add_column :tags, :status_id, :integer
  end
end
