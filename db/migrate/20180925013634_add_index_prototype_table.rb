class AddIndexPrototypeTable < ActiveRecord::Migration
  def change
    add_index :prototypes, [:user_id, :created_at]
  end
end
