class CreateCategories < ActiveRecord::Migration
  def change
    create_table :category do |t|
      t.string "categoryName", :limit => 20
      t.timestamps
    end
  end
end
