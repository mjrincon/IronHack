class Project < ActiveRecord::Base

	def self.clean_old
		d = Date.today
		where("created_at <= ?", d-1.week).destroy_all
	end


end
