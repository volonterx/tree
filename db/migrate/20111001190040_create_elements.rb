class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.integer :parent_id
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
