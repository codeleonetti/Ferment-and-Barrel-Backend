# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Beer.destroy_all
Brewery.destroy_all


#name = ["Bellwether", "Ale Asylum", "Black Label Brewery", "Sculpin Brewey", "7 Seas Brewey", "Four Eyes Brewery", "Whistle Punk Brewery", "Post Falls Brewery", "River City", "Hogs Wild Brewery"]
 
    Brewery.create(
        img: "https://aleasylum.com/wp-content/themes/ale-asylum/images/ale-asylum-logo.png",
        name: "Ale Asylum",
        location: "Madison, WI"

    )

    Brewery.create(
        img:"https://scontent-sea1-1.xx.fbcdn.net/v/t31.18172-8/11337008_662405910556532_2527683351296207910_o.jpg?_nc_cat=107&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=p4yRtFpQ02AAX_a9V6D&_nc_ht=scontent-sea1-1.xx&oh=81a6ae0e63971c44a1c76fc0f3b49311&oe=60F290BB",
        name: "Bellwether",
        location: "Spokane, WA"

    )

    Brewery.create(
        img: "https://untappd.akamaized.net/site/brewery_logos/brewery-183916_1209f.jpeg",
        name: "Black Label Brewery",
        location: "Spokane, WA"

    )

    Brewery.create(
        img:"http://static1.squarespace.com/static/55bb9275e4b08dd9a4e3cd3e/t/5691900e5a566828b96344c6/1622560313506/?format=1500w",
        name: "Post Falls Brewery",
        location: "Post Falls, ID"

    )

    Brewery.create(
        img: "https://untappd.akamaized.net/site/brewery_logos/brewery-228282_cb2c2.jpeg",
        name: "Whistle punk",
        location: "Washington"

    )

    Brewery.create(
        img: "https://lh3.googleusercontent.com/nB2VqVauDi-WawQF8CH5WdBDkl-dITm8cmA89HPZTeGQt14L-a39dDPO9yEmcaz92yWJSbow9CECYQR3KqAiQjcySXdEOg=s750",
        name: "Lost Coast Brewery",
        location: "Eureka, CA"

    )

    Brewery.create(
        img: "https://beer.untappd.com/labels/4266610",
        name: "Deshutes",
        location: "Portland, OR"
    )
    Brewery.create(
        img: "https://static.wixstatic.com/media/82274c_30747083e0ff4e2c8ed904f8c0548ca5~mv2.png/v1/fill/w_280,h_235,al_c,lg_1,q_85/brewery%2520icon_edited.webp",
        name: "Wisconsin Brewing Company",
        location: "Verona, WI"
    )
    Brewery.create(
        img: "https://upload.wikimedia.org/wikipedia/commons/d/db/New_Belgium_Brewing_Logo.png",
        name: "New Belgium Brewing",
        location: "Colorado"

    )


30.times do
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