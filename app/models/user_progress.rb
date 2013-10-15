class UserProgress < ActiveRecord::Base
	belongs_to :user
	belongs_to :book, primary_key: "book_no", foreign_key: "book_no"
end
