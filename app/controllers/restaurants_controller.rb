class RestaurantsController < ApplicationController
  # rails filters
  before_action :set_restaurant, only: %i[ show edit update destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new # given to the form
  end

  def create
    @restaurant = Restaurant.new(strong_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant.id) # redirect to the id
  end

  def edit
  end

  def update
    @restaurant.update(strong_params)
    redirect_to restaurant_path(@restaurant) # redirect to the restaurant instance
  end

  def destroy
    @restaurant.destroy # AR method Destroy
    redirect_to restaurants_path # redirect to the index page
  end

  private

  def set_restaurant
    id = params[:id]
    @restaurant = Restaurant.find(id)
  end

  def strong_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
