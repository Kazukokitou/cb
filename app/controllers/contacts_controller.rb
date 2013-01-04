class ContactsController < ApplicationController
  def show
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      ContactNotifier.create(@contact).deliver
    else
      respond_to do |f|
        f.html { render action: "show" }
      end
    end
  end
end
