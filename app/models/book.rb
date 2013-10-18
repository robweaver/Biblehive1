class Book < ActiveRecord::Base
	has_many :chapters, foreign_key: "book_no"
	has_many :user_progresses
end
