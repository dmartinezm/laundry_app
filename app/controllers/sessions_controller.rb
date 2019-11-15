class SessionsController < ApplicationController
    skip_before_action :authorized_customer, only: [:new_customer, :create_customer]            

    #skip_before_action :authorized_laundromat, only: [:new, :create]

    def new_customer
        # render :new
        render :new_customer
    end

    def new_laundromat
        render :new_laundromat
    end

    def create_customer
        # find the user with their username
        customer = Customer.find_by(email: params[:session][:email])
        # compare the password to something in the database
        if customer && customer.authenticate(params[:session][:password])
        # if the password is correct, save user_id to session
            session[:customer_id] = customer.id
            redirect_to customer
        else
            #byebug
            flash[:errors] = "Does not exist"
            redirect_to customer_login_path
        end
    end

    def create_laundromat
        # find the user with their username
        customer = Customer.find_by(email: params[:session][:email])
        # compare the password to something in the database
        if customer && customer.authenticate(params[:session][:password])
        # if the password is correct, save user_id to session
            session[:customer_id] = customer.id
            redirect_to customer
        else
            flash[:errors] = customer.errors.full_messages
            redirect_to login_path
        end
    end


    def destroy_customer
        session.delete(:customer_id)
        redirect_to customer_login_path
    end

    def destroy_laundromat
        session.delete(:laundromat_id)
        redirect_to laundromat_login_path
    end


end