class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :status
      t.string :geocode
      t.string :image_url

      t.timestamps
    end
  end
end
