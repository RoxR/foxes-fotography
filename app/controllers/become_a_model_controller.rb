class BecomeAModelController < ApplicationController
  def index
    @model = Model.new
  end

  def create
    @model = Model.new(become_a_model_params)
    @model.pictures.new(picture_params)

    if @model.save
      puts 'Model saved succesfully'
      redirect_to submitted_path
    else
      puts 'There was an error saving a model'
      redirect_to bcome_a_model_path
    end
  end

  private

  def become_a_model_params
    params.require(:model).permit(
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

  def picture_params
    params.require(:model).permit(
      :picture_1,
      :picture_2,
      :picture_3,
      :picture_preview
    )
  end
end
