json.extract! book, :id, :book_name, :book_image, :book_type, :book_author, :book_price, :created_at, :updated_at
json.url book_url(book, format: :json)
