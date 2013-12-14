class CreateRequestsTable < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.belongs_to  :user
      t.string      :gist_url
      t.text        :description

      t.timestamps
    end
  end
end
