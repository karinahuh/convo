class CreatePreferencesUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :preferences_users do |t|
      t.integer :preferences_id
      t.integer :users_id
      t.integer :options

      t.timestamps
    end
	add_index :preferences_users, :users_id
	add_index :preferences_users, :preferences_id 
  end
end
