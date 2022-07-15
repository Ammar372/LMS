class Category < ApplicationRecord
    has_many :book_through_categories
    has_many :books, through: :book_through_categories

end
