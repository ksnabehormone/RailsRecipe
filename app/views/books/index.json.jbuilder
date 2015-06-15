json.array!(@books) do |book|
  json.extract! book, :id, :name, :finished_flg
  json.url book_url(book, format: :json)
end
