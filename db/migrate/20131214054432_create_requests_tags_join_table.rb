class CreateRequestsTagsJoinTable < ActiveRecord::Migration
  def change
    create_table :requests_tags, id: false do |t|
      t.integer :request_id
      t.integer :tag_id
    end
  end
end
