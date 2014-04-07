class SessionController < ApplicationController

  def new 
  end

  def create
    user = User.find_by(email: params[:email])

    if user && ( user.authenticate(params[:password]) ) && user.type == "Student"
      session[:user_id] = user.id
      redirect_to ( '/' )

    elsif user && ( user.authenticate(params[:password]) ) && user.type == "Teacher" 
      session[:user_id] = user.id
      redirect_to ( '/' )

    elsif user && ( user.authenticate(params[:password]) ) 
      session[:user_id] = user.id
      redirect_to ( '/' )
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end