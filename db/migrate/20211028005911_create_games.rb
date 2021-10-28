class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |c|
      c.string :title
      c.integer :price
      c.string :platform
    end
  end
end
