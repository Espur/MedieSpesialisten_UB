class PagesController < ApplicationController
  def home
    @website_service = Service.find(1)
    
  end
  
  def category
  end
  
  def services
    @website_service = Service.find(1)
  end
  
end