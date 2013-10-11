json.array!(@books) do |book|
  json.extract! book, :book_no, :book_name, :book_chapters
  json.url book_url(book, format: :json)
end
