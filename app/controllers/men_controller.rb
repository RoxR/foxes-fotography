class MenController < ApplicationController
  def index
    @men = Model.men
  end
end
