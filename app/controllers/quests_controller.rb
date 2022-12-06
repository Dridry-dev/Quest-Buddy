class QuestsController < ApplicationController
  def show
    prototype_quest = Quest.find(params[:id])
    @quest = Quest.where(name: prototype_quest.name).order(:rank).reject { |quest| quest.finish_for(current_user) }.first
    unless @quest
      redirect_to prototype_quest.category
    end
  end
end
