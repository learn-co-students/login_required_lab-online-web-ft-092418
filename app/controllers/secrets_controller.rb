class SecretsController < ApplicationController
    before_action :require_login

    def index
        @user = current_user
    end

    def show
        @user = current_user
    end

    private
        def require_login
            redirect_to root_path unless session.include? :name
        end
end