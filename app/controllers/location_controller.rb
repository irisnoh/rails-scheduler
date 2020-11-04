class LocationController < ApplicationController
    def index
        @locations = Location.all
        @irisorders = Irisorder.all.order('time asc')
    
      end
    
end
