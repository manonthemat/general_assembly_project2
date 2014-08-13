class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session # TODO: should be exception - this is temporary
  
  helper_method :current_user

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end




  helper_method :new_login
  def new_login
		@user = User.new
		@is_login = true
	end

	helper_method :create_login
	def create_login
		u = User.where(email: params[:user][:email]).first
		# first make sure we actually find a user
		# then see if user authenticates
		if u && u.authenticate(params[:user][:password])
			# sets the cookie to the browser
			da_session = session[:user_id] = u.id.to_s
			redirect_to users_path
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

	helper_method :destroy_login
	def destroy_login
		# Kill our cookies!
		puts "Do we have a session???"
		puts session
		reset_session
		redirect_to users_path
		puts "DEBUGGIN!!!"
		puts "***********************************************************"
		puts "The session: #{session[:user_id]}"
	end
end

