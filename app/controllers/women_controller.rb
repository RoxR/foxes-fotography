class WomenController < ApplicationController
  def index
    @women = Model.women
  end
end
