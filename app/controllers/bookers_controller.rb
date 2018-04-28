class BookersController < ApplicationController

before_action :authenticate_user!

  def index
  	@bookers = Booker.all
  	@booker = Booker.new
  end

  def show
  	@booker = Booker.new
    @bookers = Booker.find(params[:id])
  end

  def new
  	@booker = Booker.new
    @bookers = Booker.all
  end

  def create
  	@booker = Booker.new(booker_params)
    @bookers = Booker.all
    @booker.user_id = current_user.id
    if @booker.save
  	  redirect_to booker_path(@booker)
    else
      render 'new'
    end
  end

  def edit
  	@booker = Booker.find(params[:id])
    if current_user.id == @booker.user_id
      # 何もしない
    else
      redirect_to bookers_path
    end
  end

  def update
  	booker = Booker.find(params[:id])
  	booker.update(booker_params)
  	redirect_to booker_path(booker)
  end

  def destroy
  	@booker = Booker.find(params[:id])
    if current_user.id == @booker.user_id
  	 @booker.destroy
    else
    end
    redirect_to bookers_path
  end

  private
  	def booker_params
  		params.require(:booker).permit(:title, :body, :user_id)
    end

end
