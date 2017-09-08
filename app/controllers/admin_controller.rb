class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :set_model, only: [:update_model, :edit_model, :destroy_model]

  layout 'admin'

  def index
  end

  def edit_model
  end

  def update_model
    if @model.pictures.update(picture_params) && @model.update(model_form_params)
      puts 'Model updated succesfully'
      redirect_to model_edit_path
    else
      puts 'There was an error saving a model'
      redirect_to model_edit_path
    end
  end

  def new_model
    @model = Model.new
  end

  def destroy_model
    @model.destroy!
  end

  def create
    @model = Model.new(model_form_params)
    @model.pictures.new(picture_params)

    if @model.save
      puts 'Model saved succesfully'
      redirect_to model_path(@model)
    else
      puts 'There was an error saving a model'
      redirect_to become_a_model_path
    end
  end

  def model_applicants
    @unconfirmed = Model.unconfirmed
  end

  def new_photographer
    #@model = Photographer.new
  end

  private

  def set_model
    @model = Model.find(params[:id])
  end

  def model_form_params
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
