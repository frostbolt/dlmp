get "/api/users/new/:username/:password/:email" do 
	@tempuser = User.new(username: params['username'], password: params['password'], email: params['email'])
	@tempuser.save
	@a.status = @tempuser.valid?,
	@a.error = @tempuser.errors.messages
	@a.data[:token] = @tempuser.get_token
	@a.to_json
end