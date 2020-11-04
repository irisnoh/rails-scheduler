class TechnicianController < ApplicationController
    def index
      @technicians = Technician.all
    end
end
