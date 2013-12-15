u = User.create username: Faker::Internet.user_name
r = u.requests.create title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, gist_url: 'https://gist.github.com/sandbochs/99ed6d98783917153f8e'
3.times { r.comments.create body: Faker::Lorem.sentence }
r.tags.create name: 'ruby'

r = u.requests.create title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, gist_url: 'https://gist.github.com/sandbochs/fe8d9607eeffaddb2b9c'
3.times { r.comments.create body: Faker::Lorem.sentence }
r.tags.create name: 'javascript'

r = u.requests.create title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, gist_url: 'https://gist.github.com/sandbochs/22cf06436cd72de338e1'
3.times { r.comments.create body: Faker::Lorem.sentence }
r.tags.create name: 'rails'
