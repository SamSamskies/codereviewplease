class RequestSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at, :gist_url, :title, :description, :comments, :tags
  self.root = false

  def tags
    object.tags.map(&:name)
  end
end
