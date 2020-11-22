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
        rating = Rating.find_by_id(rating_params['id'])
        
        if rating
            render json: RatingSerializer.new(rating).serialized_json, status: :found
        else
            render json: { message: 'rating not found' }, status: :not_found
        end
    end

    def update
        newRating = Rating.find_by_id(rating_params['id'])

        if newRating && check_new_rating(rating_params['rating'])
            newRating.rating = rating_params['rating']
            render json: RatingSerializer.new(newRating).serialized_json, status: :update
        else
            render json: { message: 'rating not updated' }, status: :not_updated
        end
    end

    private

    def rating_params
        params.require(:rating).permit(:id, :rating, :haunt_id, :user_id)
    end

    def check_new_rating(rating)
        if rating >= 1 && rating <= 5
            return true
        else
            return false
        end
    end
end