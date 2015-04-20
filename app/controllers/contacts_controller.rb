class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end


  def new
  end

  def create
    @contact = Contact.new(:first_name => request["first_name"], :last_name => request["last_name"],
                           :phone_number => request['phone_number'], :address => request['address'],
                           :country => request['country'] )
    if @contact.save
      redirect_to root_path
    end
  end

end
