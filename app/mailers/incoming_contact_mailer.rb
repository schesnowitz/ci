class IncomingContactMailer < ApplicationMailer
  

    def new_incoming_contact(incoming_contact)
      @incoming_contact = incoming_contact

  
      mail to: 's.chesnowitz@gmail.com',
      subject: "New Incoming Contact" 
    end
  end