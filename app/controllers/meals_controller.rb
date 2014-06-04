class MealsController < ApplicationController

  def index
    @meal = Meal.all
    #@meals_by_date = @meals.group_by(&:meal_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end


end