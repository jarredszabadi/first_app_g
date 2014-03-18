class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery
 

  include SessionsHelper



  private
	  def render_success(data_tag, data)
		render :status => 200,
		:json => { :success => true,:info => "Login Success", :data => {data_tag => data} }
  	end

	def render_failure

		render :status => 401, :json => { :success => false,:info => "Request Failure",:data => {} }
	end

	def render_failure(error_code, error_message)

		render :status => 203,
		:json => { :success => false,:info => error_code,:data => {"Error" => {"Code" => error_code, "Message" => error_message}} }
	end


	def restrict_access
		if @apikey = ApiKey.find_by_access_token(request.headers['Authorization'])
		else
			render_failure("api auth failure, access_token = " << request.headers['Authorization'] << ";")
		end
	end

	def authenticate_user
		@failure = false
		puts "----------------"
		if @user = User.find_by_auth_token(request.headers['User_Authorization'])
			puts @user.email
			puts "-------------------------------"
			puts"auth_token login"
			puts "-------------------------------"
		elsif @user = User.find_by_email(sessions_params[:User][:email]) 
			puts "-------------------------------"
			puts"@user found from email "
			puts "-------------------------------"

			

			if @user && @user.authenticate(params[:User][:password])
				puts "-------------------------------"
				puts"@user authenticated with email and password "
				puts "-------------------------------"
			else
				@failure = true
				render_failure("11-5-2-1", "Sorry, that password is incorrect")
			end

		else 
			@failure = true
			render_failure("11-5-2-2", "Sorry, We couldn't find that account, you can try again, or sign up for a new account")
		end
		
	end
	
  
end
