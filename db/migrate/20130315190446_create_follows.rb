class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.string :follower
      t.string :followee

      t.timestamps
    end
  end
end
