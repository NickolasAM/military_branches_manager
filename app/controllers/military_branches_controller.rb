class MilitaryBranchesController < ApplicationController

  def index
    @military_branches = MilitaryBranch.all.to_a
  end

  def new
  end

  def create 
    military_branch = MilitaryBranch.new({
      name: params[:military_branch][:name],
      sea_based: params[:military_branch][:sea_based],
      year_established: params[:military_branch][:year_established]
      })

      military_branch.save!

      redirect_to '/military_branches'
    #referencing controller(refernecing index action)
  end
end