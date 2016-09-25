topics = %w(Onboarding Benefits Offboarding).map do |topic_name|
  Topic.create!(name: topic_name)
end

users = 10.times.map do
  User.create!(name: Faker::Name.name, email: Faker::Internet.email)
end

25.times do
  article = Article.new(
    title: Faker::Book.title,
    body: Faker::Lorem.paragraph([4..8].sample),
    author: users.sample
  )

  article.topics = [topics.sample]

  article.save!
end
