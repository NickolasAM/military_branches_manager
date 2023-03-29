class AircraftsController < ApplicationController

  def index
    @aircrafts = Aircraft.all
  end

  def new
  end

  def create 
    aircraft = Aircraft.new({
      name: params[:aircraft][:name],
      fixed_wing: params[:aircraft][:fixed_wing],
      pilot_count: params[:aircraft][:pilot_count]
      })

      aircraft.save!

      redirect_to '/aircrafts'
    #referencing controller(referenecing index action)
  end
  #user Story 4
  def show
    @aircraft = Aircraft.find(params[:id])
  end
end