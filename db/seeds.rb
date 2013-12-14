@user = User.create username: Faker::Internet.user_name

5.times do
  @request = @user.requests.create title: Faker::Lorem.sentence, description: Faker::Lorem.paragraph, gist_url: Faker::Internet.url

  3.times { @request.comments.create body: Faker::Lorem.sentence }
  @tag = @request.tags.create name: Faker::Lorem.word
end
