 class CreateStatusConnections < ActiveRecord::Migration
  def change
    create_table :status_connections do |t|
      t.integer :status_a_id
      t.integer :status_b_id
      t.timestamps
    end
  end
end
