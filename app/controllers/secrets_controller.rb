class SecretsController < ApplicationController
  def show
    redirect_to sessions_new_path if !session[:name]
  end
end
