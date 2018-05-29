class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.integer :city_id
    end
  end
end
