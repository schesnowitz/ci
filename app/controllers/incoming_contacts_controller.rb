class IncomingContactsController < ApplicationController

  def new
    @incoming_contact = IncomingContact.new
  end 

  def create
    @incoming_contact = IncomingContact.new(incoming_contact_params)

    if @incoming_contact.save
      IncomingContactMailer.new_incoming_contact(@incoming_contact).deliver_later
      flash[:success] = "Your message has been sent."
      redirect_to root_path
    else
      flash[:danger] = "Sorry, there was a problem! " + @incoming_contact.errors.full_messages.to_sentence 
      redirect_to root_path
    end
  end


  private

    def incoming_contact_params
      params.require(:incoming_contact).permit(:email, :name, :phone, :message)
    end
end