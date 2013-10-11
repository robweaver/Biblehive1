json.array!(@user_progresses) do |user_progress|
  json.extract! user_progress, :user_id, :book_no, :chapter_no, :last_read
  json.url user_progress_url(user_progress, format: :json)
end
