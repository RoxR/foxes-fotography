class AddColumnsToInquiries < ActiveRecord::Migration[5.1]
  def change
    add_column :inquiries, :name, :string
    add_column :inquiries, :email, :string
    add_column :inquiries, :phone, :string
    add_column :inquiries, :facebook_page, :string
    add_column :inquiries, :message, :text
  end
end
