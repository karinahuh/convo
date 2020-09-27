class PreferencesUser < ApplicationRecord
	belongs_to :user, foreign_key: 'users_id'
	belongs_to :preference, foreign_key: 'preferences_id'
end
