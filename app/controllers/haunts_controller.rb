class HauntsController < ApplicatonControler
    def index
        haunts = Haunt.all
        render json: HauntSerializer.new(haunts).to_serialized_json
    end

    def create

    end

    def show

    end

    def destroy

    end

    private

    def haunt_params

    end
end