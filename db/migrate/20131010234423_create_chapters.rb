class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.integer :book_no
      t.integer :chapter_no
      t.integer :chapter_verses

      t.timestamps
    end
  end
end
