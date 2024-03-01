class CreateSyncs < ActiveRecord::Migration[7.1]
  def change
    create_table :syncs do |t|
      t.string :name
      t.integer :sync_id
      t.integer :user_id

      t.timestamps
    end
  end
end
