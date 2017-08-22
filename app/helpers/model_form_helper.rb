module ModelFormHelper
  def model_image_tag(model, which)
    src = model.pictures.empty? ? '' : model.picture(which)
    image_tag(src)
  end
end