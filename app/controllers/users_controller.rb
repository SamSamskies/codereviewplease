class UsersController < ApplicationController
  before_action :validate_user, only: [:show]

  def show
    @requests = Request.where(user_id: params[:id])
    p @requests
  end

  private

  def validate_user
    redirect_to requests_path if current_user.id != params[:id].to_i
  end
end
