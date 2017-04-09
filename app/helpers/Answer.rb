class Answer

	attr_accessor :status, :data, :errors

	def initialize
		@status = false
		@data = {}
		@errors = []
	end

	def to_json
		{status: @status, data: data, errors: @errors}.to_json
	end

end