# срабатыает вначале каждого реквеста

before do 
	content_type :json
	@a = Answer.new
end

before /^(?!\/(api\/users\/new|api\/users\/getToken\/))/ do
	halt ({status: false, errors: ['No token provided']}.to_json) unless params[:token]
	halt ({status: false, errors: ['No token provided']}.to_json) if params[:token].strip.empty?
	@tempuser = User.find_by(token: params[:token])
	halt ({status: false, errors: ['Wrong token']}.to_json) unless @tempuser
end
