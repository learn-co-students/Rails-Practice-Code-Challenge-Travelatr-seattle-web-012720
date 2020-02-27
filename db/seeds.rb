# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 30.times do 
#   Destination.create({
#     name: Faker::GameOfThrones.city,
#     country: Faker::Address.country
#   })
# end

Destination.create({
    name: "London",
    country: "England"
  })
  Destination.create({
    name: "Paris",
    country: "France"
  })
  Destination.create({
    name: "DC",
    country: "USA"
  })
  Destination.create({
    name: "Oslo",
    country: "Sweden"
  })
  Destination.create({
    name: "Copenhagen",
    country: "Denmark"
  })
  Destination.create({
    name: "NYC",
    country: "USA"
  })
  Destination.create({
    name: "Carson City",
    country: "Nevada"
  })
  Destination.create({
    name: "Mexico City",
    country: "Mexico"
  })
  Destination.create({
    name: "Vancouver",
    country: "Canada"
  })
  Destination.create({
    name: "Beijing",
    country: "China"
  })



# 10.times do
#   blogger = Blogger.create({
#     name: Faker::Name.name,
#     bio: Faker::Hipster.paragraph,
#     age: (13..100).to_a.sample
#   })

Blogger.create({
    name: 'John',
    bio: 'boom da doom',
    age: 14
  })
Blogger.create({
    name: 'Paula',
    bio: 'hey coolio',
    age: 12
  })
Blogger.create({
    name: 'Dory',
    bio: 'travel!!!',
    age: 13
  })
  blogger4 = Blogger.create({
    name: 'Nemo',
    bio: 'hiking rocks',
    age: 34
  })
Blogger.create({
    name: 'Hook',
    bio: 'climbing is my fave',
    age: 54
  })
Blogger.create({
    name: 'Smee',
    bio: 'let us go fly a kite',
    age: 26
  })
Blogger.create({
    name: "Hamilton",
    bio: 'listen to me',
    age: 28
  })
Blogger.create({
    name: "Thornton",
    bio: 'there he blows',
    age: 29
  })
Blogger.create({
    name: "Stevie",
    bio: 'i am not a boy',
    age: 19
  })
Blogger.create({
    name: "Mikey",
    bio: 'into the woods and down the dell',
    age: 18
  })
Blogger.create({
    name: "Ali",
    bio: 'yip yip yip',
    age: 21
  })


  (2..6).to_a.sample.times do 
    Post.create({
      title: "A post a post a post",
      content: ['The best key lime pie is still up for debate.',
      'He always wore his sunglasses at night.',
      'The tour bus was packed with teenage girls heading toward their next adventure.',
      'David subscribes to the stuff your tent into the bag strategy over nicely folding it.',
      'Iron pyrite is the most foolish of all minerals.',
      'I would be delighted if the sea were full of cucumber juice.',
      'There were white out conditions in the town; subsequently, the roads were impassable.',
      'She could not decide if the glass was half empty or half full so she drank it.',
      'Carol drank the blood as if she were a vampire.'].sample,
      likes: 0,
      blogger: Blogger.all.sample,
      destination: Destination.all.sample
    })
  end

