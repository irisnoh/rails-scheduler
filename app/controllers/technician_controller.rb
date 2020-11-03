class TechnicianController < ApplicationController

    def create
        @technician = Technician.new(tech_params)
        respond_to do |format|
          if @technician.save
            format.html { redirect_to @tech, notice: 'Tech was successfully created.' }
            format.json { render :show, status: :created, location: @tech }
          else
            format.html { render :new }
            format.json { render json: @technician.errors, status: :unprocessable_entity }
          end
        end
      end
end
