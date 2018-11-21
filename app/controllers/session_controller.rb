class SessionController < ApplicationController
	skip_before_action :verify_authenticity_token, only: [:create]

	def new
	end

	def create
		user = User.where(:user_name => params[:user_name]).first
		if user.password == params[:password]
			session[:user_id] = user.id
		end
	end

	def destroy
	end
end
