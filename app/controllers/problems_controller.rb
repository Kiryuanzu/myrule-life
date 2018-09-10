class ProblemsController < ApplicationController
  def index
  end

  def new
    @ploblem = Problem.new
  end

  def create
  end

  def show
  end

  def about
  end

  private

  def problem_params
    params.require(:problem).permit(:title, :private).merge(user_id: current_user.id)
  end
end
