class AddPhotoColumnToItems < ActiveRecord::Migration
   def change
    add_attachment :items, :photo
    add_column :items, :user_id, :integer
  end
end
