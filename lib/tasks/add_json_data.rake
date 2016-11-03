task :add_json_data => [:environment] do |args|
	puts 'Please enter the file path you would like to use'
	file_path =  STDIN.gets.strip
	if file_path =~ /\.json$/
		data = File.read(file_path)
		json = JSON.parse(data)
		json['jobs'].each { |record| Job.find_or_create_by record } if json['jobs'].length > 0
		json['applicants'].each { |record| Applicant.find_or_create_by record } if json['applicants'].length > 0
		json['skills'].each { |record| Skill.find_or_create_by record } if json['skills'].length > 0
	end
end