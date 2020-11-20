class HauntsLocationsController < ApplicationController
    skip_before_action :authorized, only: [:show]
    def show

    end

    def update
        
    end

    private

    def haunts_location_params
        params(:haunts_location)
    end
end