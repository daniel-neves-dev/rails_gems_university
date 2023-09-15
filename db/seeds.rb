# Create admin user
admin_user = User.create!(email: 'admin@example.com', password: 'admin@example.com', password_confirmation: 'admin@example.com')

# Create teacher users
teacher1 = User.create!(email: 'teacher1@example.com', password: '123456', password_confirmation: '123456')
teacher2 = User.create!(email: 'teacher2@example.com', password: '123456', password_confirmation: '123456')

# Create courses for teacher1
5.times do
  Course.create!(
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    language: "English",
    level: "Beginner",
    price: Faker::Number.between(from: 1000, to: 2000),
    user_id: teacher1.id
  )
end

# Create courses for teacher2
5.times do
  Course.create!(
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    language: "Russian",
    level: "Advanced",
    price: Faker::Number.between(from: 1000, to: 2000),
    user_id: teacher2.id
  )
end
