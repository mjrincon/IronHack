class Match < ActiveRecord::Base


	belongs_to :winner, class_name: :Player,foreign_key: :winner_faction
	belongs_to :loser, class_name: :Player,foreign_key: :loser_faction


end
