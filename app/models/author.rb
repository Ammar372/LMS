class Author < ApplicationRecord

    has_many :book_through_authors
    has_many :books, through: :book_through_authors
   
end
