class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :book_no
      t.string :book_name
      t.integer :book_chapters

      t.timestamps
    end
  end
end
