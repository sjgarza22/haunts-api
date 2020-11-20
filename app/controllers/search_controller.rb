class SearchController < ApplicationController

    skip_before_action :authorized, only: [:create]

    def create
        searchInput = params[:search][:search_input]      
        results = HauntsLocation.all

        puts results
        if results
            render json: HauntsLocationSerializer.new(results).serialized_json, status: :accepted
        else
            render json: { message: 'No locations found' }, status: :not_found
        end
    end

    
end