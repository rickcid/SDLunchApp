class MenusController < ApplicationController

  def index
    @meals = Meals.all
    @meals_by_date = @meals.group_by(&:meal_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def new
    @meals = Meals.new(:meal_date, :description, :drink)
  end

end