module TripsHelper
    def mountain_id_field(trip)
        if trip.mountain.nil?
            select_tag "trip[mountain_id]", options_from_collection_for_select(Mountain.all, :id, :name), {include_blank: "Select a Mountain"}
        else
            hidden_field_tag "trip[mountain_id]", trip.mountain_id
        end
    end

end
