class AdminController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'
  
  def index
  end

  def new_model
    @model = Model.new
  end

  def create_model
    
  end

  def model_applicants
    @models = Model.unconfirmed
  end

  def new_photographer
    #@model = Photographer.new
  end
end
