class ContactMailer < ActionMailer::Base

    default to: 'mediespesialisten@gmail.com'
    
    def contact_email(name, email, phone, address, postal_place, postal_code, body)
        @name = name
        @email = email
        @phone = phone
        @address = address
        @postal_place = postal_place
        @postal_code = postal_code
        @body = body
        
        mail(from: email, subject: 'Bestilling / melding fra Mediespesialisten.no')
    end
end