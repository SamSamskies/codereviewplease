class User < ActiveRecord::Base
  has_many :requests
end
