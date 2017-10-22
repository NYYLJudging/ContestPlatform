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
    @contest = Contest.new(contest_params)

    @contest.save
    redirect_to @contest
  end

private
  def contest_params
    params.require(:contest).permit(:NameofContest, :ContestLevel, :ContestLocation, :NumberOfPlayers)
  end
end
