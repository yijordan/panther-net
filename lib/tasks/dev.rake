desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do

  if Rails.env.development?
    User.destroy_all
  end

  require "faker"
  cities = ["Chicago", "New York City", "Austin", "Dallas"]

  cities.each do |city|
    city = City.new
    city.name = "#{city}"
    if city == "Chicago"
      city.state = "Illinois"
    elsif city == "New York City"
      city.state = "New York"
    else
      city.state = "Texas"
    end

  10.times do 
    the_city = City.all.sample
    studio = Studio.new
    studio.name = Faker::Restaurant.name
    studio.address = "#{Faker::Address.street_address}, #{the_city.name}, #{the_city.state}"
    


  20.times do
    user = User.new
    user.username = Faker::Internet.username
    user.password = "password"
    user.email = Faker::Internet.email(domain: 'example.com')
    user.save
  end
  p "Added #{User.count} Users"


end
