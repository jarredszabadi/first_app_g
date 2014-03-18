module Api
  module V1
    class SessionsController < ApplicationController

      before_filter :restrict_access
      before_filter :authenticate_user
      respond_to :json
      
      def create
        puts "enter sessions controller"
        if !(@failure)
          if @user.auth_token.blank?
            puts "sessions controller: auth_token = blank"
            @user.generate_auth_token!()  
          end

          puts "sessions controller: auth_token = #{@user.auth_token}" 
          render_success(:User, @user)  
        end
      end

    

    end
  end
end
