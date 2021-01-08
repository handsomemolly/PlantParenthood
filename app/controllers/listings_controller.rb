class ListingsController < ApplicationController
    
    def index
      @listings = Listing.all
      if params[:sort]
        case params[:sort]
        when "pay"
          @listings = Listing.sort_by_compensation
        when "days"
          @listings = Listing.sort_by_duration
        when "city"
          @listings = Listing.filter_by_location(@user)
        end
      end
    end

    def show
      @listing = Listing.find(params[:id])
      @recommended_sitters = @listing.recommend_sitters
    end

    def new
        @listing = Listing.new
        @cities = City.ordered
        @parents = User.parents
    end

    def create
      @listing = Listing.create(listing_params)
      redirect_to @listing
    end

    def book
      @listing = Listing.find(params[:id])
      Booking.create(listing_id: @listing.id, sitter_id: @user.id)
      redirect_to @user
    end

    def index_compensation
      @listings = Listing.sort_by_compensation
    end

    def index_duration
      @listings = Listing.sort_by_duration
    end

    def index_my_city
      @listings = Listing.filter_by_location(@user)
    end

    private

    def listing_params
        params.require(:listing).permit(:parent_id, :city_id, :length_of_stay, :compensation)
    end




end
