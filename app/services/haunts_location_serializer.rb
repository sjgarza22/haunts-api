class HauntsLocationSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :city, :state, :state_abbrev, :haunt_id, :haunt
    
    belongs_to :haunt
end