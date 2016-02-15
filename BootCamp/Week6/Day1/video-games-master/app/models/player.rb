class Player < ActiveRecord::Base

	has_many :tournaments, through: :registration

end
