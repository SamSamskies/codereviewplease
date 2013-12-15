class Comment < ActiveRecord::Base
  belongs_to :request
  belongs_to :user

  def author
    user ? user.username : "a geek" 
  end

end
