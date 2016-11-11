class Service < ActiveRecord::Base
    has_one :name
    has_one :price
end