class Applicant < ApplicationRecord
	has_many :skills
	belongs_to :job
end
