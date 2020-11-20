class HauntSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :name, :description, :haunts_location
    
    has_one :haunts_location
end