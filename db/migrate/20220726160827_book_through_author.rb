class BookThroughAuthor < ActiveRecord::Migration[7.0]
  def change
    create_table :book_through_authors do |t|
      t.belongs_to :book
      t.belongs_to :auhtor
  
      t.timestamps
     end
  end
end
