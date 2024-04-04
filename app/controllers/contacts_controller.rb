class ContactsController < ApplicationController
    def index
        @contacts = Contact.all
    end

    def contact_list
        @contacts = Contact.where("lower(name) LIKE ? OR contact_number LIKE ?", "%"+"#{params[:query]}".downcase+"%", "%"+"#{params[:query]}".downcase+"%")
        render 'index'
    end

    def show
        @contact = Contact.find_by_id(params[:id])
        respond_to do |format|
            format.js {}
        end
        render :file, {}
    end
end
