desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do

  if Rails.env.development?
    User.destroy_all
  end
  
  require "faker"
  10.times do
    user = User.new
    user.username = Faker::Internet.username
    user.password = "password"
    user.email = Faker::Internet.email(domain: 'example.com')
    user.save
  end
  p "Added #{User.count} Users"
end
