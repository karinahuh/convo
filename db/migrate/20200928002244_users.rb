class Users < ActiveRecord::Migration[6.0]
  def change
	create_table :users do |t|
	t.string :nickname
	t.string :email
	t.integer :age
	t.integer :gender
	t.string :password

	t.timestamps
	end
  end
end
