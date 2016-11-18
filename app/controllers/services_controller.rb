class ServicesController< ApplicationController
    
    def index
        @web_service = Service.find(1)
        @grafisk_service = Service.find(2)
        @foto_service = Service.find(3)
    end
    
    def show
        
    end
    
    def create
    end
end