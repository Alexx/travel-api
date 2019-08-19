class AddUrlToReviews < ActiveRecord::Migration[5.2]
  def change

    change_table :reviews do |t|
      t.string :url
    end
  end
end
