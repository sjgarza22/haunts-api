class HauntSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :name, :description, :ratings
    
    has_one :haunts_location
end