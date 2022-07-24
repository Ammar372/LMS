class Changebooks < ActiveRecord::Migration[7.0]
  def up
    add_column("books","email", :string,:limit =>25, :after=>"name")

    add_column("books","publishDate", :string,:limit =>25, :after=>"email")
    add_index("books","email")
    add_index("books","publishDate")
  end
end
