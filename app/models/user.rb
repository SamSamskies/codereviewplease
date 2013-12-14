class User < ActiveRecord::Base
  has_many :requests
  has_many :comments

  def self.find_or_create_from_auth_hash(auth_hash)
    token = auth_hash.credentials.token
    user = User.find_by(github_token: token)

    if user
      user
    else
      username = auth_hash.info.nickname
      email = auth_hash.info.email
      avatar_url = auth_hash.extra.raw_info.avatar_url
      User.create(username: username, email: email, avatar_url: avatar_url, github_token: token)
    end
  end
end
