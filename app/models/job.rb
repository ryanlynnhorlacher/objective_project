class Job < ApplicationRecord
	has_many :applicants

	def self.skills_per_job
		skills_per_job = []
		Job.all.each do |job|
			counter = 0
			job.applicants.each do |applicant|
				applicant.skills.each do
					counter += 1
				end
			end
			skills_per_job << counter
		end
		skills_per_job
	end
end
