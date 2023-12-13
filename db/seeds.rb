puts "Deleteing previous data..."
User.destroy_all
LessonText.destroy_all
LessonVideo.destroy_all

puts "🏞️ Creating users..."
User.create(name: "Lisa Redmond", email: "lisa@test.com", image: "data:image/jpeg;base64,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")
User.create(name: "Mark Primeaux", email: "mark@test.com", image: "data:image/jpeg;base64,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")

puts "🐩 Creating lesson texts..."
    LessonText.create(
        title: "How to Play Guitar", 
        description: "Learn your first guitar chords and strumming pattern", 
        user_id: User.all.sample.id
    )
    LessonText.create(
        title: "React for Beginners", 
        description: "Code your first React project", 
        user_id: User.all.sample.id
    )

puts "🐩 Creating lesson videos..."
    LessonVideo.create(
        title: "Baking 101",
		caption: "Learn the basics of the most popular baking trends", 
        video_url: "https://www.youtube.com/watch?v=62MOCMyPce0&list=PL1dleLLvCiHOrrj2lDtCDiU8oX-ySckf8", 
        user_id: User.all.sample.id
    )
    LessonVideo.create(
		title: "Breath Holding for Free Diving",
        caption: "In this video, you'll learn how to hold you breath longer than ever before...", 
        video_url: "https://www.youtube.com/watch?v=f0IxfdPBujU", 
        user_id: User.all.sample.id
    )

# puts "🐩 Creating lesson join table..."
#     Lesson.create(
#         lesson_text: LessonText.all.sample.id,
#         lesson_video: LessonVideo.all.sample.id
#     )
#     Lesson.create(
#         lesson_text: LessonText.all.sample.id,
#         lesson_video: LessonVideo.all.sample.id
#     )

puts "✅ Done seeding!"