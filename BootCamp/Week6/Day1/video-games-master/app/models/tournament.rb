class Tournament < ActiveRecord::Base

	has_many :players, through: :registration

end
