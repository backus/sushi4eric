class MealController < ApplicationController
  def index
	@meal = Meal.find_by_uri params[:uri]
  end
end
