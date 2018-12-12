class SessionsController < ApplicationController

def index
  if logged_in?
    @user = current_user
  else
    redirect_to root_path
  end
end

def new
end

def create
  if params[:name].nil? || params[:name].empty?
    redirect_to '/sessions/new'
  else
    session[:name] = params[:name]
    redirect_to '/'
  end
end



def destroy
  if session[:name]
    session[:name] = nil
  end
  redirect_to '/'
end


end
