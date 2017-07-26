# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(first_name: 'Alexa', last_name: ' ', email: 'alex@yahoo.com')
u2 = User.create(first_name: 'Squidward', last_name: 'Tentacles', email: 'squidward_tentacles@yahoo.com')
u3 = User.create(first_name: 'A', last_name: 'Dog', email: 'doggo91@yahoo.com')
u4 = User.create(first_name: 'Martha', last_name: 'Stewart', email: 'martha_stewart@yahoo.com')
u5 = User.create(first_name: 'Shakira', last_name: 'Shakira', email: 'shakira@yahoo.com')

couch = Ad.create(title: "New Couch", description: "Modern Martha Stewart style, very pretty", price: 249.99, location: "BK", image_url: 'https://jetimages.azureedge.net/md5/526d5d13e832ada86cfd2331dd853546.500', creator_id: 1)
vitamix = Ad.create(title: "Vitamix", description: "Rarely used, good as new. Get on with your healthy lifestyle. Now!", price: 199.99, location: "Williamsburg", image_url: 'https://www.vitamix.com/media/other/images/GS-rglam-black_fullsize.jpg', creator_id: 2)
dog = Ad.create(title: "Dog for Adoption", description: "2 years old, Berner Senne, brown", price: 0, location: "Manhattan", image_url: 'https://www.cesarsway.com/sites/newcesarsway/files/styles/large_article_preview/public/Common-dog-behaviors-explained.jpg?itok=FSzwbBoi', creator_id: 3)
car = Ad.create(title: "Used Car", description: "Yellow Lamborghini, 20 miles, 1985", price: 23000, location: "NJ", image_url: 'http://starmoz.com/images/yellow-lamborghini-6.jpg', creator_id: 4)
apartment = Ad.create(title: "Apartment for Sale", description: "Next to Central Park, left by ex-wife, need to vacate next week!", price: 1500000, location: "Manhattan", image_url: 'https://cdn.vox-cdn.com/uploads/chorus_image/image/48007703/4.0.0.jpg', creator_id: 5)

furniture = Category.create(name: "Furniture")
pets = Category.create(name: "Pets")
cars = Category.create(name: "Cars")
apartments = Category.create(name: "Apartments")


SaverAd.create(saver_id: 1, saved_ad_id: 4)
SaverAd.create(saver_id: 2, saved_ad_id: 1)
SaverAd.create(saver_id: 4, saved_ad_id: 2)

AdCategory.create(ad_id: 1 , category_id: 1)
AdCategory.create(ad_id: 2 , category_id: 1)
AdCategory.create(ad_id: 3 , category_id: 2)
AdCategory.create(ad_id: 4 , category_id: 3)
AdCategory.create(ad_id: 5 , category_id: 4)
