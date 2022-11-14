require "pry"

class OwnersController < ApplicationController
    
set :default_content_type, 'application/json'

post "/signup" do
    owner=Owner.new(params)
    if owner.name.empty?||owner.email.empty? ||owner.tel.blank?||owner.password.empty?||Owner.find_by_email(params[:email])||Owner.find_by_name(params[:name])
       status 401
       { errors: "something went wrong" }.to_json
    else
     owner.save
     owner.to_json
    end 
   end
   