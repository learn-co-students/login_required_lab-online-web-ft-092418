class SecretsController < ApplicationController
  before_action :show, :check_login
  
  def show
  end

  private

  def check_login
    redirect_to sessions_new_path if !current_user
  end
end
