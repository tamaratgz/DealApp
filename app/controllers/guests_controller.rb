class GuestsController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def create
    session[:name] = params[:guest][:name]
  end
end
