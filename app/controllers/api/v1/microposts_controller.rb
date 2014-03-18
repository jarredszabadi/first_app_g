module Api
  module V1
    class MicropostsController < ApplicationController
      before_action :set_micropost, only: [:show, :edit, :update, :destroy]
      respond_to :json
      # GET /microposts
      # GET /microposts.json
      def index
        @microposts = Micropost.all
      end

      # GET /microposts/1
      # GET /microposts/1.json
      def show
      end

      # GET /microposts/new
      def new
        @micropost = Micropost.new
      end

      # GET /microposts/1/edit
      def edit
      end

      # POST /microposts
      # POST /microposts.json
      def create
        @micropost = Micropost.new(micropost_params)

        
        if @micropost.save
          
          format.json { render action: 'show', status: :created, location: @micropost }
        else
          
          format.json { render json: @micropost.errors, status: :unprocessable_entity }
        end
        
      end

      # PATCH/PUT /microposts/1
      # PATCH/PUT /microposts/1.json
      def update
        
        if @micropost.update(micropost_params)
          
          format.json { head :no_content }
        else
          
          format.json { render json: @micropost.errors, status: :unprocessable_entity }
        end
        
      end

      # DELETE /microposts/1
      # DELETE /microposts/1.json
      def destroy
        @micropost.destroy
      
        
        format.json { head :no_content }
       
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_micropost
          @micropost = Micropost.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def micropost_params
          params.require(:micropost).permit(:content, :user_id)
        end
    end
  end
end
