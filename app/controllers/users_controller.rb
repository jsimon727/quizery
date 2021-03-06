class UsersController < ApplicationController
  before_action :load_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, :authorize, only: [:edit, :update, :show]
  
  def index
  end

  def new
  end

  def show
    @dataset = []
    @quiznames = []
  end

  def create
    @user = User.new
    @user.email = params["email"]
    @user.first_name = params["first_name"]
    @user.last_name = params["last_name"]
    @user.password = params["password"]
    @user.password_confirmation = params["password_confirmation"]
    @user.type = params["type"]

    if @user.save
      session[:user_id] = @user.id
      redirect_to :back
    else
      render status: 400, nothing:true
    end

  end


  def student
    @student = User.find(session[:user_id])
  end

  def load_user
    return @user = User.find(params[:id])
  end 

  def authenticate
    unless logged_in?
      redirect_to root_path
    end
  end

  def authorize
    unless current_user == @user
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
  end

end