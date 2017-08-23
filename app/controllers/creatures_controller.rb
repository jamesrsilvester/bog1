class CreaturesController < ApplicationController
  #index should display all creatures
  def index
    # save all existing creatures in db to instance var
    @creatures = Creature.all
  end
end
