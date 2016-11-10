class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(params.require(:category).permit(:name))
    redirect_to @category
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(params.require(:category).permit(:name))
    redirect_to @category
  end
end
