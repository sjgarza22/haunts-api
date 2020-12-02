class RatingsController < ApplicationController

    def index
        ratings = Rating.where(haunt_id: params[:haunt_id], user_id: current_user.id)

        if ratings
            render json: RatingSerializer.new(ratings).serialized_json, status: :accepted
        else
            render json: { message: 'ratings not found' }, status: :not_acceptable
        end
    end

    def create
        rating = Rating.create(rating: rating_params[:rating], haunt_id: rating_params[:haunt_id], user_id: current_user.id)
        # byebug
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
        rating = Rating.find_by_id(rating_params['id'])
        rating.update(rating: rating_params[:rating])

        if rating.valid?
            render json: RatingSerializer.new(rating).serialized_json, status: :accepted
        else
            render json: { message: 'rating not updated' }, status: :not_acceptable
        end
    end

    def destroy
        rating = Rating.find_by_id(params['id'])
        # byebug
        if rating.destroy
            render json: RatingSerializer.new(rating).serialized_json, status: :accepted
        else
            render json: { message: 'rating could not be deleted; could not be found.' }, status: :not_acceptable
        end
    end

    private

    def rating_params
        params.require(:rating).permit(:id, :rating, :haunt_id)
    end

    def ratings_total(haunt_id)
        ratings = Rating.find_by_id(haunt_id: haunt_id)
        sum = 0
        
        ratings.each {|rating| sum+=rating}

        return (sum / ratings.length)
    end
end