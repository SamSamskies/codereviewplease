class CreateTagsTable < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.belongs_to  :request
      t.string      :name

      t.timestamps
    end
  end
end
