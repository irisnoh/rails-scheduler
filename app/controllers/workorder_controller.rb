class WorkorderController < ApplicationController

    def index
        @workorders = Workorder.all.order('id asc')
        # @technicians = Technician.includes(:location).includes(:technician).select("location_id AS location.id")
      end
end
