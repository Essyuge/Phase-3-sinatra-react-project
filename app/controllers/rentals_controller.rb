class RentalsController < ApplicationController
    set :default_content_type, 'application/json'

    get "/rentals" do
        #binding.pry
       serialize(Rental.all.order("id ASC"))
    end
    
    get "/rentals/:id" do
        serialize(Rental.find_by_id(params[:id]))
     end