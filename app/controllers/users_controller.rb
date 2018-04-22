class UsersController < ApplicationController

  def index
    @users = User.all
    @booker = Booker.new
  end

  def show
    @user = User.find(params[:id])
    @booker = Booker.new
  end

  def new
    @user = User.new
    @user = User.all
  end

  def create
    user = User.new(users_params)
    user.save
    redirect_to new_user_path(user.id)
  end

  def edit
    @user = User.find(params[:id])
    if current_user == @user
      # 何もしない
    else
      redirect_to user_path(@user)
    end
  end

  def update
    user = User.find(params[:id])
    user.update(users_params)
    redirect_to user_path(user.id)
  end

  private
  	def users_params
  		params.require(:user).permit(:name, :introduction, :image,)
  	end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

end
