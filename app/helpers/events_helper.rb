module EventsHelper

    def recipient(r)

        r.listing.author.name
        
    end

    def request_status(r)
        if r.accept == true 
            "Accepted"
        elsif r.accept == false
            "Declined"
        else 
            "still pending"
        end
    end
end
