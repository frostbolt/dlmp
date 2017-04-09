require "./config/libs" # Require libraries
require "./config/db" # Require app setup

Dir['./app/models/**/*.rb'].each { |file| require file }

namespace :db do 
	task :refresh do
		ActiveRecord::Migration.drop_table :users
		ActiveRecord::Migration.drop_table :records

		ActiveRecord::Migration.create_table :users do |t|
			t.string :username
			t.string :password
			t.string :email
			t.string :token
		end

		ActiveRecord::Migration.create_table :records do |t|
			t.integer :id_host
			t.integer :id_friend
			t.datetime :block_starts
			t.datetime :block_expires
		end
	end

	task :demo do
		puts "Filling db with demo data."
		User.create(username: "tester", password: "tester", email: "me@serge.xyz")
		User.create(username: "tester1", password: "tester1", email: "me1@serge.xyz")
		User.create(username: "tester2", password: "tester2", email: "me2@serge.xyz")
	end

end