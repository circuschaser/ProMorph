class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			# Sign the user in, redirect to user's Show page
			sign_in user
			redirect_to "/home"
		else
			# create and error message and re-render signin form
			flash.now[:error] = "That is an invalid email/password combination"
			render "new"
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end
end
