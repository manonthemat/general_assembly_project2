class SessionsController < ApplicationController
	def new
		@user = User.new
		@is_login = true
	end

	def create
		u = User.where(email: params[:user][:email]).first
		# first make sure we actually find a user
		# then see if user authenticates
		if u && u.authenticate(params[:user][:password])
			# sets the cookie to the browser
			da_session = session[:user_id] = u.id.to_s
			redirect_to shoes_path
			puts "DEBUGGIN!!!"
			puts "***********************************************************"
			puts "da session: " + da_session
		else
			redirect_to new_session_path
			puts "DEBUGGIN!!!"
			puts "***********************************************************"
			puts "no session"
		end
	end

	def destroy
		# Kill our cookies!
		puts "Do we have a session???"
		puts session
		reset_session
		redirect_to shoes_path
		puts "DEBUGGIN!!!"
		puts "***********************************************************"
		puts "The session: #{session[:user_id]}"
	end
end
