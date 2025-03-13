desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do

  if Rails.env.development?
    City.destroy_all
    Studio.destroy_all
    User.destroy_all
  end

  require "faker"
  cities = ["Chicago", "New York City", "Austin", "Dallas"]
  bool = ["yes", "no"]

  cities.each do |a_city|
    city = City.new
    city.name = "#{a_city}"
    #state
      if a_city == "Chicago"
        city.state = "Illinois"
      elsif a_city == "New York City"
        city.state = "New York"
      else
        city.state = "Texas"
      end
    city.save
  end
  p "Added #{City.count} cities"

  10.times do 
    studio = Studio.new
    studio.name = Faker::Restaurant.name
    the_city = City.all.sample
    studio.address = "#{Faker::Address.street_address}, #{the_city.name}, #{the_city.state}"
    studio.phone = Faker::PhoneNumber.phone_number
    studio.shop_minimum = rand(50..300).to_f
    studio.walk_in = bool.sample
    studio.city_id = the_city.id
    studio.save
  end
  p "Added #{Studio.count} studios"

  20.times do
    user = User.new
    user.username = Faker::Internet.username
    user.password = "password"
    user.email = Faker::Internet.email(domain: 'example.com')
    user.save
  end
  p "Added #{User.count} Users"


end
