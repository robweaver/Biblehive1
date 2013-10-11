json.array!(@chapters) do |chapter|
  json.extract! chapter, :book_no, :chapter_no, :chapter_verses
  json.url chapter_url(chapter, format: :json)
end
