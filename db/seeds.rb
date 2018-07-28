# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#  bundle exec rake db:drop db:create db:migrate db:seed

10.times do 
	job=Job.create(job_no: "#{rand(10 ** 2).to_s.rjust(2,'0')+'-'+rand(10 ** 5).to_s.rjust(5,'0') }",name: Faker::Address.community, address: Faker::Address.full_address, job_type: ["Hotel", "Condo", "Home", "Resort", "Casino", "Commercial"].sample, administrator: Faker::FunnyName.name_with_initial)
	20.times do 
		job.scopes.create(
			cost_code: "#{rand(10 ** 2).to_s.rjust(2,'0')+'-'+rand(10 ** 5).to_s.rjust(3,'0') }",
			description: Faker::Lorem.words(4, true).join(" "),
			scope_type: Faker::Lorem.word,
			subcontractor: Faker::FunnyName.name_with_initial,
			contract_no: Faker::Code.isbn,
			project_name: job.name,
			document_type: ["text", "pdf", "csv" ].sample,
			link_contract: Faker::Internet.domain_name,
			governing_contract: Faker::Internet.domain_name,
			vendor:  Faker::FunnyName.name_with_initial,
			vendor_prequalified:  Faker::FunnyName.name_with_initial,
			required_documentation: ["proposal", "compensations", "signed scopes" ].sample,
			legal_name: Faker::FunnyName.name_with_initial,
			address: job.address ,
			authorized_agent_1: Faker::FunnyName.name_with_initial,
			authorized_agent_2: Faker::FunnyName.name_with_initial,
			workers: Faker::FunnyName.name_with_initial,
			compensation: "#{rand(10 ** 2).to_s}k",
			bond_requirement: ["yes", "no"].sample,
			default_retainage: ["yes", "no"].sample,
			insurance_type: "full"
		)
	end
end