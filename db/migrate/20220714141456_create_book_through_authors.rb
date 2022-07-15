class CreateBookThroughAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.timestamps
    end

    create_table :auhtors do |t|
      t.string :name
      t.timestamps
    end

    create_table :book_through_authors do |t|
      t.belongs_to :book
      t.belongs_to :auhtor
  
      t.timestamps
    end
  end
end
