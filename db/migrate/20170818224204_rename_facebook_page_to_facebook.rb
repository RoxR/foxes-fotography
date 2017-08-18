class RenameFacebookPageToFacebook < ActiveRecord::Migration[5.1]
  def change
    rename_column :inquiries, :facebook_page, :facebook
  end
end
