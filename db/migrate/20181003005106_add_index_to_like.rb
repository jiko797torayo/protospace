class AddIndexToLike < ActiveRecord::Migration
  def change
    add_index :user_id, :likes
    add_index :prototype_id, :likes
    add_index :likes, [:user_id, :prototype_id], unique: true
  end
end
