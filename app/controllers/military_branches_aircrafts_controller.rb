#user story 5
class MilitaryBranchesAircraftsController < ApplicationController

  def index
    @military_branch = MilitaryBranch.find(params[:id])
    @aircrafts = @military_branch.aircrafts
  end


end