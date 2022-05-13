require 'faker'


puts "🌱 Seeding users..."

User.create(
    name: "Mark Bacon",
    username: "bitz820",
    password: "mypassword123",
    profile_picture: "https://images.squarespace-cdn.com/content/v1/59279223ebbd1ad67402df46/1496393079682-0X90WET2RLEL67WHLXUU/2.jpg?format=500w",
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Men",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "What's a nice guy like you doing in a chat room like this?"
)
User.create(
    name: Faker::Name.name,
    username: "india.fadel",
    password: Faker::Internet.password,
    profile_picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR6mYeS7Nja8AEFHAOa1Zq6-p1COktGzTRgg&usqp=CAU",
    bio: "Trust me, I'm user friendly.",
    interested_in: "Men",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "My servers never go down... but I do!"
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwcEknEshdIIMUI-dh4ufmt0U4bT2VWC-9M6Mkcmp_EafuuVGOCONZhjGqz5WhPqpoW3E&usqp=CAU",
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Men",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "I'd switch to a Iphone for you."
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: "https://image.shutterstock.com/image-photo/sad-mature-woman-looking-laptop-260nw-1720701964.jpg",
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Women, Men, Transgender",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "I've fully rebooted from my last relationship."
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: 'https://imedpharma.com/wp-content/uploads/2018/04/5-Person-at-computer-1024x683.jpg',
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Women, Men",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "Press any key to continue."
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: "https://i.pcmag.com/imagery/articles/02agKkV3tMmgAhdMPtD3FOk-11.fit_lim.v1618256558.jpg",
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Transgender",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "You are my semicolon; always present in everything I do."
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: "https://media.istockphoto.com/photos/goofy-geeky-nerd-computer-programmer-work-man-vintage-style-picture-id155355246?s=612x612",
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Men",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "Trust me, I'm user friendly."
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: "https://thumbs.dreamstime.com/b/computer-nerd-screen-computer-nerd-programming-code-working-can-be-seen-screen-109655805.jpg",
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Women",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "What do you say we play a game of 'Words With More Than Friends?'"
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: "https://thumbs.dreamstime.com/b/geek-guy-learning-new-technologies-programming-computer-modeling-geek-guy-learning-new-technologies-programming-204719354.jpg",
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Women, Men",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "while(myBAC >= 0.3) {YourHotness++; }"
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: 'https://thumbs.dreamstime.com/b/computer-geek-28068686.jpg',
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Women",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "Class Your World extends My World.	"
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: "https://previews.123rf.com/images/nullplus/nullplus1703/nullplus170300628/75317688-programaci%C3%B3n-nerd-femenino.jpg",
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Men, Transgender",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "No kinky Windows stuff."
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: "https://entropie.ethz.ch/wordpress/wp-content/uploads/2020/06/nerd.png",
    bio: "Trust me, I'm user friendly.",
    interested_in: "Men",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "You are my API. I want to know everything about you."
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: "https://d2slcw3kip6qmk.cloudfront.net/marketing/blog/2017Q2/Stereotype-Section-Image.png",
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Women",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "You are my main(). Because without you, I would not know what to do!"
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: 'https://cdn.w600.comps.canstockphoto.com/funny-nerd-girl-working-on-computer-stock-photo_csp70684921.jpg',
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Women",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "I always thought Love is an abstract class, until you created an instance of it."
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: "https://media.istockphoto.com/photos/young-computer-programmer-picture-id172444936?k=20&m=172444936&s=612x612&w=0&h=FOkYJcp2knhwxAZhKnqAQ5LnfPOAHc5lrthQm3MtLfI=",
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Women",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "Munch Munch Crunch Crunch"
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: "http://studymagazine.com/wp-content/uploads/2011/04/girl-geeks.jpg",
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Men",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "My heart beat goes from O(2^n) to O(logn) on seeing you."
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: "https://media.istockphoto.com/photos/portrait-of-a-confident-young-businessman-picture-id1265176370?k=20&m=1265176370&s=612x612&w=0&h=6_6VmCfkflZspoOI2Gs_JVFm9SL43pR92AYjdbLCuSE=",
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Women",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "My Hipster Beard is how you can tell I know how to program."
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: "https://media.istockphoto.com/photos/developer-in-office-picture-id1006045878?k=20&m=1006045878&s=612x612&w=0&h=B31ySrQ--hHx92Hqa0ha-w5i33DN55qOHFU01PtyfU0=",
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Women",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "I'm hot.  That pretty much sums it."
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: 'https://i.insider.com/58360a81e02ba72a008b61cf?width=1000&format=jpeg&auto=webp',
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Transgender, Women",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "I can think of an algorithm I'd like to work out."
)
User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    profile_picture: "https://t3.ftcdn.net/jpg/02/69/01/16/360_F_269011601_RLuDKruTPpuexmLSmp4de010bGLOssM9.jpg",
    bio: Faker::Quote.most_interesting_man_in_the_world,
    interested_in: "Men",
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    pickup_line: "I got the bill."
)


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
Like.create(liked_user_id: 1, user_id: 4)
Like.create(liked_user_id: 4, user_id: 1)
Like.create(liked_user_id: 5, user_id: 3)
Like.create(liked_user_id: 4, user_id: 3)
Like.create(liked_user_id: 3, user_id: 2)
Like.create(liked_user_id: 1, user_id: 3)


puts "✅ Done seeding!"


