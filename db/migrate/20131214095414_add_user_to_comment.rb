class AddUserToComment < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.belongs_to  :user
    end
  end
end
