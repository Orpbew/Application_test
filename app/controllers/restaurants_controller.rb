class RestaurantsController < ApplicationController
    #before_action :set_restaurant, only: [:show, :edit, :update, :destroy] 
    
    before_action :set_restaurant, only: %i[show edit update destroy] # => fait la même chose que la ligne 2
    
    def top
        #@restaurants = Restaurant.where(note: [4,5])   # ici on choisi les notes de façon exclusives, 'égale à 4 ou à 5'
        @restaurants = Restaurant.where("note > 2")     # ici on crée une condition 'supérieure à 2'
    end
    
    def index
        @restaurants = Restaurant.all
    end

    def show 
    end

    def new
        @restaurant = Restaurant.new 
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        @restaurant.save
        redirect_to restaurant_path(@restaurant), notice: "Restaurant was successfully created."
    end
      
    def edit
    end

    def update
        @restaurant.update(restaurant_params)
        redirect_to restaurant_path(@restaurant)
      end

      def destroy
        @restaurant.destroy
        redirect_to restaurants_path, status: :see_other
      end  

    private
      
    def restaurant_params
        params.require(:restaurant).permit(:nom, :adresse, :note)
    end

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end

end
