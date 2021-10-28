class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |c|
      c.string :user_name
      c.string :content
      c.integer :game_id
    end
  end
end
