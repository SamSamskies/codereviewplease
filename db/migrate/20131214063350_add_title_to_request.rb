class AddTitleToRequest < ActiveRecord::Migration
  def change
    change_table :requests do |t|
      t.string  :title
    end
  end
end
