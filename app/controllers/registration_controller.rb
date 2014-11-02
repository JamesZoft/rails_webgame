class RegistrationController < ApplicationController

	def new
		@user= User.new
	end

	def create
		@user = User.new(user_params)
		#@user.username = user_params[:user][:username]
		#@user.email = user_params[:user][:email]
		#@user.password = user_params[:user][:password]
		#@user.password_confirmation = user_params[:user][:password_confirmation]
		@user.valid?	
	
		if @user.errors.blank?
			puts "fine"
			@user.save
			redirect_to dashboard_path
		else
			puts "oh dear"
			puts @user.errors.messages
			render :action => "new"
		end
	end

	def user_params
  	params.require(:user).permit(:email, :password, :password_confirmation, :remember_me, :username)
	end


end
