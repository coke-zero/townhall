25.times do
  Article.create!(
    title: Faker::Book.title,
    body: Faker::Lorem.paragraph([2..4].sample)
  )
end
