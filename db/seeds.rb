# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Make sure you've created your first user before
# you run the listings seed

# Seed Meals data

Meal.delete_all

puts "[+] Seeding images"

uri_keywords = ["Yummy","Tasty","Delicious","Fresh","YumYumYum","Exquisite","Scrumptious","SoGood","Wow","Amazing"]
generated_uris = []

images = Dir.glob("app/assets/images/*")
images.map! { |path| path.sub("app/assets/images/","") }

images.each do |image|
	image_uri = ""
	while image_uri == ""
		generated_uri = "#{uri_keywords.sample}-#{uri_keywords.sample}-#{uri_keywords.sample}"
		if not generated_uris.include? generated_uri
			image_uri = generated_uri
		end
	end
	puts " [-] Added #{image_uri} : #{image}"
	Meal.create!(:uri => image_uri, :image => image)
end