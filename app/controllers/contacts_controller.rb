class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    
    if @contact.save
      name = params[:contact][:name]
      email = params[:contact][:email]
      phone = params[:contact][:phone]
      address = params[:contact][:address]
      postal_code = params[:contact][:postal_code]
      postal_place = params[:contact][:postal_place]
      body = params[:contact][:comments]
      
      
      ContactMailer.contact_email(name, email, phone, address, postal_code, postal_place, body).deliver
      
      flash[:success] = 'Din melding/bestilling er sendt. Du vil få svar snart.'
      redirect_to new_contact_path
    else
      flash[:danger] = 'Feilmelding. Vennligst prøv igjen.'
      redirect_to new_contact_path
    end
  end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :address, :postal_code, :postal_place, :body)
    end
end