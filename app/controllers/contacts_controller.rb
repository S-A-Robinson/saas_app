class ContactsController < ApplicationController
   def new
      #A new contact object will be created
      @contact = Contact.new
   end
   
   def create
      @contact = Contact.new(contact_params)
      if @contact.save
         redirect_to new_contact_path, notice: "Message sent."
      else
         redirect_to new_contact_path, notice: "Error sending message, please try again."
      end
   end
   
   private
      def contact_params
         params.require(:contact).permit(:name, :email, :comments)
      end
end