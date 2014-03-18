module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: [:show, :edit, :update, :destroy]
      before_filter :restrict_access
      before_filter :authenticate_user, :except => [:create]
      respond_to :json
      # GET /users
      # GET /users.json
      def index
        @users = User.all
      end

      # GET /users/1
      # GET /users/1.json
      def show
        @user = User.find(params[:id])
      end

      # POST /users
      # POST /users.json
      def create        
        @user = User.new(user_params)
        if @user.save
          render_success(:User, @user)
        else
          render_failure("11-1-1-1", "Sorry we wern't able to create an account for you. \n\n You can either Try Again or Sign In with an existing account")
        end

      end

      # PATCH/PUT /users/1
      # PATCH/PUT /users/1.json
      def update
        
        if @user.update(user_params)
          
          format.json { head :no_content }
        else
          
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
        
      end

      # DELETE /users/1
      # DELETE /users/1.json
      def destroy
        @user.destroy
        
          
        format.json { head :no_content }
        
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_user
          @user = User.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def user_params
          params.require(:user).permit(:name, :email, :password,
                                       :password_confirmation)
        end
    end
  end
end
