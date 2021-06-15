# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Brewery.destroy_all


#name = ["Bellwether", "Ale Asylum", "Black Label Brewery", "Sculpin Brewey", "7 Seas Brewey", "Four Eyes Brewery", "Whistle Punk Brewery", "Post Falls Brewery", "River City", "Hogs Wild Brewery"]
 10.times do
    Brewery.create(
        img: "http://aleasylum.com/wp-content/uploads/2010/11/Satisfaction-Jacksin_black-300x268.png",
        name: Faker::Beer.brand,
        location: Faker::Address.secondary_address,

    )
end

10.times do
    Beer.create(
        img: "http://aleasylum.com/wp-content/uploads/2010/11/Contorter-Porter_black-1024x791.png",
        name: Faker::Beer.name,
        style: Faker::Beer.style,
        ibu: Faker::Beer.ibu,
        abv: Faker::Beer.alcohol,
        brewery: Brewery.all.sample
    )

end






puts "complete"