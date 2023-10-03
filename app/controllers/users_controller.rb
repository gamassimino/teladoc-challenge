class UsersController < ApplicationController
  before_action :find_user, only: :show
  
  def show
  end

  # def other_1
  # end

  # def other_2
  # end

  # def other_3
  # end

  private

  def find_user
    begin
      @user = User.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      redirect_to '/'
    end
  end
end
