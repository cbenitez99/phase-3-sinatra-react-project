class CreatePlatforms < ActiveRecord::Migration[6.1]
  def change
    create_table :platforms do |c|
      c.string :platform_type
    end
  end
end
