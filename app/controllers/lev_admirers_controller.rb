class LevAdmirersController < ApplicationController
  def index
    @lev_admirers = LevAdmirer.all
  end

  def new
    @lev_admirer = LevAdmirer.new
  end

  def create
    @lev_admirer = LevAdmirer.new(lev_admirer_params)

    if @lev_admirer.save
      redirect_to action: "index"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def lev_admirer_params
    params.require(:lev_admirer).permit(:first_name, :last_name, :phone_number)
  end
end
