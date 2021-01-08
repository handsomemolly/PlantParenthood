class ListingsController < ApplicationController
    
    def index
        @listings = Listing.all
    end

    def show
      @listing = Listing.find(params[:id])
    end

    def new
        @listing = Listing.new
        @parents = User.parents
    end

    def create
      @listing = Listing.create(listing_params)
    
      redirect_to @listing
    end

    def book
      @listing = Listing.find(params[:id])
      @booking = Booking.create(listing_id: @listing.id, sitter_id: @user.id)
      if @booking.valid?
      redirect_to @user
      else  
        flash[:errors] = @booking.errors.full_messages
        redirect_to @listing
      end
    end

    private

    def listing_params
        params.require(:listing).permit(:parent_id, :length_of_stay, :location, :compensation)
    end




end
