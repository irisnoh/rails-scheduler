class WorkorderController < ApplicationController

    def index
        @workorders = Workorder.all
        # @technicians = Technician.all

        #@technicians = Technician.includes(:location).includes(:technician).select("location_id AS location.id")
      end
end

