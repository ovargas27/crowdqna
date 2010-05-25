q = Question.create(:body => Faker::Lorem.paragraph)
a = Answer.create(:body => Faker::Lorem.paragraph)
q.answer = a

q = Question.create(:body => Faker::Lorem.paragraph)
a = Answer.create(:body => Faker::Lorem.paragraph)
q.answer = a