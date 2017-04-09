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