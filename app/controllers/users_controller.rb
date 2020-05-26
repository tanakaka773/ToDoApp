class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    if user_signed_in?
    # if current_user.id!=nil
      @user = User.find(current_user.id)
    end
  end
end

