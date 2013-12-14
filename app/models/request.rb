class Request < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :tags

  validates :gist_url, :title, presence: true

  def embed_url
    gist_url + '.js'
  end
end
