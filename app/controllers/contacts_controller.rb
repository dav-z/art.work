class ContactsController < ApplicationController
  def new
    @contact = Contact.new(contacts_params)
    if Contact.new(params[:contact]).deliver
      redirect_to '/', :alert => ["Yeah!"]
   else
   end
  end

  def create
    @contact = Contact.new(contacts_params)
    @contact.request = request
    if @contact.valid?
      @contact.deliver
    else
      render :new
    end
    # if @contact.deliver
    #   flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    # else
    #   flash.now[:error] = 'Cannot send message.'
    #   render :new
    # end
  end

  def contacts_params
    params.require(:contact).permit(:name, :email, :message, :title)
  end

end
