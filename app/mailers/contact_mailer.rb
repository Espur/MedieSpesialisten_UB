class ContactMailer < ActionMailer::Base

    default to: 'espen.taftoe@gmail.com'
    
    def contact_email(name, email, phone, address, postal_place, postal_code, body)
        @name = name
        @email = email
        @phone = phone
        @address = address
        @postal_place = postal_place
        @postal_code = postal_code
        @body = body
        
        mail(from: name, email, subject: 'Bestilling / melding fra Mediespesialisten.no')
    end
end