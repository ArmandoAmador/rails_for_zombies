# Rotting Zombie Controller
class RottingZombiesController < ApplicationController
  def index
    @rotting_zombies = Zombie.rotting
  end
end
