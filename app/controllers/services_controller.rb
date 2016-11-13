class ServicesController < ApplicationController
    
    def index
        @services = Service.all
        @website_service = Service.find(1)
    end
    
    def show
        
        @website_service = Service.find(1)
    end
end

# Index lists all avaible services, while show shows the current service by its :id in database 