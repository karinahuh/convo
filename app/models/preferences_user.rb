class PreferencesUser < ApplicationRecord
	belongs_to :user, foreign_key: 'users_id', optional: true
	belongs_to :preference, foreign_key: 'preferences_id', optional: true
end
