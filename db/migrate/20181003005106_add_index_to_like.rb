class AddIndexToLike < ActiveRecord::Migration
  def change
    add_index :likes, :user_id
    add_index :likes, :prototype_id
    add_index :likes, [:user_id, :prototype_id], :unique => true
  end
end
