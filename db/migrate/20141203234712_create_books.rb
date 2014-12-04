class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|

      t.integer :author_id

      t.string :title

      t.integer :year

      t.integer :category_id

      t.string :picture


      t.timestamps

    end

  end
end
