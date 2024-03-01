class AddUsersIdToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :users_id, :integer
  end
end
