module Api::V1
class Api::V1::ProductsController <Api::V1::ApiController
	include Response
	include ExceptionHandler

#	before_action :doorkeeper_authorize! # equivalent of authenticate_user!

	def index
		json_response("ok")

	end

	def create
		user = User.create(params)
		if user.save
			json_response("ok")
		else
			json_response("error")
		end
	end

	def show

	end


	def edit
	end

	def new
	end


end
end
