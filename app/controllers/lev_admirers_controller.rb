class LevAdmirersController < ApplicationController
  def index
    @lev_admirers = LevAdmirer.all
  end
end
