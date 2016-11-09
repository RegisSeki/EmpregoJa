class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update]

  def new
    @company = Company.new
  end

  def create
    @company = Company.create(category_params)
    redirect_to company_url(@company)
  end

  def show
  end

  def edit
  end

  def update
    @company.update(category_params)

    redirect_to @company
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def category_params
    params.require(:company)
          .permit(:name, :location, :mail, :phone)
  end
end
