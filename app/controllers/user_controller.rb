class UserController < ApplicationController
	skip_before_action :verify_authenticity_token, only: [:create]

	def new

	end

	def create
		@user = User.new
		@user.user_name = params[:username]
		@user.email = params[:email]
		@user.password = params[:password]
		if @user.save
			flash[:success] = "Đăng ký thành công"
		else
			flash[:error] = "Đăng ký thất bại"
		end
		redirect_to "/user/new"
	end
end
