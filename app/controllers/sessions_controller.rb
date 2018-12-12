class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:create]

  def new
  end

  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
    else
      redirect_to "/login"
    end

  end

  def destroy
    session.delete :name
  
  end

  private


end
