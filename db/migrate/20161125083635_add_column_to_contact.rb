class AddColumnToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :phone, :string
    add_column :contacts, :address, :string
    add_column :contacts, :postal_code, :string
    add_column :contacts, :postal_place, :string
  end
end
