class CreateBooks < ActiveRecord::Migration[7.0]
  def up
    create_table :books do |t|
      t.string :name ,:limit => 25

      t.timestamps
    end
  end
end
