class ListingsController < ApplicationController
    
    def index
        @listings = Listing.all
    end

    def show
    end

    def new
        @listing = Listing.new
    end

    def create
    end



    private

    def listing_params
        params.require(:listing).permit(:user_id, :length_of_stay, :location)
    end




end
