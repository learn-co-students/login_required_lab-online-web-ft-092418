class SessionsController < ApplicationController
  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to '/sessions/welcome'
    else
      redirect_to '/sessions/new'
    end
  end

  def new

  end

  def welcome

  end

  def destroy
    if session[:name]
      session.delete :name 
    end
    redirect_to "/sessions/new"
  end
end
