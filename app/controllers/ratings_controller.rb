class RatingsController < ApplicationController

    def new
        rating = Rating.new
    end

    def create
        rating = Rating.create(rating_params)

        if rating.valid?
            render json: RatingSerializer.new(rating).serialized_json, status: :accepted
        else
            render json: { message: 'rating not created' }, status: :not_acceptable
        end
    end
    
    def show
        rating = Rating.find_by_id(params['id'])
        
        if rating
            render json: RatingSerializer.new(rating).serialized_json, status: :found
        else
            render json: { message: 'rating not found' }, status: :not_found
        end
    end

    def update

    end

    private

    def rating_params
        params.require(:rating).permit(:rating, :haunt_id, :user_id)
    end
end