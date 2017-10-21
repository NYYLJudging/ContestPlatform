class ContestsController < ApplicationController
  def index
    @contests = Contest.all
  end

  def show
    @contest = Contest.find(params[:id])
  end

  def new
  end

  def create
    render plain: params[:contest].inspect
  end

end
