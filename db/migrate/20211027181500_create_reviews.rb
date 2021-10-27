class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |c|
      c.string :user_name
      c.integer :game_id
      c.string :content
    end
  end
end
