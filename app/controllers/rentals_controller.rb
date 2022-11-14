class RentalsController < ApplicationController
    set :default_content_type, 'application/json'

# Add your routes here
get "/rentals" do
    #binding.pry
   serialize(Rental.all.order("id ASC"))
end
  
get "/rentals/:id" do
   serialize(Rental.find_by_id(params[:id]))
end

post '/rentals' do
  rental=Rental.new(params)
  rental.price.to_i
  rental.save
  serialize(Rental.last)
end

patch '/rentals/:id' do
    update_rental=Rental.find_by_id(params[:id])
    update_rental.update(available: params[:available])
     update_rental.to_json
     puts update_rental.to_json  
end

patch '/rentals/update/:id' do
  update_rental=Rental.find_by_id(params[:id])
  update_rental.update(params)
  update_rental.to_json
  puts update_rental.to_json
   
end


delete '/rentals/:id' do
  rental = Rental.find_by_id(params[:id])
  rental.destroy
  rental.to_json
end




  
private

def  serialize(object)
object.to_json(include: :owner)

end

end