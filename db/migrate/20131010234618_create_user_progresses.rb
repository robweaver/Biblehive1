class CreateUserProgresses < ActiveRecord::Migration
  def change
    create_table :user_progresses do |t|
      t.integer :user_id
      t.integer :book_no
      t.integer :chapter_no
      t.datetime :last_read

      t.timestamps
    end
  end
end
