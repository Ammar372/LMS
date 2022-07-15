class Book < ApplicationRecord
    has_many :book_through_categories
    has_many :categories, through: :book_through_categories

    has_many :book_through_authors
    has_many :authors, through: :book_through_authors

end
