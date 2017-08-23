class CreaturesController < ApplicationController
  #index should display all creatures
  def index
    # save all existing creatures in db to instance var
    @creatures = Creature.all
  end

  def new

  end

  def create
    creature_submitted = params.require(:creature).permit(:name, :description)

    creature = creature.Create(creature_submitted)

    if creature.save
      redirect_to creatures_path
    end
  end
end
