class UserinfosController < ApplicationController
  before_action :set_userinfo, only: [:show,:edit,:update]

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @userinfo.update(userinfo_params)
        format.html {redirect_to root_path ,notice:'変更しました.' }
      else
        format.html {render :edit}
      end
    end
  end

  def new
    @userinfo = Userinfo.new
  end

  def create
    @userinfo = Userinfo.new(userinfo_params)
    @userinfo.user_id = current_user.id
    respond_to do|format|
      if @userinfo.save()
        format.html {redirect_to root_path,notice:'作成されました.'}
      else
        format.html {redirect_to :new}
      end
    end
  end
  
  private
  def set_userinfo
    @userinfo = Userinfo.find(params[:id])
  end
  def userinfo_params
    params.require(:userinfo).permit(:name,:profile)
  end
end

