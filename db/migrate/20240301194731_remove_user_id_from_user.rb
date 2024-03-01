class RemoveUserIdFromUser < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :users_id
  end
end
