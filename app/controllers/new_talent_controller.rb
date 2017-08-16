class NewTalentController < ApplicationController
  def index
    @new = Model.new_talent
  end
end
