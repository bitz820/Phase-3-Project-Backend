require 'faker'


puts "🌱 Seeding users..."
20.times do 
random_photo = Faker::LoremFlickr.image(size: "250x250", search_terms: ['person', 'computer'])
# random_photo = Faker::LoremFlickr.unique.image(size: "250x250", search_terms: ['person', 'computer'])

users = User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: random_photo,
    bio: Faker::Quote.most_interesting_man_in_the_world,
    gender: Faker::Gender.type,
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
)
end

puts "🌱 Seeding likes..."

Like.create(liked_user_id: 1, user_id: 2)
Like.create(liked_user_id: 1, user_id: 13)
Like.create(liked_user_id: 1, user_id: 8)
Like.create(liked_user_id: 8, user_id: 1)
Like.create(liked_user_id: 12, user_id: 2)
Like.create(liked_user_id: 9, user_id: 1)
Like.create(liked_user_id: 1, user_id: 9)
Like.create(liked_user_id: 10, user_id: 1)
Like.create(liked_user_id: 1, user_id: 5)


puts "✅ Done seeding!"

# User.create(
#     name: Faker::Name.name,
#     username: "india.fadel",
#     password: Faker::Internet.password,
#     profile_picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR6mYeS7Nja8AEFHAOa1Zq6-p1COktGzTRgg&usqp=CAU",
#     bio: "Trust me, I'm user friendly.",
#     gender: "Lesbian",
#     interests: Faker::Hipster.words(number: 4).join(", ").to_s,
# )
# User.create(
#     name: Faker::Name.name,
#     username: Faker::Internet.username,
#     password: "password",
#     profile_picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwcEknEshdIIMUI-dh4ufmt0U4bT2VWC-9M6Mkcmp_EafuuVGOCONZhjGqz5WhPqpoW3E&usqp=CAU",
#     bio: Faker::Quote.most_interesting_man_in_the_world,
#     gender: Faker::Gender.type,
#     interests: Faker::Hipster.words(number: 4).join(", ").to_s,
# )
# User.create(
#     name: Faker::Name.name,
#     username: Faker::Internet.username,
#     password: "password",
#     profile_picture: "https://image.shutterstock.com/image-photo/sad-mature-woman-looking-laptop-260nw-1720701964.jpg",
#     bio: Faker::Quote.most_interesting_man_in_the_world,
#     gender: Faker::Gender.type,
#     interests: Faker::Hipster.words(number: 4).join(", ").to_s,
# )
# User.create(
#     name: Faker::Name.name,
#     username: Faker::Internet.username,
#     password: "password",
#     profile_picture: 'https://imedpharma.com/wp-content/uploads/2018/04/5-Person-at-computer-1024x683.jpg',
#     bio: Faker::Quote.most_interesting_man_in_the_world,
#     gender: Faker::Gender.type,
#     interests: Faker::Hipster.words(number: 4).join(", ").to_s,
# )
# User.create(
#     name: Faker::Name.name,
#     username: Faker::Internet.username,
#     password: "password",
#     profile_picture: "https://i.pcmag.com/imagery/articles/02agKkV3tMmgAhdMPtD3FOk-11.fit_lim.v1618256558.jpg",
#     bio: Faker::Quote.most_interesting_man_in_the_world,
#     gender: Faker::Gender.type,
#     interests: Faker::Hipster.words(number: 4).join(", ").to_s,
# )

# puts "🌱 Seeding likes..."

# Like.create(liked_user_id: 1, user_id: 2)
# Like.create(liked_user_id: 1, user_id: 5)
# Like.create(liked_user_id: 1, user_id: 4)
# Like.create(liked_user_id: 4, user_id: 1)
# Like.create(liked_user_id: 2, user_id: 1)
# Like.create(liked_user_id: 5, user_id: 3)
# Like.create(liked_user_id: 4, user_id: 3)
# Like.create(liked_user_id: 3, user_id: 2)
# Like.create(liked_user_id: 1, user_id: 3)

