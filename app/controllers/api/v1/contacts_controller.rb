class Api::V1::ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render json: @contacts
  end

  def update
    @contact.update(contact_params)
    if @contact.save
      render json: @contact, status: :accepted
    else
      render json: { errors: @contact.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def contact_params
    params.permit(:first_name, :last_name, :email_address, :phone_number)
  end


end
