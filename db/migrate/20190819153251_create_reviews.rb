class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.belongs_to :destination, index: true, foreign_key: true
    end
  end
end
