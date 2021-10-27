class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |c|
      c.string :name
    end
  end
end
