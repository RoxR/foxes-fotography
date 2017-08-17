class BecomeAModelController < ApplicationController
  def index
  end

  def create
  	@model = Model.new(become_a_model_params)
  	if @model.save
  		# Flash not implemented yet, logging into console
  		puts 'Model saved succesfully'
  		redirect_to submitted_path
  	else
  		puts 'There was an error saving a model'
  		redirect_to bcome_a_model_path
  	end
  end

  private

  def become_a_model_params
  	params.permit(
  		:name,
      :email,
      :phone_number, 
  		:gender,
  		:height, 
  		:weight, 
  		:bust, 
  		:waist, 
  		:hips, 
  		:cup, 
  		:dress,
  		:shoe,
  		:hair_length,
  		:eye_color,
  		:ethnicity, 
  		:skin_color,
  		:nudes,
  		:tattoos,
  		:piercings, 
  		:experience,
  		:compensation,
  		:country,
      :hair_color
  	)
  end


end
