class AddChapterIdToUserProgress < ActiveRecord::Migration
  def change
  	add_column :user_progresses, :chapter_id, :integer
  	add_index :user_progresses, :chapter_id
  	add_index :chapters, :chapter_no
  	add_index :chapters, :id
  	add_index :books, :book_no
  	add_index :books, :book_name
  end
end
