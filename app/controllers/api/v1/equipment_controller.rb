module Api
  module V1

    class EquipmentController < ApplicationController
      

      #before_action :set_equipment, only: [:show, :edit, :update, :destroy]
      before_filter :restrict_access
      before_filter :authenticate_user

      respond_to :json
      # GET /equipment
      # GET /equipment.json
      def index
        @e = []
        @equipment = Equipment.all
        @equipment = @equipment.order( "created_at DESC")
        @equipment[0..2].each do |obj|
            @e << obj
        end
        render_success(:Equipment, @equipment[0..2])
      end

      # GET /equipment/1
      # GET /equipment/1.json
      def show
      end

      # GET /equipment/new
      def new
        @equipment = Equipment.new
      end

      # GET /equipment/1/edit
      def edit
      end

      # POST /equipment
      # POST /equipment.json
      def create
        @equipment = Equipment.new(equipment_params)

        
        if @equipment.save
          render_success(:Equipment, @equipment)
          #format.json { render action: 'show', status: :created, location: @equipment }
        else
          render_failure
          #format.json { render json: @equipment.errors, status: :unprocessable_entity }
        end
        
      end

      # PATCH/PUT /equipment/1
      # PATCH/PUT /equipment/1.json
      def update
        
        if @equipment.update(equipment_params)
          
          format.json { head :no_content }
        else
          
          format.json { render json: @equipment.errors, status: :unprocessable_entity }
        end
        
      end

      # DELETE /equipment/1
      # DELETE /equipment/1.json
      def destroy
        @equipment.destroy
        
          
        format.json { head :no_content }
        
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_equipment
          @equipment = Equipment.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def equipment_params
          params.require(:equipment).permit(:device_id)
        end
    end
  end
end

