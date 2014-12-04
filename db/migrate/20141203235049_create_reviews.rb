class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|

      t.integer :book_id

      t.integer :user_id

      t.string :summary

      t.string :fullReview

      t.date :startDate

      t.date :endDate

      t.integer :enlightenmentRating

      t.integer :enjoymentRating

      t.integer :overallRating


      t.timestamps

    end

  end
end
