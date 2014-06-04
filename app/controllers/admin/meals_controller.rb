class Admin::MealsController < AdminsController

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.create(meal_params)
    if @meal.save
      flash[:success] = "You have successfully added the meal."
    else
      flash[:error] = "You cannot add this meal. Please check the errors."
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:meal_date, :description, :drink)
  end
end