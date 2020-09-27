class PreferencesUser < ApplicationRecord
	belongs_to :users, foreign_key: 'users_id'
	belongs_to :preferences, foreign_key: 'preferences_id'
end
