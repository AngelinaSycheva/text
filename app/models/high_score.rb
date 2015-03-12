class HighScore < ActiveRecord::Base
	validates :game, :score, presence: true
end
