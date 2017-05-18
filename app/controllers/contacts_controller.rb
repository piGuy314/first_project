class ContactsController < ApplicationController
  # GET request to /contact-us
  # Show new contact form
  def new
    @contact = Contact.new    
  end
<<<<<<< HEAD
  
=======
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      name = params[:contact][:name]
      email = params[:contact][:email]
      body = params[:contact][:comments]
      ContactMailer.contact_email(name, email, body).deliver
      flash[:success] = "Message sent."
      redirect_to new_contact_path
    else
>>>>>>> contact_form
  # POST request /contacts
  def create
    # Mass assignment of form fields into Contact object
    @contact = Contact.new(contact_params)
    # Save the Contact object to the database
  if @contact.save
      # Store form fields via parameters, into variables
      name = params[:contact][:name]
      email = params[:contact][:email]
      body = params[:contact][:comments]
      # Plug variables into Contact mailer 
      # email method and send email
       ContactMailer.contact_email(name, email, body).deliver
      # Store success message in flash hash 
      # and redirect to the new action
      flash[:success] = "Message sent."
      redirect_to new_contact_path
  else
      # If Contact object doesn't save
      # store errors in flash hash, 
      # and redirect to the new action
      flash[:danger] = @contact.errors.full_messages.join(", ")
      redirect_to new_contact_path
  end
  private
<<<<<<< HEAD
  # To collect data from form, we need to use
  # strong parameters and whitelist the form fields
=======
>>>>>>> contact_form
    def contact_params
      params.require(:contact).permit(:name, :email, :comments)
    end
end
