class Book < ApplicationRecord
	validates :book_name, :book_image, :book_author, :presence => true
	validates :book_name, :uniqueness => true
	validates :book_price, :numericality => {:greater_than => 0}
	belongs_to :cartegory
end
