class AddComplaintToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :complaint, :int, default: 0
  end
end
