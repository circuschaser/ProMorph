class SessionsController < ApplicationController

	def new
	end

	def create
			user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			#sign the user in and direct to user's show page
		else
			flash.now[:error] = "Invalid email/password combination"
			render 'new'
		end
end

	def destroy
	end
end
