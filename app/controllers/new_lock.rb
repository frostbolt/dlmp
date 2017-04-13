get "/api/users/block/:friend_name/:unlocking_date" do 

	

	@a.status = true
	@a.data[:token] = @tempuser.get_token
	@a.errors << @tempuser.errors.messages

	@a.to_json
end