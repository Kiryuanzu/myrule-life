class RulesController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  private
    def rule_params
    params.require(:rule).permit(:title).merge(user_id: current_user.id)
  end
end
