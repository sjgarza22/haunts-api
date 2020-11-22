class RatingSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :haunt_id, :user_id
    
    belongs_to :haunt
    belongs_to :user
end