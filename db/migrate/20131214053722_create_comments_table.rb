class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text        :body
      t.belongs_to  :request

      t.timestamps
    end
  end
end
