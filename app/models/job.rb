class Job < ApplicationRecord
	has_many :applicants
	has_many :skills, through: :applicants

	def self.calc_job_rowspans
		job_rowspans = []
		job_rowspan = 0
		Job.all.each do |job|
			job_rowspan += job.skills.length
			job.applicants.each do |applicant|
				if applicant.skills.length == 0
					job_rowspan += 1
				end
			end
			job_rowspans << job_rowspan
		end
		job_rowspans
	end
end
