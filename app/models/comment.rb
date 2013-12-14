class Comment < ActiveRecord::Base
  belongs_to :request
  belongs_to :user
end
