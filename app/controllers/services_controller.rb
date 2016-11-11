class ServicesController< ApplicationController
    
    def index
        @services = Service.all
    end
    
    def show
        @services = Service.find( params[:id] )
    end
end

# Index lists all avaible services, while show shows the current service by its :id in database 