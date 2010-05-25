q = Question.create(:body => Faker::Lorem.paragraph)
Answer.create(:body => Faker::Lorem.paragraph, :question => q)

q = Question.create(:body => Faker::Lorem.paragraph)
a = Answer.create(:body => Faker::Lorem.paragraph, :question => q)
a.answer