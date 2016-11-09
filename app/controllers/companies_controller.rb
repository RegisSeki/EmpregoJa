class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update]

  def new
    @company = Company.new
  end

  def create
    @company = Company.create(company_params)
    redirect_to company_url(@company)
  end

  def show
  end

  def edit
  end

  def update
    success = @company.update(company_params)

    if success
      redirect_to @company
    else
      flash[:error] = "Não foi possível atualizar a empresa"
      render :edit
    end
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company)
          .permit(:name, :location, :mail, :phone)
  end
end
