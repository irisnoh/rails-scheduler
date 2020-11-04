class WorkorderController < ApplicationController

    def index
        @workorders = Workorder.all
    end
end

