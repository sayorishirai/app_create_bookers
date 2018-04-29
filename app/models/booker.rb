class Booker < ApplicationRecord

	belongs_to :user

	validates :title, length: { in: 1..20 }
	validates :body, length: { in: 1..200 }

end
