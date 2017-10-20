class ContestsController < ApplicationController
  def new
  end

  def create
    render plain: params[:contest].inspect
  end

end
