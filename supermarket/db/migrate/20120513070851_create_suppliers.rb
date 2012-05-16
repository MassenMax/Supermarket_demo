class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string "name", :limit => 20
      t.string "city", :limit => 20
      t.string "Contactperson", :limit => 20
      t.string "Phonenumber", :limit => 20
      t.references :category   
      t.timestamps
    end
  end
end
