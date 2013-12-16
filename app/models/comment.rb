class Comment < ActiveRecord::Base
  belongs_to :request
  belongs_to :user

  def author
    user ? user.username : "a geek"
  end

  def allow_destroy?(current_user)
    current_user == self.user || current_user == self.request.user
  end

end
