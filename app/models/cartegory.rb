class Cartegory < ApplicationRecord
	has_many :books
	before_save :init
	before_destroy :check_if_has_book
private
	def init
		self.parent_id = 0 unless self.parent_id
	end
	def check_if_has_book
		if books.empty?
			return true
		else
			errors.add(base,"Không được xóa khi chưa xóa hết sách trong cart")
			return false
		end
	end
end
