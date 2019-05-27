class RestaurantsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:index], raise: false

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
  end
end
