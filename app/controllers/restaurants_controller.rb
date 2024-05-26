class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end

    def show
        @restaurant = Restaurant.find(params[:id])    
    end

    def new
        @restaurant = Restaurant.new # Needed to instantiate the form_with
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        @restaurant.save
        redirect_to restaurants_path(@restaurant)
      end
      
      private
      
      def restaurant_params
        params.require(:restaurant).permit(:nom, :adresse, :note)
      end
end
