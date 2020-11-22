class SearchController < ApplicationController

    skip_before_action :authorized, only: [:create]

    def create
        searchInput = search_params[:search_input]
        searchArea = search_params[:search_area]
        # byebug
        results = HauntsLocation.near(searchInput, searchArea)

        if results && results.length > 0
            render json: HauntsLocationSerializer.new(results).serialized_json, status: :accepted
        else
            render json: { message: 'No locations found' }, status: :not_found
        end
    end

    private

    def search_params
        params.require(:search).permit(:search_input, :search_area)
    end
end