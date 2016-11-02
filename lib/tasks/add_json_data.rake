task :add_json_data => [:environment] do |args|
	puts 'Please enter the file path you would like to use'
	file_path =  STDIN.gets.strip
	if file_path =~ /\.json$/
		data = File.read(file_path)
		json = JSON.parse(data)
		['jobs', 'applicants', 'skills'].each do |key|
			json[key].each do |record|
				case key
				when 'applicants'
					unless Applicant.exists?(id: record['id'])
						Applicant.create!(record)
					end
				when 'jobs'
					unless Job.exists?(id: record['id'])
						Job.create!(record)
					end
				when 'skills'
					unless Skill.exists?(id: record['id'])
						Skill.create!(record)
					end
				else
					puts "A record was not added because the key was unrecognized: #{key}"
				end
			end
		end
	else
		puts 'ERROR: Not a valid .json file'
	end
end