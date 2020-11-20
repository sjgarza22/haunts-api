class HauntsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        haunts = Haunt.all
        render json: HauntSerializer.new(haunts).serialized_json
    end

    def new
        haunt = Haunt.new
    end

    def create
        haunt = Haunt.create(name: haunt_params[:name], description: haunt_params[:description])
        haunt.create_haunts_location(city: haunt_params[:city], state: haunt_params[:state])

        if haunt.valid?
            render json: HauntSerializer.new(haunt, haunt.haunts_location).serialized_json, status: :accepted
        else
            render json: { message: 'Could not save new Haunt' }, status: :unaccepted
        end
    end

    def show
        haunt = Haunt.find_by_id(params['id'])

        if haunt
            render json: HauntSerializer.new(haunt).serialized_json, status: :accepted
        else
            render json: { message: 'Could not find Haunt' }, status: :not_found
        end
    end

    def destroy
        haunt = Haunt.find_by_id(params['id'])

        if haunt.destroy
            render json: HauntSerializer.new(haunt, haunts_location).serialized_json, status: :accepted
        else
            render json: { message: 'Could not find Haunt' }, status: :not_found
        end
    end

    private

    def haunt_params
        params.require(:haunts).permit(:name, :description, :city, :state, :address)
    end
end