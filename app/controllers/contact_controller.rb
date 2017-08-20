class ContactController < ApplicationController

  def index
  end

  def create
    begin 
      Inquiry.create do |o|
        o.name = params[:name]
        o.email = params[:_replyto]
        o.phone = params[:phone]
        o.facebook = params[:facebook]
        o.message = params[:message]
      end
    rescue
    ensure
      head :no_content
    end
  end

end
