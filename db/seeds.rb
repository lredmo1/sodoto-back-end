puts "Deleteing previous data..."
User.destroy_all
LessonText.destroy_all
LessonVideo.destroy_all

puts "🏞️ Creating users..."
User.create(name: "Lisa Redmond", email: Faker::Address.full_address, image: "https://www.ancarevet.com/sites/default/files/styles/large/public/labrador-retriever-dog-breed-info.jpg?itok=-Z_ky5J6")
User.create(name: "Mark Primeaux", address: Faker::Address.full_address)

puts "🐩 Creating lesson texts..."
    LessonText.create(
        title: Faker::Creature::Dog.name, 
        description: "dog", 
        user_id: User.all.sample.id
    )
    LessonText.create(
        title: Faker::Creature::Dog.name, 
        description: "dog", 
        user_id: User.all.sample.id
    )

puts "🐩 Creating lesson videos..."
    LessonVideo.create(
        caption: Faker::Creature::Dog.name, 
        video: "dog", 
        user_id: User.all.sample.id
    )
    LessonVideo.create(
        caption: Faker::Creature::Dog.name, 
        video: "dog", 
        user_id: User.all.sample.id
    )


# puts "📝 Creating adoption applications..."
# 40.times do 
#     AdoptionApplication.create(
#         name: Faker::Name.name, 
#         date: Faker::Date.backward(days: 30), 
#         animal_id: Animal.all.sample.id  
#     )
# end

puts "✅ Done seeding!"