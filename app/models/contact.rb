class Contact < ActiveRecord::Base
    validates :name, presence: true
    validates :email, presence: true
    validates :phone, presence: true
    validates :address, presence: true
    validates :postal_code, presence: true
    validates :postal_place, presence: true
    validates :comments, presence: true
    validates :body, presence: true
end