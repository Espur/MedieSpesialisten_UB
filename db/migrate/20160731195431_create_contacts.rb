class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :comments
      t.string :phone
      t.string :address
      t.string :postal_code
      t.string :postal_place
      
      t.timestamps
    end
  end
end
