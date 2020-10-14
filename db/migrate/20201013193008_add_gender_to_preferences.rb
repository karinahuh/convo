class AddGenderToPreferences < ActiveRecord::Migration[6.0]
  def change
    add_column :preferences, :gender, :Integer
    add_column :preferences, :min_age, :Integer
    add_column :preferences, :max_age, :Integer
  end
end
