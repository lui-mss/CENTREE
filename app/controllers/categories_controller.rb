class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @categories = Category.all
    @icons = [
      "<i class=\"fa-solid fa-hospital\"></i>",
      "<i class=\"fa-solid fa-person-shelter\"></i>",
      "<i class=\"fa-solid fa-scale-balanced\"></i>",
      "<i class=\"fa-solid fa-graduation-cap\"></i>",
      "<i class=\"fa-solid fa-briefcase\"></i>"
    ]
  end
end
