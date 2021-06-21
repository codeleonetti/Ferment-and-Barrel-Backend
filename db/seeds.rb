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
        img: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.6435-9/128537588_2037019576434693_8226559062277255296_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=a26aad&_nc_ohc=nrkqrJdBrY0AX_2dOi8&_nc_ht=scontent-sea1-1.xx&oh=af3c9dd1eaf778abf4a209276270b5db&oe=60D38804",
        name: "Black Label Brewery",
        location: "Spokane, WA"

    )

    Brewery.create(
        img:"https://scontent-sea1-1.xx.fbcdn.net/v/t1.6435-9/117236932_2586790854968464_583820411608251507_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=l6qk2zoPqeAAX-5-R81&_nc_ht=scontent-sea1-1.xx&oh=04043cb2575bc543a53b4c971c965622&oe=60D3F6C3",
        name: "Post Falls Brewery",
        location: "Post Falls, ID"

    )

    Brewery.create(
        img: "https://untappd.akamaized.net/site/brewery_logos/brewery-228282_cb2c2.jpeg",
        name: "Whistle punk",
        location: "Washington"

    )

    Brewery.create(
        img: "https://beer.untappd.com/labels/4266610",
        name: "Deshutes",
        location: "Portland, OR"

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