# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(:name => "Mountain bike", :description => "I also created this product without using the HTML form, by using the seeds.rb file!", :colour => "orange and black", :price => "4900", :image_url => "bike-mountain_1.jpg")
Product.create(:name => "Town bike", :description => "Need a good grocery getter or to cruise over to dinner? Checkout this town bike.", :colour => "deep brown and white", :price => "378", :image_url => "bike-townie_1.jpg")
Product.create(:name => "Single speed bike", :description => "Want a little challenge riding around town? This will do just that and help you to look cool doing it too!", :colour => "black with yellow rims", :price => "514", :image_url => "bike-single_speed_1.jpg")
Product.create(:name => "Pump track bike", :description => "Love riding the rolls and testing your skills on the tight corners at the pump track?  This bike is for you!", :colour => "cyan", :price => "825", :image_url => "bike-pump_track_1.jpg")
Product.create(:name => "Test bike", :description => "This bike is so new it's not even on the market yet!", :colour => "tbd", :price => "tbd", :image_url => "bike-test_1.jpg")