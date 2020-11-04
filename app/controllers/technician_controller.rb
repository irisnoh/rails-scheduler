class TechnicianController < ApplicationController
    def index
        # @workorders = Workorder.joins(:location, :technicians)
        #@technician = Technician.all

        @technician = Technician.joins(:workorders).select("technician.id AS technician_id")
      end
end
