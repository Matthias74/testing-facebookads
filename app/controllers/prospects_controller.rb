class ProspectsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:new, :create, :show]

  def new
    @prospect = Prospect.new
  end

  def create
    @prospect = Prospect.new(prospect_params)
    if @prospect.valid?
      @prospect.save
      redirect_to show
    else
      render :new
    end
  end

  def show
    @prospect = Prospect.last
  end

  private

  def prospect_params
    params.require(:prospect).permit(:email)
  end
end
