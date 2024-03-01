class ModifyForeignKeys < ActiveRecord::Migration[7.1]
  def change
    rename_column :syncs, :sync_id, :artist_id
    remove_column :artists, :user_id
  end
end
