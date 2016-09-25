topics = %w(Onboarding Benefits Offboarding).map do |topic_name|
  Topic.create!(name: topic_name)
end

25.times do
  article = Article.new(
    title: Faker::Book.title,
    body: Faker::Lorem.paragraph([2..4].sample),
  )

  article.topics = [topics.sample]

  article.save!
end
