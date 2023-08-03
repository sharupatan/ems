class Leave < ApplicationRecord
	belongs_to :employee

	validates :reason, :date, presence: true
end
