100.times do
   Article.create(title: Faker::Book.title)
end
